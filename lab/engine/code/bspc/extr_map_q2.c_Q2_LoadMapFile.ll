; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q2.c_Q2_LoadMapFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q2.c_Q2_LoadMapFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i32* }

@.str = private unnamed_addr constant [22 x i8] c"-- Q2_LoadMapFile --\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"couldn't open %s\0A\00", align 1
@SCFL_NOSTRINGWHITESPACES = common dso_local global i32 0, align 4
@SCFL_NOSTRINGESCAPECHARS = common dso_local global i32 0, align 4
@SCFL_PRIMITIVE = common dso_local global i32 0, align 4
@nummapbrushsides = common dso_local global i64 0, align 8
@num_entities = common dso_local global i64 0, align 8
@map_mins = common dso_local global i32 0, align 4
@map_maxs = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_4__* null, align 8
@mapbrushes = common dso_local global %struct.TYPE_3__* null, align 8
@MAPTYPE_QUAKE2 = common dso_local global i32 0, align 4
@loadedmaptype = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q2_LoadMapFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %6 = load i8*, i8** %2, align 8
  %7 = call i32* @LoadScriptFile(i8* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %75

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @SCFL_NOSTRINGWHITESPACES, align 4
  %16 = load i32, i32* @SCFL_NOSTRINGESCAPECHARS, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SCFL_PRIMITIVE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @SetScriptFlags(i32* %14, i32 %19)
  store i64 0, i64* @nummapbrushsides, align 8
  store i64 0, i64* @num_entities, align 8
  br label %21

21:                                               ; preds = %25, %13
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @Q2_ParseMapEntity(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %21

26:                                               ; preds = %21
  %27 = load i32, i32* @map_mins, align 4
  %28 = load i32, i32* @map_maxs, align 4
  %29 = call i32 @ClearBounds(i32 %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %67, %26
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %30
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mapbrushes, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 4096
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %67

48:                                               ; preds = %37
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mapbrushes, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @map_mins, align 4
  %56 = load i32, i32* @map_maxs, align 4
  %57 = call i32 @AddPointToBounds(i32* %54, i32 %55, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mapbrushes, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @map_mins, align 4
  %65 = load i32, i32* @map_maxs, align 4
  %66 = call i32 @AddPointToBounds(i32* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %48, %47
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %30

70:                                               ; preds = %30
  %71 = call i32 (...) @PrintMapInfo()
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @FreeScript(i32* %72)
  %74 = call i32 (...) @Q2_CreateMapTexinfo()
  br label %75

75:                                               ; preds = %70, %10
  ret void
}

declare dso_local i32 @Log_Print(i8*, ...) #1

declare dso_local i32* @LoadScriptFile(i8*) #1

declare dso_local i32 @SetScriptFlags(i32*, i32) #1

declare dso_local i64 @Q2_ParseMapEntity(i32*) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @AddPointToBounds(i32*, i32, i32) #1

declare dso_local i32 @PrintMapInfo(...) #1

declare dso_local i32 @FreeScript(i32*) #1

declare dso_local i32 @Q2_CreateMapTexinfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
