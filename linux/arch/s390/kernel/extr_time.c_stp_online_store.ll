; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_time.c_stp_online_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_time.c_stp_online_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@CLOCK_SYNC_HAS_STP = common dso_local global i32 0, align 4
@clock_sync_flags = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@clock_sync_mutex = common dso_local global i32 0, align 4
@stp_online = common dso_local global i32 0, align 4
@CLOCK_SYNC_STP = common dso_local global i32 0, align 4
@time_sync_wq = common dso_local global i32 0, align 4
@stp_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @stp_online_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stp_online_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i32 @simple_strtoul(i8* %11, i32* null, i32 0)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %44

21:                                               ; preds = %15, %4
  %22 = load i32, i32* @CLOCK_SYNC_HAS_STP, align 4
  %23 = call i32 @test_bit(i32 %22, i32* @clock_sync_flags)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @EOPNOTSUPP, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %44

28:                                               ; preds = %21
  %29 = call i32 @mutex_lock(i32* @clock_sync_mutex)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* @stp_online, align 4
  %31 = load i32, i32* @stp_online, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @CLOCK_SYNC_STP, align 4
  %35 = call i32 @set_bit(i32 %34, i32* @clock_sync_flags)
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @CLOCK_SYNC_STP, align 4
  %38 = call i32 @clear_bit(i32 %37, i32* @clock_sync_flags)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @time_sync_wq, align 4
  %41 = call i32 @queue_work(i32 %40, i32* @stp_work)
  %42 = call i32 @mutex_unlock(i32* @clock_sync_mutex)
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %39, %25, %18
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
