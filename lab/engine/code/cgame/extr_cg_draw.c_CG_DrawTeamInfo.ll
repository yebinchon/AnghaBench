; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawTeamInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawTeamInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i64*, i32*, %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { double }
%struct.TYPE_22__ = type { double }
%struct.TYPE_23__ = type { double }
%struct.TYPE_24__ = type { double }
%struct.TYPE_13__ = type { double }
%struct.TYPE_14__ = type { double }

@cg_teamChatHeight = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@TEAMCHAT_HEIGHT = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@cg = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@cg_teamChatTime = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@TINYCHAR_HEIGHT = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i64 0, align 8
@cg_redteam_r = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@cg_redteam_g = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@cg_redteam_b = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@cg_blueteam_r = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@cg_blueteam_g = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@cg_blueteam_b = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@TINYCHAR_WIDTH = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@CHATLOC_X = common dso_local global i64 0, align 8
@CHATLOC_Y = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawTeamInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawTeamInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_teamChatHeight, i32 0, i32 0), align 4
  %6 = load i32, i32* @TEAMCHAT_HEIGHT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_teamChatHeight, i32 0, i32 0), align 4
  store i32 %9, i32* %4, align 4
  br label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @TEAMCHAT_HEIGHT, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %147

16:                                               ; preds = %12
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 0), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 1), align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %147

20:                                               ; preds = %16
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %22 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 2), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 0), align 8
  %24 = load i32, i32* %4, align 4
  %25 = srem i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %22, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %21, %28
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_teamChatTime, i32 0, i32 0), align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 0), align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 0), align 8
  br label %35

35:                                               ; preds = %32, %20
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 1), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 0), align 8
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %1, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 5), align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TEAM_RED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %35
  %49 = load double, double* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_redteam_r, i32 0, i32 0), align 8
  %50 = fdiv double %49, 2.550000e+02
  %51 = load double*, double** %3, align 8
  %52 = getelementptr inbounds double, double* %51, i64 0
  store double %50, double* %52, align 8
  %53 = load double, double* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cg_redteam_g, i32 0, i32 0), align 8
  %54 = fdiv double %53, 2.550000e+02
  %55 = load double*, double** %3, align 8
  %56 = getelementptr inbounds double, double* %55, i64 1
  store double %54, double* %56, align 8
  %57 = load double, double* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cg_redteam_b, i32 0, i32 0), align 8
  %58 = fdiv double %57, 2.550000e+02
  %59 = load double*, double** %3, align 8
  %60 = getelementptr inbounds double, double* %59, i64 2
  store double %58, double* %60, align 8
  %61 = load double*, double** %3, align 8
  %62 = getelementptr inbounds double, double* %61, i64 3
  store double 0x3FD51EB860000000, double* %62, align 8
  br label %96

63:                                               ; preds = %35
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 5), align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TEAM_BLUE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %63
  %72 = load double, double* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @cg_blueteam_r, i32 0, i32 0), align 8
  %73 = fdiv double %72, 2.550000e+02
  %74 = load double*, double** %3, align 8
  %75 = getelementptr inbounds double, double* %74, i64 0
  store double %73, double* %75, align 8
  %76 = load double, double* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_blueteam_g, i32 0, i32 0), align 8
  %77 = fdiv double %76, 2.550000e+02
  %78 = load double*, double** %3, align 8
  %79 = getelementptr inbounds double, double* %78, i64 1
  store double %77, double* %79, align 8
  %80 = load double, double* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_blueteam_b, i32 0, i32 0), align 8
  %81 = fdiv double %80, 2.550000e+02
  %82 = load double*, double** %3, align 8
  %83 = getelementptr inbounds double, double* %82, i64 2
  store double %81, double* %83, align 8
  %84 = load double*, double** %3, align 8
  %85 = getelementptr inbounds double, double* %84, i64 3
  store double 0x3FD51EB860000000, double* %85, align 8
  br label %95

86:                                               ; preds = %63
  %87 = load double*, double** %3, align 8
  %88 = getelementptr inbounds double, double* %87, i64 0
  store double 0.000000e+00, double* %88, align 8
  %89 = load double*, double** %3, align 8
  %90 = getelementptr inbounds double, double* %89, i64 1
  store double 1.000000e+00, double* %90, align 8
  %91 = load double*, double** %3, align 8
  %92 = getelementptr inbounds double, double* %91, i64 2
  store double 0.000000e+00, double* %92, align 8
  %93 = load double*, double** %3, align 8
  %94 = getelementptr inbounds double, double* %93, i64 3
  store double 0x3FD51EB860000000, double* %94, align 8
  br label %95

95:                                               ; preds = %86, %71
  br label %96

96:                                               ; preds = %95, %48
  %97 = load double*, double** %3, align 8
  %98 = call i32 @trap_R_SetColor(double* %97)
  %99 = load i32, i32* %1, align 4
  %100 = sub nsw i32 420, %99
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %1, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 4, i32 0), align 8
  %104 = call i32 @CG_DrawPic(i64 0, i64 %101, i32 640, i32 %102, i32 %103)
  %105 = call i32 @trap_R_SetColor(double* null)
  %106 = load double*, double** %3, align 8
  %107 = getelementptr inbounds double, double* %106, i64 2
  store double 1.000000e+00, double* %107, align 8
  %108 = load double*, double** %3, align 8
  %109 = getelementptr inbounds double, double* %108, i64 1
  store double 1.000000e+00, double* %109, align 8
  %110 = load double*, double** %3, align 8
  %111 = getelementptr inbounds double, double* %110, i64 0
  store double 1.000000e+00, double* %111, align 8
  %112 = load double*, double** %3, align 8
  %113 = getelementptr inbounds double, double* %112, i64 3
  store double 1.000000e+00, double* %113, align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 1), align 4
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %143, %96
  %117 = load i32, i32* %2, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 0), align 8
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %146

120:                                              ; preds = %116
  %121 = load i64, i64* @TINYCHAR_WIDTH, align 8
  %122 = add nsw i64 0, %121
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 1), align 4
  %124 = load i32, i32* %2, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sub nsw i32 420, %127
  %129 = sext i32 %128 to i64
  %130 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 3), align 8
  %131 = load i32, i32* %2, align 4
  %132 = load i32, i32* %4, align 4
  %133 = srem i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load double*, double** %3, align 8
  %138 = load i32, i32* @qfalse, align 4
  %139 = load i32, i32* @qfalse, align 4
  %140 = load i64, i64* @TINYCHAR_WIDTH, align 8
  %141 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %142 = call i32 @CG_DrawStringExt(i64 %122, i64 %129, i32 %136, double* %137, i32 %138, i32 %139, i64 %140, i32 %141, i32 0)
  br label %143

143:                                              ; preds = %120
  %144 = load i32, i32* %2, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %2, align 4
  br label %116

146:                                              ; preds = %116
  br label %147

147:                                              ; preds = %15, %146, %16
  ret void
}

declare dso_local i32 @trap_R_SetColor(double*) #1

declare dso_local i32 @CG_DrawPic(i64, i64, i32, i32, i32) #1

declare dso_local i32 @CG_DrawStringExt(i64, i64, i32, double*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
