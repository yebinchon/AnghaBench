; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_adjust_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_adjust_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTE_T_LOG2 = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32)* @build_adjust_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_adjust_context(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @PTE_T_LOG2, align 4
  %8 = add nsw i32 %7, 1
  %9 = sub nsw i32 4, %8
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = add nsw i32 %9, %10
  %12 = sub nsw i32 %11, 12
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @PTRS_PER_PTE, align 4
  %14 = sdiv i32 %13, 2
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* @PTE_T_LOG2, align 4
  %17 = add nsw i32 %16, 1
  %18 = shl i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = call i32 (...) @current_cpu_type()
  switch i32 %19, label %23 [
    i32 128, label %20
    i32 135, label %20
    i32 134, label %20
    i32 133, label %20
    i32 132, label %20
    i32 130, label %20
    i32 129, label %20
    i32 131, label %20
  ]

20:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %21, 2
  store i32 %22, i32* %5, align 4
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32**, i32*** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @UASM_i_SRL(i32** %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i32**, i32*** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @uasm_i_andi(i32** %34, i32 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @UASM_i_SRL(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_andi(i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
