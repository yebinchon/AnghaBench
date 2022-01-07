; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_EmitFlareSurface.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_EmitFlareSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i32, i8**, i8**, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32*, i32, i8*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@emitFlares = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@SURFACE_SHADER = common dso_local global i64 0, align 8
@numBSPDrawSurfaces = common dso_local global i64 0, align 8
@MAX_MAP_DRAW_SURFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"MAX_MAP_DRAW_SURFS\00", align 1
@bspDrawSurfaces = common dso_local global %struct.TYPE_9__* null, align 8
@MST_FLARE = common dso_local global i32 0, align 4
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@LS_NONE = common dso_local global i8* null, align 8
@numSurfacesByType = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitFlareSurface(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load i64, i64* @emitFlares, align 8
  %6 = load i64, i64* @qfalse, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SURFACE_SHADER, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %152

15:                                               ; preds = %8, %1
  %16 = load i64, i64* @numBSPDrawSurfaces, align 8
  %17 = load i64, i64* @MAX_MAP_DRAW_SURFS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i64, i64* @numBSPDrawSurfaces, align 8
  %23 = load i64, i64* @MAX_MAP_DRAW_SURFS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bspDrawSurfaces, align 8
  %29 = load i64, i64* @numBSPDrawSurfaces, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %29
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %4, align 8
  %31 = load i64, i64* @numBSPDrawSurfaces, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* @numBSPDrawSurfaces, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* @numBSPDrawSurfaces, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = call i32 @memset(%struct.TYPE_9__* %36, i32 0, i32 56)
  %38 = load i32, i32* @MST_FLARE, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = call i32 @EmitShader(i32 %45, i32* %49, i32* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %87, %27
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %62
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 -3, i32* %72, align 4
  %73 = load i8*, i8** @LS_NONE, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 4
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  store i8* %73, i8** %79, align 8
  %80 = load i8*, i8** @LS_NONE, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* %80, i8** %86, align 8
  br label %87

87:                                               ; preds = %66
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %62

90:                                               ; preds = %62
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 4
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  store i8* %93, i8** %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 3
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  store i8* %100, i8** %104, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @VectorCopy(i32 %107, i32 %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @VectorCopy(i32 %116, i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @VectorCopy(i32 %127, i32 %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @VectorCopy(i32 %138, i32 %143)
  %145 = load i32*, i32** @numSurfacesByType, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %90, %14
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @EmitShader(i32, i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
