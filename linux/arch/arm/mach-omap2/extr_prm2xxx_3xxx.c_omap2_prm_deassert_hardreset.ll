; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm2xxx_3xxx.c_omap2_prm_deassert_hardreset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm2xxx_3xxx.c_omap2_prm_deassert_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP2_RM_RSTCTRL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@OMAP2_RM_RSTST = common dso_local global i32 0, align 4
@MAX_MODULE_HARDRESET_WAIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_prm_deassert_hardreset(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @OMAP2_RM_RSTCTRL, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i64 @omap2_prm_read_mod_bits_shift(i32 %21, i32 %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @EEXIST, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %54

29:                                               ; preds = %6
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @OMAP2_RM_RSTST, align 4
  %33 = call i32 @omap2_prm_rmw_mod_reg_bits(i32 -1, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @OMAP2_RM_RSTCTRL, align 4
  %37 = call i32 @omap2_prm_rmw_mod_reg_bits(i32 %34, i32 0, i32 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @OMAP2_RM_RSTST, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i64 @omap2_prm_read_mod_bits_shift(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @MAX_MODULE_HARDRESET_WAIT, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @omap_test_timeout(i64 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @MAX_MODULE_HARDRESET_WAIT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  br label %52

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %26
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i64 @omap2_prm_read_mod_bits_shift(i32, i32, i32) #1

declare dso_local i32 @omap2_prm_rmw_mod_reg_bits(i32, i32, i32, i32) #1

declare dso_local i32 @omap_test_timeout(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
