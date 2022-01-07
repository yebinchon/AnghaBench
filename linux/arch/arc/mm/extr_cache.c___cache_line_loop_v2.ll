; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_cache.c___cache_line_loop_v2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_cache.c___cache_line_loop_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_INV_IC = common dso_local global i32 0, align 4
@ARC_REG_IC_IVIL = common dso_local global i32 0, align 4
@OP_INV = common dso_local global i32 0, align 4
@ARC_REG_DC_IVDL = common dso_local global i32 0, align 4
@ARC_REG_DC_FLDL = common dso_local global i32 0, align 4
@CACHE_LINE_MASK = common dso_local global i64 0, align 8
@L1_CACHE_BYTES = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32, i32)* @__cache_line_loop_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cache_line_loop_v2(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @OP_INV_IC, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @ARC_REG_IC_IVIL, align 4
  store i32 %17, i32* %11, align 4
  br label %29

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @OP_INV, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @ARC_REG_DC_IVDL, align 4
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @ARC_REG_DC_FLDL, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %27, %16
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @CACHE_LINE_MASK, align 8
  %35 = xor i64 %34, -1
  %36 = and i64 %33, %35
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* @CACHE_LINE_MASK, align 8
  %40 = load i64, i64* %6, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* @CACHE_LINE_MASK, align 8
  %43 = load i64, i64* %7, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %32, %29
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @L1_CACHE_BYTES, align 8
  %48 = call i32 @DIV_ROUND_UP(i64 %46, i64 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @PAGE_SHIFT, align 8
  %51 = lshr i64 %49, %50
  %52 = and i64 %51, 31
  %53 = load i64, i64* %6, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %59, %45
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %12, align 4
  %58 = icmp sgt i32 %56, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @write_aux_reg(i32 %60, i64 %61)
  %63 = load i64, i64* @L1_CACHE_BYTES, align 8
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %6, align 8
  br label %55

66:                                               ; preds = %55
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @write_aux_reg(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
