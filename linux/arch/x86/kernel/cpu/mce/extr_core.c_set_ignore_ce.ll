; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_set_ignore_ce.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_set_ignore_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@mce_sysfs_mutex = common dso_local global i32 0, align 4
@mca_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@mce_disable_cmci = common dso_local global i32 0, align 4
@mce_enable_ce = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_ignore_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_ignore_ce(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i64 @kstrtou64(i8* %11, i32 0, i64* %10)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %5, align 8
  br label %41

17:                                               ; preds = %4
  %18 = call i32 @mutex_lock(i32* @mce_sysfs_mutex)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 4
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = xor i32 %19, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32 (...) @mce_timer_delete_all()
  %32 = load i32, i32* @mce_disable_cmci, align 4
  %33 = call i32 @on_each_cpu(i32 %32, i8* null, i32 1)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 4
  br label %37

34:                                               ; preds = %27
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 4
  %35 = load i32, i32* @mce_enable_ce, align 4
  %36 = call i32 @on_each_cpu(i32 %35, i8* inttoptr (i64 1 to i8*), i32 1)
  br label %37

37:                                               ; preds = %34, %30
  br label %38

38:                                               ; preds = %37, %17
  %39 = call i32 @mutex_unlock(i32* @mce_sysfs_mutex)
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %38, %14
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

declare dso_local i64 @kstrtou64(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mce_timer_delete_all(...) #1

declare dso_local i32 @on_each_cpu(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
