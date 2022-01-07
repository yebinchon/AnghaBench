; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_cache.c___cache_line_loop_v3.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_cache.c___cache_line_loop_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_INV_IC = common dso_local global i32 0, align 4
@ARC_REG_IC_IVIL = common dso_local global i32 0, align 4
@ARC_REG_IC_PTAG = common dso_local global i32 0, align 4
@OP_INV = common dso_local global i32 0, align 4
@ARC_REG_DC_IVDL = common dso_local global i32 0, align 4
@ARC_REG_DC_FLDL = common dso_local global i32 0, align 4
@ARC_REG_DC_PTAG = common dso_local global i32 0, align 4
@CACHE_LINE_MASK = common dso_local global i64 0, align 8
@L1_CACHE_BYTES = common dso_local global i64 0, align 8
@ARC_REG_IC_PTAG_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32, i32)* @__cache_line_loop_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cache_line_loop_v3(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @OP_INV_IC, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @ARC_REG_IC_IVIL, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @ARC_REG_IC_PTAG, align 4
  store i32 %19, i32* %12, align 4
  br label %32

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @OP_INV, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @ARC_REG_DC_IVDL, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ARC_REG_DC_FLDL, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @ARC_REG_DC_PTAG, align 4
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %29, %17
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @CACHE_LINE_MASK, align 8
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* @CACHE_LINE_MASK, align 8
  %43 = load i64, i64* %6, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* @CACHE_LINE_MASK, align 8
  %46 = load i64, i64* %7, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %35, %32
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @L1_CACHE_BYTES, align 8
  %51 = call i32 @DIV_ROUND_UP(i64 %49, i64 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @write_aux_reg(i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = call i64 (...) @is_pae40_enabled()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @OP_INV_IC, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32, i32* @ARC_REG_IC_PTAG_HI, align 4
  %67 = load i64, i64* %6, align 8
  %68 = trunc i64 %67 to i32
  %69 = ashr i32 %68, 32
  %70 = sext i32 %69 to i64
  %71 = call i32 @write_aux_reg(i32 %66, i64 %70)
  br label %72

72:                                               ; preds = %65, %61, %58
  br label %73

73:                                               ; preds = %87, %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %13, align 4
  %76 = icmp sgt i32 %74, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @write_aux_reg(i32 %81, i64 %82)
  %84 = load i64, i64* @L1_CACHE_BYTES, align 8
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %6, align 8
  br label %87

87:                                               ; preds = %80, %77
  %88 = load i32, i32* %11, align 4
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @write_aux_reg(i32 %88, i64 %89)
  %91 = load i64, i64* @L1_CACHE_BYTES, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %7, align 8
  br label %73

94:                                               ; preds = %73
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @write_aux_reg(i32, i64) #1

declare dso_local i64 @is_pae40_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
