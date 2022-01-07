; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/nohash/extr_fsl_booke.c_calc_cam_sz.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/nohash/extr_fsl_booke.c_calc_cam_sz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPRN_MMUCFG = common dso_local global i32 0, align 4
@MMUCFG_MAVN = common dso_local global i32 0, align 4
@MMUCFG_MAVN_V1 = common dso_local global i32 0, align 4
@SPRN_TLB1CFG = common dso_local global i32 0, align 4
@SPRN_TLB1PS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @calc_cam_sz(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @__ilog2(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = or i64 %13, %14
  %16 = call i32 @__ffs(i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @SPRN_MMUCFG, align 4
  %18 = call i32 @mfspr(i32 %17)
  %19 = load i32, i32* @MMUCFG_MAVN, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @MMUCFG_MAVN_V1, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load i32, i32* @SPRN_TLB1CFG, align 4
  %25 = call i32 @mfspr(i32 %24)
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 15
  %28 = mul nsw i32 %27, 2
  %29 = add nsw i32 %28, 10
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, -2
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, -2
  store i32 %34, i32* %8, align 4
  br label %41

35:                                               ; preds = %3
  %36 = load i32, i32* @SPRN_TLB1PS, align 4
  %37 = call i32 @mfspr(i32 %36)
  %38 = call i32 @__ilog2(i32 %37)
  %39 = add nsw i32 %38, 10
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %35, %23
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* %9, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = shl i64 1, %57
  ret i64 %58
}

declare dso_local i32 @__ilog2(i32) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
