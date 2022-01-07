; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_main.c_R_DecomposeSort.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_main.c_R_DecomposeSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32** }

@QSORT_FOGNUM_SHIFT = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@QSORT_SHADERNUM_SHIFT = common dso_local global i32 0, align 4
@MAX_SHADERS = common dso_local global i32 0, align 4
@QSORT_REFENTITYNUM_SHIFT = common dso_local global i32 0, align 4
@REFENTITYNUM_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DecomposeSort(i32 %0, i32* %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @QSORT_FOGNUM_SHIFT, align 4
  %13 = lshr i32 %11, %12
  %14 = and i32 %13, 31
  %15 = load i32*, i32** %9, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 0), align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @QSORT_SHADERNUM_SHIFT, align 4
  %19 = lshr i32 %17, %18
  %20 = load i32, i32* @MAX_SHADERS, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %19, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %16, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i32**, i32*** %8, align 8
  store i32* %25, i32** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @QSORT_REFENTITYNUM_SHIFT, align 4
  %29 = lshr i32 %27, %28
  %30 = load i32, i32* @REFENTITYNUM_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 3
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
