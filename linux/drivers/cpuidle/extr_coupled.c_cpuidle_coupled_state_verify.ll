; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_coupled.c_cpuidle_coupled_state_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_coupled.c_cpuidle_coupled_state_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuidle_coupled_state_verify(%struct.cpuidle_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuidle_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %3, align 8
  %5 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %6 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %40, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  %13 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @cpuidle_state_is_coupled(%struct.cpuidle_driver* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %19 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %36, label %23

23:                                               ; preds = %17
  %24 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %25 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %30 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %33 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28, %23, %17
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %28, %12
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %4, align 4
  br label %9

43:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @cpuidle_state_is_coupled(%struct.cpuidle_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
