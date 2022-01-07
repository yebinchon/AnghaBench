; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prminst44xx.c_omap4_prminst_deassert_hardreset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prminst44xx.c_omap4_prminst_deassert_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EEXIST = common dso_local global i32 0, align 4
@MAX_MODULE_HARDRESET_WAIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4_prminst_deassert_hardreset(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i64 @omap4_prminst_is_hardreset_asserted(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EEXIST, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %58

30:                                               ; preds = %6
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @omap4_prminst_rmw_inst_reg_bits(i32 -1, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @omap4_prminst_rmw_inst_reg_bits(i32 %36, i32 0, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i64 @omap4_prminst_is_hardreset_asserted(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @MAX_MODULE_HARDRESET_WAIT, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @omap_test_timeout(i64 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @MAX_MODULE_HARDRESET_WAIT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %30
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  br label %56

55:                                               ; preds = %30
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 0, %55 ]
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %27
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i64 @omap4_prminst_is_hardreset_asserted(i32, i32, i32, i32) #1

declare dso_local i32 @omap4_prminst_rmw_inst_reg_bits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @omap_test_timeout(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
