; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_scene.c_R_AddPolygonSurfaces.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_scene.c_R_AddPolygonSurfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@REFENTITYNUM_WORLD = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@QSORT_REFENTITYNUM_SHIFT = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_AddPolygonSurfaces() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = load i32, i32* @REFENTITYNUM_WORLD, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  %6 = load i32, i32* @QSORT_REFENTITYNUM_SHIFT, align 4
  %7 = shl i32 %5, %6
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 1), align 4
  store i32 0, i32* %1, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 2, i32 1), align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  br label %9

9:                                                ; preds = %26, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 2, i32 0), align 8
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @R_GetShaderByHandle(i32 %16)
  store i32* %17, i32** %2, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = bitcast %struct.TYPE_5__* %18 to i8*
  %20 = load i32*, i32** %2, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @qfalse, align 4
  %25 = call i32 @R_AddDrawSurf(i8* %19, i32* %20, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 1
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %3, align 8
  br label %9

31:                                               ; preds = %9
  ret void
}

declare dso_local i32* @R_GetShaderByHandle(i32) #1

declare dso_local i32 @R_AddDrawSurf(i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
