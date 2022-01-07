; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_uasm.c_UASM_i_LA_mostly.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_uasm.c_UASM_i_LA_mostly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UASM_i_LA_mostly(i32** %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @uasm_in_compat_space_p(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %51, label %10

10:                                               ; preds = %3
  %11 = load i32**, i32*** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @uasm_rel_highest(i64 %13)
  %15 = call i32 @uasm_i_lui(i32** %11, i32 %12, i64 %14)
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @uasm_rel_higher(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load i32**, i32*** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @uasm_rel_higher(i64 %23)
  %25 = call i32 @uasm_i_daddiu(i32** %20, i32 %21, i32 %22, i64 %24)
  br label %26

26:                                               ; preds = %19, %10
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @uasm_rel_hi(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i32**, i32*** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @uasm_i_dsll(i32** %31, i32 %32, i32 %33, i32 16)
  %35 = load i32**, i32*** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @uasm_rel_hi(i64 %38)
  %40 = call i32 @uasm_i_daddiu(i32** %35, i32 %36, i32 %37, i64 %39)
  %41 = load i32**, i32*** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @uasm_i_dsll(i32** %41, i32 %42, i32 %43, i32 16)
  br label %50

45:                                               ; preds = %26
  %46 = load i32**, i32*** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @uasm_i_dsll32(i32** %46, i32 %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %45, %30
  br label %57

51:                                               ; preds = %3
  %52 = load i32**, i32*** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @uasm_rel_hi(i64 %54)
  %56 = call i32 @uasm_i_lui(i32** %52, i32 %53, i64 %55)
  br label %57

57:                                               ; preds = %51, %50
  ret void
}

declare dso_local i32 @uasm_in_compat_space_p(i64) #1

declare dso_local i32 @uasm_i_lui(i32**, i32, i64) #1

declare dso_local i64 @uasm_rel_highest(i64) #1

declare dso_local i64 @uasm_rel_higher(i64) #1

declare dso_local i32 @uasm_i_daddiu(i32**, i32, i32, i64) #1

declare dso_local i64 @uasm_rel_hi(i64) #1

declare dso_local i32 @uasm_i_dsll(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_dsll32(i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
