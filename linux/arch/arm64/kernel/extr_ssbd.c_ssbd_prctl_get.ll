; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ssbd.c_ssbd_prctl_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ssbd.c_ssbd_prctl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PR_SPEC_DISABLE = common dso_local global i32 0, align 4
@PR_SPEC_PRCTL = common dso_local global i32 0, align 4
@PR_SPEC_FORCE_DISABLE = common dso_local global i32 0, align 4
@PR_SPEC_ENABLE = common dso_local global i32 0, align 4
@PR_SPEC_NOT_AFFECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @ssbd_prctl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssbd_prctl_get(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %4 = call i32 (...) @arm64_get_ssbd_state()
  switch i32 %4, label %32 [
    i32 128, label %5
    i32 130, label %8
    i32 129, label %10
    i32 131, label %30
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %2, align 4
  br label %34

8:                                                ; preds = %1
  %9 = load i32, i32* @PR_SPEC_DISABLE, align 4
  store i32 %9, i32* %2, align 4
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = call i32 @task_spec_ssb_force_disable(%struct.task_struct* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @PR_SPEC_PRCTL, align 4
  %16 = load i32, i32* @PR_SPEC_FORCE_DISABLE, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %10
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = call i32 @task_spec_ssb_disable(%struct.task_struct* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @PR_SPEC_PRCTL, align 4
  %24 = load i32, i32* @PR_SPEC_DISABLE, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %18
  %27 = load i32, i32* @PR_SPEC_PRCTL, align 4
  %28 = load i32, i32* @PR_SPEC_ENABLE, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load i32, i32* @PR_SPEC_ENABLE, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @PR_SPEC_NOT_AFFECTED, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %26, %22, %14, %8, %5
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @arm64_get_ssbd_state(...) #1

declare dso_local i32 @task_spec_ssb_force_disable(%struct.task_struct*) #1

declare dso_local i32 @task_spec_ssb_disable(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
