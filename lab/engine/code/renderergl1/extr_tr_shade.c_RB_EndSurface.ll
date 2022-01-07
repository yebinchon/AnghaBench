; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_RB_EndSurface.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_RB_EndSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64*, i64**, i32, i32 (...)*, i64, %struct.TYPE_14__* }
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
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %95

7:                                                ; preds = %0
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = load i32, i32* @SHADER_MAX_INDEXES, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %10, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 0), align 8
  %19 = load i32, i32* @ERR_DROP, align 4
  %20 = call i32 %18(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %7
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %24 = load i64**, i64*** %23, align 8
  %25 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64*, i64** %24, i64 %27
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 0), align 8
  %35 = load i32, i32* @ERR_DROP, align 4
  %36 = call i32 %34(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %21
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 6), align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0), align 8
  %40 = icmp eq %struct.TYPE_14__* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (...) @RB_ShadowTessEnd()
  br label %95

43:                                               ; preds = %37
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** @r_debugSort, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** @r_debugSort, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 6), align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %95

57:                                               ; preds = %48, %43
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 3), align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 3), align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 5), align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 2), align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 2), align 4
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 0), align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 0), align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 0), align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 0), align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 3), align 8
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %68, %70
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 1), align 8
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 1), align 8
  %76 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 4), align 8
  %77 = call i32 (...) %76()
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** @r_showtris, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %57
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %84 = call i32 @DrawTris(%struct.TYPE_16__* %83)
  br label %85

85:                                               ; preds = %82, %57
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** @r_shownormals, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %92 = call i32 @DrawNormals(%struct.TYPE_16__* %91)
  br label %93

93:                                               ; preds = %90, %85
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 0), align 8
  %94 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %56, %41, %6
  ret void
}

declare dso_local i32 @RB_ShadowTessEnd(...) #1

declare dso_local i32 @DrawTris(%struct.TYPE_16__*) #1

declare dso_local i32 @DrawNormals(%struct.TYPE_16__*) #1

declare dso_local i32 @GLimp_LogComment(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
