; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hibernate.c_swsusp_arch_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hibernate.c_swsusp_arch_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sleep_stack_data = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Can't hibernate: no mechanism to offline secondary CPUs.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@sleep_cpu = common dso_local global i32 0, align 4
@__mmuoff_data_start = common dso_local global i32 0, align 4
@__mmuoff_data_end = common dso_local global i32 0, align 4
@__idmap_text_start = common dso_local global i32 0, align 4
@__idmap_text_end = common dso_local global i32 0, align 4
@__hyp_idmap_text_start = common dso_local global i32 0, align 4
@__hyp_idmap_text_end = common dso_local global i32 0, align 4
@__hyp_text_start = common dso_local global i32 0, align 4
@__hyp_text_end = common dso_local global i32 0, align 4
@in_suspend = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swsusp_arch_suspend() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.sleep_stack_data, align 4
  store i32 0, i32* %2, align 4
  %5 = call i64 (...) @cpus_are_stuck_in_kernel()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %48

11:                                               ; preds = %0
  %12 = call i64 (...) @local_daif_save()
  store i64 %12, i64* %3, align 8
  %13 = call i64 @__cpu_suspend_enter(%struct.sleep_stack_data* %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = call i32 (...) @crash_prepare_suspend()
  %17 = call i32 (...) @smp_processor_id()
  store i32 %17, i32* @sleep_cpu, align 4
  %18 = call i32 (...) @swsusp_save()
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %11
  %20 = load i32, i32* @__mmuoff_data_start, align 4
  %21 = load i32, i32* @__mmuoff_data_end, align 4
  %22 = call i32 @dcache_clean_range(i32 %20, i32 %21)
  %23 = load i32, i32* @__idmap_text_start, align 4
  %24 = load i32, i32* @__idmap_text_end, align 4
  %25 = call i32 @dcache_clean_range(i32 %23, i32 %24)
  %26 = call i64 (...) @el2_reset_needed()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i32, i32* @__hyp_idmap_text_start, align 4
  %30 = load i32, i32* @__hyp_idmap_text_end, align 4
  %31 = call i32 @dcache_clean_range(i32 %29, i32 %30)
  %32 = load i32, i32* @__hyp_text_start, align 4
  %33 = load i32, i32* @__hyp_text_end, align 4
  %34 = call i32 @dcache_clean_range(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %19
  %36 = call i32 (...) @crash_post_resume()
  store i64 0, i64* @in_suspend, align 8
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* @sleep_cpu, align 4
  %39 = call i32 (...) @__cpu_suspend_exit()
  %40 = call i32 (...) @arm64_get_ssbd_state()
  switch i32 %40, label %43 [
    i32 129, label %41
    i32 128, label %41
  ]

41:                                               ; preds = %35, %35
  %42 = call i32 @arm64_set_ssbd_mitigation(i32 1)
  br label %43

43:                                               ; preds = %41, %35
  br label %44

44:                                               ; preds = %43, %15
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @local_daif_restore(i64 %45)
  %47 = load i32, i32* %2, align 4
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %44, %7
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i64 @cpus_are_stuck_in_kernel(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @local_daif_save(...) #1

declare dso_local i64 @__cpu_suspend_enter(%struct.sleep_stack_data*) #1

declare dso_local i32 @crash_prepare_suspend(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @swsusp_save(...) #1

declare dso_local i32 @dcache_clean_range(i32, i32) #1

declare dso_local i64 @el2_reset_needed(...) #1

declare dso_local i32 @crash_post_resume(...) #1

declare dso_local i32 @__cpu_suspend_exit(...) #1

declare dso_local i32 @arm64_get_ssbd_state(...) #1

declare dso_local i32 @arm64_set_ssbd_mitigation(i32) #1

declare dso_local i32 @local_daif_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
