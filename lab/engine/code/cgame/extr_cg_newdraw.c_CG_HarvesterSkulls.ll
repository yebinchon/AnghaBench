; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_HarvesterSkulls.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_HarvesterSkulls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i64, i64 }

@cg = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@cgs = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@cg_drawIcons = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@cg_draw3dIcons = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@YAW = common dso_local global i64 0, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, float, i32, i32, i32)* @CG_HarvesterSkulls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_HarvesterSkulls(%struct.TYPE_13__* %0, float %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %15, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0), align 8
  %21 = load i64, i64* @GT_HARVESTER, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %132

24:                                               ; preds = %5
  %25 = load i32, i32* %15, align 4
  %26 = icmp sgt i32 %25, 99
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 99, i32* %15, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @Com_sprintf(i8* %29, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %33 = load float, float* %7, align 4
  %34 = call i32 @CG_Text_Width(i8* %32, float %33, i32 0)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %15, align 4
  %42 = sub nsw i32 %40, %41
  %43 = add nsw i32 %37, %42
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load float, float* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @CG_Text_Paint(i32 %43, i64 %50, float %51, i32 %52, i8* %53, i32 0, i32 0, i32 %54)
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg_drawIcons, i32 0, i32 0), align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %132

58:                                               ; preds = %28
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %106, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_draw3dIcons, i32 0, i32 0), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %106

64:                                               ; preds = %61
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @VectorClear(i32* %65)
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 90, i32* %68, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 0, i32* %70, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 -10, i32* %72, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %74 = and i32 %73, 2047
  %75 = mul nsw i32 %74, 360
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %76, 2.048000e+03
  %78 = fptosi double %77 to i32
  %79 = load i32*, i32** %13, align 8
  %80 = load i64, i64* @YAW, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %78, i32* %81, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @PERS_TEAM, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TEAM_BLUE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %64
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 1, i32 3), align 4
  store i32 %92, i32* %14, align 4
  br label %95

93:                                               ; preds = %64
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 1, i32 2), align 8
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @CG_Draw3DModel(i32 %98, i64 %101, i32 35, i32 35, i32 %102, i32 0, i32* %103, i32* %104)
  br label %131

106:                                              ; preds = %61, %58
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* @PERS_TEAM, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TEAM_BLUE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 1, i32 1), align 4
  store i32 %117, i32* %14, align 4
  br label %120

118:                                              ; preds = %106
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 1, i32 0), align 8
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 3
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 16
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @CG_DrawPic(i32 %124, i64 %128, i32 20, i32 20, i32 %129)
  br label %131

131:                                              ; preds = %120, %95
  br label %132

132:                                              ; preds = %23, %131, %28
  ret void
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @CG_Text_Width(i8*, float, i32) #1

declare dso_local i32 @CG_Text_Paint(i32, i64, float, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @CG_Draw3DModel(i32, i64, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @CG_DrawPic(i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
