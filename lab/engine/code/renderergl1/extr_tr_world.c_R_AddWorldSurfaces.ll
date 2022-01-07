; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_world.c_R_AddWorldSurfaces.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_world.c_R_AddWorldSurfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@r_drawworld = common dso_local global %struct.TYPE_10__* null, align 8
@tr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4
@REFENTITYNUM_WORLD = common dso_local global i32 0, align 4
@QSORT_REFENTITYNUM_SHIFT = common dso_local global i32 0, align 4
@MAX_DLIGHTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_AddWorldSurfaces() #0 {
  %1 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_drawworld, align 8
  %2 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %38

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 2, i32 0), align 8
  %8 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %38

12:                                               ; preds = %6
  %13 = load i32, i32* @REFENTITYNUM_WORLD, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %15 = load i32, i32* @QSORT_REFENTITYNUM_SHIFT, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 1), align 4
  %17 = call i32 (...) @R_MarkLeaves()
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 4, i32 0), align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 4, i32 0), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ClearBounds(i32 %20, i32 %23)
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 2, i32 1), align 8
  %26 = load i64, i64* @MAX_DLIGHTS, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %12
  %29 = load i64, i64* @MAX_DLIGHTS, align 8
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 2, i32 1), align 8
  br label %30

30:                                               ; preds = %28, %12
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 3), align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 2, i32 1), align 8
  %35 = shl i64 1, %34
  %36 = sub i64 %35, 1
  %37 = call i32 @R_RecursiveWorldNode(i32 %33, i32 15, i64 %36)
  br label %38

38:                                               ; preds = %30, %11, %5
  ret void
}

declare dso_local i32 @R_MarkLeaves(...) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @R_RecursiveWorldNode(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
