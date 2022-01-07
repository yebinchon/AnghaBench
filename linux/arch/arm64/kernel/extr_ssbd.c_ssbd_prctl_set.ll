; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ssbd.c_ssbd_prctl_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ssbd.c_ssbd_prctl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@ARM64_SSBD_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ARM64_SSBD_MITIGATED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ARM64_SSBD_FORCE_ENABLE = common dso_local global i32 0, align 4
@TIF_SSBD = common dso_local global i32 0, align 4
@ARM64_SSBD_FORCE_DISABLE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64)* @ssbd_prctl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssbd_prctl_set(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i32 (...) @arm64_get_ssbd_state()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @ARM64_SSBD_UNKNOWN, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %82

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ARM64_SSBD_MITIGATED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  switch i64 %19, label %24 [
    i64 129, label %20
    i64 130, label %23
    i64 128, label %23
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %82

23:                                               ; preds = %18, %18
  store i32 0, i32* %3, align 4
  br label %82

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %14
  %26 = load i64, i64* %5, align 8
  switch i64 %26, label %78 [
    i64 129, label %27
    i64 130, label %46
    i64 128, label %61
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ARM64_SSBD_FORCE_ENABLE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %33 = call i32 @task_spec_ssb_force_disable(%struct.task_struct* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %82

38:                                               ; preds = %31
  %39 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %40 = call i32 @task_clear_spec_ssb_disable(%struct.task_struct* %39)
  %41 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %42 = load i32, i32* @TIF_SSBD, align 4
  %43 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %41, i32 %42)
  %44 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %45 = call i32 @ssbd_ssbs_enable(%struct.task_struct* %44)
  br label %81

46:                                               ; preds = %25
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @ARM64_SSBD_FORCE_DISABLE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EPERM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %82

53:                                               ; preds = %46
  %54 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %55 = call i32 @task_set_spec_ssb_disable(%struct.task_struct* %54)
  %56 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %57 = load i32, i32* @TIF_SSBD, align 4
  %58 = call i32 @set_tsk_thread_flag(%struct.task_struct* %56, i32 %57)
  %59 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %60 = call i32 @ssbd_ssbs_disable(%struct.task_struct* %59)
  br label %81

61:                                               ; preds = %25
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @ARM64_SSBD_FORCE_DISABLE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %82

68:                                               ; preds = %61
  %69 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %70 = call i32 @task_set_spec_ssb_disable(%struct.task_struct* %69)
  %71 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %72 = call i32 @task_set_spec_ssb_force_disable(%struct.task_struct* %71)
  %73 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %74 = load i32, i32* @TIF_SSBD, align 4
  %75 = call i32 @set_tsk_thread_flag(%struct.task_struct* %73, i32 %74)
  %76 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %77 = call i32 @ssbd_ssbs_disable(%struct.task_struct* %76)
  br label %81

78:                                               ; preds = %25
  %79 = load i32, i32* @ERANGE, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %82

81:                                               ; preds = %68, %53, %38
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %78, %65, %50, %35, %23, %20, %11
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @arm64_get_ssbd_state(...) #1

declare dso_local i32 @task_spec_ssb_force_disable(%struct.task_struct*) #1

declare dso_local i32 @task_clear_spec_ssb_disable(%struct.task_struct*) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @ssbd_ssbs_enable(%struct.task_struct*) #1

declare dso_local i32 @task_set_spec_ssb_disable(%struct.task_struct*) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @ssbd_ssbs_disable(%struct.task_struct*) #1

declare dso_local i32 @task_set_spec_ssb_force_disable(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
