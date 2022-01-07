; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_topology.c_dispatching_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_topology.c_dispatching_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%d %c\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@smp_cpu_state_mutex = common dso_local global i32 0, align 4
@cpu_management = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dispatching_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispatching_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @sscanf(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %10, i8* %12)
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %57

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %57

28:                                               ; preds = %22, %19
  store i32 0, i32* %11, align 4
  %29 = call i32 (...) @get_online_cpus()
  %30 = call i32 @mutex_lock(i32* @smp_cpu_state_mutex)
  %31 = load i32, i32* @cpu_management, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %44

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @topology_set_cpu_management(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* @cpu_management, align 4
  %43 = call i32 (...) @topology_expect_change()
  br label %44

44:                                               ; preds = %41, %40, %34
  %45 = call i32 @mutex_unlock(i32* @smp_cpu_state_mutex)
  %46 = call i32 (...) @put_online_cpus()
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  br label %54

52:                                               ; preds = %44
  %53 = load i64, i64* %9, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i64 [ %51, %49 ], [ %53, %52 ]
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %25, %16
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @topology_set_cpu_management(i32) #1

declare dso_local i32 @topology_expect_change(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
