; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_sdei.c_sdei_arch_get_entry_point.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_sdei.c_sdei_arch_get_entry_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"Not supported on this hardware/boot configuration\0A\00", align 1
@CONFIG_VMAP_STACK = common dso_local global i32 0, align 4
@CONDUIT_HVC = common dso_local global i32 0, align 4
@SDEI_EXIT_HVC = common dso_local global i32 0, align 4
@SDEI_EXIT_SMC = common dso_local global i32 0, align 4
@sdei_exit_mode = common dso_local global i32 0, align 4
@__sdei_asm_handler = common dso_local global i64 0, align 8
@TRAMP_VALIAS = common dso_local global i64 0, align 8
@__entry_tramp_text_start = common dso_local global i64 0, align 8
@__sdei_asm_entry_trampoline = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdei_arch_get_entry_point(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i64 (...) @is_hyp_mode_available()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = call i32 (...) @is_kernel_in_hyp_mode()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %31

11:                                               ; preds = %6, %1
  %12 = load i32, i32* @CONFIG_VMAP_STACK, align 4
  %13 = call i64 @IS_ENABLED(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = call i64 (...) @init_sdei_stacks()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i64 0, i64* %2, align 8
  br label %31

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %11
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @CONDUIT_HVC, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @SDEI_EXIT_HVC, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @SDEI_EXIT_SMC, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* @sdei_exit_mode, align 4
  %30 = load i64, i64* @__sdei_asm_handler, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %28, %18, %9
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i64 @is_hyp_mode_available(...) #1

declare dso_local i32 @is_kernel_in_hyp_mode(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @init_sdei_stacks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
