; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shader.c_FixRenderCommandList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shader.c_FixRenderCommandList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }

@backEndData = common dso_local global %struct.TYPE_8__* null, align 8
@QSORT_SHADERNUM_SHIFT = common dso_local global i32 0, align 4
@MAX_SHADERS = common dso_local global i32 0, align 4
@QSORT_FOGNUM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @FixRenderCommandList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FixRenderCommandList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @backEndData, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %112

21:                                               ; preds = %1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %21, %111
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @PADP(i8* %26, i32 8)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %110 [
    i32 130, label %31
    i32 129, label %37
    i32 132, label %43
    i32 133, label %97
    i32 128, label %103
    i32 131, label %109
  ]

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = bitcast i32* %35 to i8*
  store i8* %36, i8** %4, align 8
  br label %111

37:                                               ; preds = %25
  %38 = load i8*, i8** %4, align 8
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = bitcast i32* %41 to i8*
  store i8* %42, i8** %4, align 8
  br label %111

43:                                               ; preds = %25
  %44 = load i8*, i8** %4, align 8
  %45 = bitcast i8* %44 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %14, align 8
  store i32 0, i32* %7, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %8, align 8
  br label %49

49:                                               ; preds = %88, %43
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %93

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @R_DecomposeSort(i32 %58, i32* %11, i32** %9, i32* %10, i32* %12)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @QSORT_SHADERNUM_SHIFT, align 4
  %64 = ashr i32 %62, %63
  %65 = load i32, i32* @MAX_SHADERS, align 4
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %64, %66
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %2, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %55
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @QSORT_SHADERNUM_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @QSORT_FOGNUM_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %78, %81
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %71, %55
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 1
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %8, align 8
  br label %49

93:                                               ; preds = %49
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 1
  %96 = bitcast %struct.TYPE_6__* %95 to i8*
  store i8* %96, i8** %4, align 8
  br label %111

97:                                               ; preds = %25
  %98 = load i8*, i8** %4, align 8
  %99 = bitcast i8* %98 to i32*
  store i32* %99, i32** %15, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = bitcast i32* %101 to i8*
  store i8* %102, i8** %4, align 8
  br label %111

103:                                              ; preds = %25
  %104 = load i8*, i8** %4, align 8
  %105 = bitcast i8* %104 to i32*
  store i32* %105, i32** %16, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = bitcast i32* %107 to i8*
  store i8* %108, i8** %4, align 8
  br label %111

109:                                              ; preds = %25
  br label %110

110:                                              ; preds = %25, %109
  br label %112

111:                                              ; preds = %103, %97, %93, %37, %31
  br label %25

112:                                              ; preds = %110, %1
  ret void
}

declare dso_local i8* @PADP(i8*, i32) #1

declare dso_local i32 @R_DecomposeSort(i32, i32*, i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
