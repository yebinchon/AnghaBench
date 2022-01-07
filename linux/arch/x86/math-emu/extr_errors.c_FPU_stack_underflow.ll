; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_errors.c_FPU_stack_underflow.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_errors.c_FPU_stack_underflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@control_word = common dso_local global i32 0, align 4
@CW_Invalid = common dso_local global i32 0, align 4
@CONST_QNaN = common dso_local global i32 0, align 4
@TAG_Special = common dso_local global i32 0, align 4
@EX_StackUnder = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FPU_stack_underflow() #0 {
  %1 = load i32, i32* @control_word, align 4
  %2 = load i32, i32* @CW_Invalid, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @TAG_Special, align 4
  %7 = call i32 @FPU_copy_to_reg0(i32* @CONST_QNaN, i32 %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @EX_StackUnder, align 4
  %10 = call i32 @EXCEPTION(i32 %9)
  ret void
}

declare dso_local i32 @FPU_copy_to_reg0(i32*, i32) #1

declare dso_local i32 @EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
