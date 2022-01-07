; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q3.c_Q3_LoadMapFromBSP.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q3.c_Q3_LoadMapFromBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.quakefile_s = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"-- Q3_LoadMapFromBSP --\0A\00", align 1
@MAPTYPE_QUAKE3 = common dso_local global i32 0, align 4
@loadedmaptype = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Loading map from %s...\0A\00", align 1
@MAX_MAPFILE_BRUSHES = common dso_local global i32 0, align 4
@brushmodelnumbers = common dso_local global i32* null, align 8
@nummapbrushsides = common dso_local global i64 0, align 8
@num_entities = common dso_local global i32 0, align 4
@map_mins = common dso_local global i32 0, align 4
@map_maxs = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_4__* null, align 8
@mapbrushes = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q3_LoadMapFromBSP(%struct.quakefile_s* %0) #0 {
  %2 = alloca %struct.quakefile_s*, align 8
  %3 = alloca i32, align 4
  store %struct.quakefile_s* %0, %struct.quakefile_s** %2, align 8
  %4 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @MAPTYPE_QUAKE3, align 4
  store i32 %5, i32* @loadedmaptype, align 4
  %6 = load %struct.quakefile_s*, %struct.quakefile_s** %2, align 8
  %7 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load %struct.quakefile_s*, %struct.quakefile_s** %2, align 8
  %11 = call i32 @Q3_LoadBSPFile(%struct.quakefile_s* %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %21, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MAX_MAPFILE_BRUSHES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32*, i32** @brushmodelnumbers, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 -1, i32* %20, align 4
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %12

24:                                               ; preds = %12
  store i64 0, i64* @nummapbrushsides, align 8
  store i32 0, i32* @num_entities, align 4
  %25 = call i32 (...) @Q3_ParseEntities()
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %33, %24
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @num_entities, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @Q3_ParseBSPEntity(i32 %31)
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %26

36:                                               ; preds = %26
  %37 = call i32 (...) @AAS_CreateCurveBrushes()
  %38 = load i32, i32* @map_mins, align 4
  %39 = load i32, i32* @map_maxs, align 4
  %40 = call i32 @ClearBounds(i32 %38, i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %76, %36
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %41
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mapbrushes, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %76

57:                                               ; preds = %48
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mapbrushes, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @map_mins, align 4
  %65 = load i32, i32* @map_maxs, align 4
  %66 = call i32 @AddPointToBounds(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mapbrushes, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @map_mins, align 4
  %74 = load i32, i32* @map_maxs, align 4
  %75 = call i32 @AddPointToBounds(i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %57, %56
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %41

79:                                               ; preds = %41
  ret void
}

declare dso_local i32 @Log_Print(i8*, ...) #1

declare dso_local i32 @Q3_LoadBSPFile(%struct.quakefile_s*) #1

declare dso_local i32 @Q3_ParseEntities(...) #1

declare dso_local i32 @Q3_ParseBSPEntity(i32) #1

declare dso_local i32 @AAS_CreateCurveBrushes(...) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @AddPointToBounds(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
