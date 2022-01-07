; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_tags.c_FPU_empty_i.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_tags.c_FPU_empty_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@top = common dso_local global i32 0, align 4
@fpu_tag_word = common dso_local global i32 0, align 4
@TAG_Empty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FPU_empty_i(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @top, align 4
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %4, %5
  %7 = and i32 %6, 7
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @fpu_tag_word, align 4
  %9 = load i32, i32* %3, align 4
  %10 = mul nsw i32 %9, 2
  %11 = ashr i32 %8, %10
  %12 = and i32 %11, 3
  %13 = load i32, i32* @TAG_Empty, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
