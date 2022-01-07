; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_nand_ecc.c_nand_calculate_ecc.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_nand_ecc.c_nand_calculate_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nand_ecc_precalc_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_calculate_ecc(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %39, %2
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load i32*, i32** @nand_ecc_precalc_table, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %3, align 8
  %19 = load i32, i32* %17, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 63
  %25 = load i32, i32* %6, align 4
  %26 = xor i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 64
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %15
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = xor i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %11, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = xor i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %30, %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %12

42:                                               ; preds = %12
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 128
  %45 = ashr i32 %44, 0
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 128
  %48 = ashr i32 %47, 1
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 64
  %53 = ashr i32 %52, 1
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 64
  %58 = ashr i32 %57, 2
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 32
  %63 = ashr i32 %62, 2
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 32
  %68 = ashr i32 %67, 3
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 16
  %73 = ashr i32 %72, 3
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 16
  %78 = ashr i32 %77, 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, 8
  %83 = shl i32 %82, 4
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 8
  %86 = shl i32 %85, 3
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, 4
  %91 = shl i32 %90, 3
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, 4
  %96 = shl i32 %95, 2
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, 2
  %101 = shl i32 %100, 2
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, 2
  %106 = shl i32 %105, 1
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 1
  %111 = shl i32 %110, 1
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %7, align 4
  %115 = and i32 %114, 1
  %116 = shl i32 %115, 0
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %9, align 4
  %120 = xor i32 %119, -1
  %121 = load i32*, i32** %4, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %10, align 4
  %124 = xor i32 %123, -1
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %6, align 4
  %128 = xor i32 %127, -1
  %129 = shl i32 %128, 2
  %130 = or i32 %129, 3
  %131 = load i32*, i32** %4, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  store i32 %130, i32* %132, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
