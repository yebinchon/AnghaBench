; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_RB_EndSurface.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_RB_EndSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64*, i64**, i32, i64, i32 (...)*, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i32 (i32, i8*)* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64 }

@tess = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@SHADER_MAX_INDEXES = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"RB_EndSurface() - SHADER_MAX_INDEXES hit\00", align 1
@SHADER_MAX_VERTEXES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"RB_EndSurface() - SHADER_MAX_VERTEXES hit\00", align 1
@tr = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@r_debugSort = common dso_local global %struct.TYPE_21__* null, align 8
@backEnd = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@r_showtris = common dso_local global %struct.TYPE_19__* null, align 8
@r_shownormals = common dso_local global %struct.TYPE_20__* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"----------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_EndSurface() #0 {
  %1 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* @tess, %struct.TYPE_16__** %1, align 8
  %2 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %3 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %0
  br label %105

12:                                               ; preds = %6
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* @SHADER_MAX_INDEXES, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 0), align 8
  %24 = load i32, i32* @ERR_DROP, align 4
  %25 = call i32 %23(i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %12
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 3
  %29 = load i64**, i64*** %28, align 8
  %30 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64*, i64** %29, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 0), align 8
  %40 = load i32, i32* @ERR_DROP, align 4
  %41 = call i32 %39(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %26
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 8), align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0), align 8
  %45 = icmp eq %struct.TYPE_14__* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (...) @RB_ShadowTessEnd()
  br label %105

48:                                               ; preds = %42
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** @r_debugSort, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** @r_debugSort, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 8), align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %105

62:                                               ; preds = %53, %48
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 7), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (...) @VaoCache_Commit()
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 3), align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 3), align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 1), align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 2), align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 2), align 4
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 0), align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 0), align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 0), align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 0), align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 4), align 8
  %80 = sext i32 %79 to i64
  %81 = mul nsw i64 %78, %80
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 1), align 8
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 1), align 8
  %86 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 6), align 8
  %87 = call i32 (...) %86()
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** @r_showtris, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %67
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %94 = call i32 @DrawTris(%struct.TYPE_16__* %93)
  br label %95

95:                                               ; preds = %92, %67
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** @r_shownormals, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %102 = call i32 @DrawNormals(%struct.TYPE_16__* %101)
  br label %103

103:                                              ; preds = %100, %95
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 5), align 8
  %104 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %61, %46, %11
  ret void
}

declare dso_local i32 @RB_ShadowTessEnd(...) #1

declare dso_local i32 @VaoCache_Commit(...) #1

declare dso_local i32 @DrawTris(%struct.TYPE_16__*) #1

declare dso_local i32 @DrawNormals(%struct.TYPE_16__*) #1

declare dso_local i32 @GLimp_LogComment(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
