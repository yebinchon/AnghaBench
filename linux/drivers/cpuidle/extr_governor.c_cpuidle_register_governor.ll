; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_governor.c_cpuidle_register_governor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_governor.c_cpuidle_register_governor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.cpuidle_governor = type { i64, i32, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cpuidle_lock = common dso_local global i32 0, align 4
@cpuidle_governors = common dso_local global i32 0, align 4
@cpuidle_curr_governor = common dso_local global %struct.TYPE_2__* null, align 8
@param_governor = common dso_local global i32 0, align 4
@CPUIDLE_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuidle_register_governor(%struct.cpuidle_governor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuidle_governor*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuidle_governor* %0, %struct.cpuidle_governor** %3, align 8
  %5 = load i32, i32* @EEXIST, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %8 = icmp ne %struct.cpuidle_governor* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %11 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %67

17:                                               ; preds = %9
  %18 = call i64 (...) @cpuidle_disabled()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %67

23:                                               ; preds = %17
  %24 = call i32 @mutex_lock(i32* @cpuidle_lock)
  %25 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %26 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @cpuidle_find_governor(i32 %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %64

30:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  %31 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %32 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %31, i32 0, i32 2
  %33 = call i32 @list_add_tail(i32* %32, i32* @cpuidle_governors)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load i32, i32* @param_governor, align 4
  %38 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %39 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CPUIDLE_NAME_LEN, align 4
  %42 = call i64 @strncasecmp(i32 %37, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %36
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %49 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load i32, i32* @param_governor, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CPUIDLE_NAME_LEN, align 4
  %58 = call i64 @strncasecmp(i32 %53, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52, %36, %30
  %61 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %62 = call i32 @cpuidle_switch_governor(%struct.cpuidle_governor* %61)
  br label %63

63:                                               ; preds = %60, %52, %44
  br label %64

64:                                               ; preds = %63, %23
  %65 = call i32 @mutex_unlock(i32* @cpuidle_lock)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %20, %14
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @cpuidle_disabled(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @cpuidle_find_governor(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @strncasecmp(i32, i32, i32) #1

declare dso_local i32 @cpuidle_switch_governor(%struct.cpuidle_governor*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
