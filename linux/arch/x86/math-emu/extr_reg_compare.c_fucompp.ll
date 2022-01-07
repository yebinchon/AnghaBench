; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_reg_compare.c_fucompp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_reg_compare.c_fucompp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPU_rm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fucompp() #0 {
  %1 = load i32, i32* @FPU_rm, align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = call i32 @compare_u_st_st(i32 1)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = call i32 (...) @poppop()
  br label %8

8:                                                ; preds = %6, %3
  br label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @FPU_illegal()
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @compare_u_st_st(i32) #1

declare dso_local i32 @poppop(...) #1

declare dso_local i32 @FPU_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
