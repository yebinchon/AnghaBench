; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bsp.c_ProcessSubModel.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bsp.c_ProcessSubModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_31__*, i32, i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_31__* }
%struct.TYPE_28__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_31__*, i32 }

@entities = common dso_local global %struct.TYPE_30__* null, align 8
@mapEntityNum = common dso_local global i64 0, align 8
@numMapDrawSurfs = common dso_local global i32 0, align 4
@PLANENUM_LEAF = common dso_local global i32 0, align 4
@nosubdivide = common dso_local global i32 0, align 4
@notjunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessSubModel() #0 {
  %1 = alloca %struct.TYPE_30__*, align 8
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = call i32 (...) @BeginModel()
  %7 = load %struct.TYPE_30__*, %struct.TYPE_30__** @entities, align 8
  %8 = load i64, i64* @mapEntityNum, align 8
  %9 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i64 %8
  store %struct.TYPE_30__* %9, %struct.TYPE_30__** %1, align 8
  %10 = load i32, i32* @numMapDrawSurfs, align 4
  %11 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = call i32 (...) @ClearMetaTriangles()
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %15 = call i32 @PatchMapDrawSurfs(%struct.TYPE_30__* %14)
  %16 = call %struct.TYPE_29__* (...) @AllocNode()
  store %struct.TYPE_29__* %16, %struct.TYPE_29__** %5, align 8
  %17 = load i32, i32* @PLANENUM_LEAF, align 4
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = call %struct.TYPE_28__* (...) @AllocTree()
  store %struct.TYPE_28__* %20, %struct.TYPE_28__** %2, align 8
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  store %struct.TYPE_29__* %21, %struct.TYPE_29__** %23, align 8
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %26 = call i32 @ClipSidesIntoTree(%struct.TYPE_30__* %24, %struct.TYPE_28__* %25)
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %28 = call i32 @AddTriangleModels(%struct.TYPE_30__* %27)
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %30 = call i32 @AddEntitySurfaceModels(%struct.TYPE_30__* %29)
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %32, align 8
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 1
  %38 = call i32 @EmitBrushes(%struct.TYPE_31__* %33, i32* %35, i32* %37)
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %40, align 8
  store %struct.TYPE_31__* %41, %struct.TYPE_31__** %3, align 8
  br label %42

42:                                               ; preds = %56, %0
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %44 = icmp ne %struct.TYPE_31__* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %47 = call %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__* %46)
  store %struct.TYPE_31__* %47, %struct.TYPE_31__** %4, align 8
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %49, align 8
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 0
  store %struct.TYPE_31__* %50, %struct.TYPE_31__** %52, align 8
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  store %struct.TYPE_31__* %53, %struct.TYPE_31__** %55, align 8
  br label %56

56:                                               ; preds = %45
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %58, align 8
  store %struct.TYPE_31__* %59, %struct.TYPE_31__** %3, align 8
  br label %42

60:                                               ; preds = %42
  %61 = load i32, i32* @nosubdivide, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %66 = call i32 @SubdivideFaceSurfaces(%struct.TYPE_30__* %64, %struct.TYPE_28__* %65)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* @notjunc, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %72 = call i32 @FixTJunctions(%struct.TYPE_30__* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %75 = call i32 @ClassifyEntitySurfaces(%struct.TYPE_30__* %74)
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %77 = call i32 @MakeEntityDecals(%struct.TYPE_30__* %76)
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %79 = call i32 @MakeEntityMetaTriangles(%struct.TYPE_30__* %78)
  %80 = call i32 (...) @SmoothMetaTriangles()
  %81 = call i32 (...) @FixMetaTJunctions()
  %82 = call i32 (...) @MergeMetaTriangles()
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %85 = call i32 @FilterDrawsurfsIntoTree(%struct.TYPE_30__* %83, %struct.TYPE_28__* %84)
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %87 = call i32 @FixBrushSides(%struct.TYPE_30__* %86)
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %90 = call i32 @EndModel(%struct.TYPE_30__* %88, %struct.TYPE_29__* %89)
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %92 = call i32 @FreeTree(%struct.TYPE_28__* %91)
  ret void
}

declare dso_local i32 @BeginModel(...) #1

declare dso_local i32 @ClearMetaTriangles(...) #1

declare dso_local i32 @PatchMapDrawSurfs(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_29__* @AllocNode(...) #1

declare dso_local %struct.TYPE_28__* @AllocTree(...) #1

declare dso_local i32 @ClipSidesIntoTree(%struct.TYPE_30__*, %struct.TYPE_28__*) #1

declare dso_local i32 @AddTriangleModels(%struct.TYPE_30__*) #1

declare dso_local i32 @AddEntitySurfaceModels(%struct.TYPE_30__*) #1

declare dso_local i32 @EmitBrushes(%struct.TYPE_31__*, i32*, i32*) #1

declare dso_local %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__*) #1

declare dso_local i32 @SubdivideFaceSurfaces(%struct.TYPE_30__*, %struct.TYPE_28__*) #1

declare dso_local i32 @FixTJunctions(%struct.TYPE_30__*) #1

declare dso_local i32 @ClassifyEntitySurfaces(%struct.TYPE_30__*) #1

declare dso_local i32 @MakeEntityDecals(%struct.TYPE_30__*) #1

declare dso_local i32 @MakeEntityMetaTriangles(%struct.TYPE_30__*) #1

declare dso_local i32 @SmoothMetaTriangles(...) #1

declare dso_local i32 @FixMetaTJunctions(...) #1

declare dso_local i32 @MergeMetaTriangles(...) #1

declare dso_local i32 @FilterDrawsurfsIntoTree(%struct.TYPE_30__*, %struct.TYPE_28__*) #1

declare dso_local i32 @FixBrushSides(%struct.TYPE_30__*) #1

declare dso_local i32 @EndModel(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @FreeTree(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
