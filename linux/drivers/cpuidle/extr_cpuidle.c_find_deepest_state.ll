; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_find_deepest_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_find_deepest_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32, %struct.cpuidle_state* }
%struct.cpuidle_state = type { i32, i32, i32, i64 }
%struct.cpuidle_device = type { %struct.cpuidle_state_usage* }
%struct.cpuidle_state_usage = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*, i32, i32, i32)* @find_deepest_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_deepest_state(%struct.cpuidle_driver* %0, %struct.cpuidle_device* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cpuidle_driver*, align 8
  %7 = alloca %struct.cpuidle_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cpuidle_state*, align 8
  %15 = alloca %struct.cpuidle_state_usage*, align 8
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %6, align 8
  store %struct.cpuidle_device* %1, %struct.cpuidle_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %16

16:                                               ; preds = %77, %5
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %19 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %80

22:                                               ; preds = %16
  %23 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %24 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %23, i32 0, i32 1
  %25 = load %struct.cpuidle_state*, %struct.cpuidle_state** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %25, i64 %27
  store %struct.cpuidle_state* %28, %struct.cpuidle_state** %14, align 8
  %29 = load %struct.cpuidle_device*, %struct.cpuidle_device** %7, align 8
  %30 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %29, i32 0, i32 0
  %31 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %31, i64 %33
  store %struct.cpuidle_state_usage* %34, %struct.cpuidle_state_usage** %15, align 8
  %35 = load %struct.cpuidle_state*, %struct.cpuidle_state** %14, align 8
  %36 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %71, label %39

39:                                               ; preds = %22
  %40 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %15, align 8
  %41 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %39
  %45 = load %struct.cpuidle_state*, %struct.cpuidle_state** %14, align 8
  %46 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = icmp ule i32 %47, %48
  br i1 %49, label %71, label %50

50:                                               ; preds = %44
  %51 = load %struct.cpuidle_state*, %struct.cpuidle_state** %14, align 8
  %52 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %71, label %56

56:                                               ; preds = %50
  %57 = load %struct.cpuidle_state*, %struct.cpuidle_state** %14, align 8
  %58 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.cpuidle_state*, %struct.cpuidle_state** %14, align 8
  %68 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66, %56, %50, %44, %39, %22
  br label %77

72:                                               ; preds = %66, %63
  %73 = load %struct.cpuidle_state*, %struct.cpuidle_state** %14, align 8
  %74 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %72, %71
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %16

80:                                               ; preds = %16
  %81 = load i32, i32* %13, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
