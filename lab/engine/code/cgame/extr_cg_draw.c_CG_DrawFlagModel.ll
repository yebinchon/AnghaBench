; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawFlagModel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawFlagModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { double }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@cg_draw3dIcons = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@cgs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@cg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@YAW = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i32 0, align 4
@TEAM_FREE = common dso_local global i32 0, align 4
@cg_drawIcons = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PW_REDFLAG = common dso_local global i32 0, align 4
@PW_BLUEFLAG = common dso_local global i32 0, align 4
@PW_NEUTRALFLAG = common dso_local global i32 0, align 4
@cg_items = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawFlagModel(float %0, float %1, float %2, float %3, i32 %4, i32 %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %105, label %23

23:                                               ; preds = %6
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_draw3dIcons, i32 0, i32 0), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %105

26:                                               ; preds = %23
  %27 = load double*, double** %16, align 8
  %28 = call i32 @VectorClear(double* %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0, i32 2), align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load double*, double** %17, align 8
  %32 = load double*, double** %18, align 8
  %33 = call i32 @trap_R_ModelBounds(i32 %30, double* %31, double* %32)
  %34 = load double*, double** %17, align 8
  %35 = getelementptr inbounds double, double* %34, i64 2
  %36 = load double, double* %35, align 8
  %37 = load double*, double** %18, align 8
  %38 = getelementptr inbounds double, double* %37, i64 2
  %39 = load double, double* %38, align 8
  %40 = fadd double %36, %39
  %41 = fmul double -5.000000e-01, %40
  %42 = load double*, double** %15, align 8
  %43 = getelementptr inbounds double, double* %42, i64 2
  store double %41, double* %43, align 8
  %44 = load double*, double** %17, align 8
  %45 = getelementptr inbounds double, double* %44, i64 1
  %46 = load double, double* %45, align 8
  %47 = load double*, double** %18, align 8
  %48 = getelementptr inbounds double, double* %47, i64 1
  %49 = load double, double* %48, align 8
  %50 = fadd double %46, %49
  %51 = fmul double 5.000000e-01, %50
  %52 = load double*, double** %15, align 8
  %53 = getelementptr inbounds double, double* %52, i64 1
  store double %51, double* %53, align 8
  %54 = load double*, double** %18, align 8
  %55 = getelementptr inbounds double, double* %54, i64 2
  %56 = load double, double* %55, align 8
  %57 = load double*, double** %17, align 8
  %58 = getelementptr inbounds double, double* %57, i64 2
  %59 = load double, double* %58, align 8
  %60 = fsub double %56, %59
  %61 = fmul double 5.000000e-01, %60
  %62 = fptrunc double %61 to float
  store float %62, float* %14, align 4
  %63 = load float, float* %14, align 4
  %64 = fpext float %63 to double
  %65 = fdiv double %64, 2.680000e-01
  %66 = load double*, double** %15, align 8
  %67 = getelementptr inbounds double, double* %66, i64 0
  store double %65, double* %67, align 8
  %68 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %69 = fdiv double %68, 2.000000e+03
  %70 = call i32 @sin(double %69)
  %71 = mul nsw i32 60, %70
  %72 = sitofp i32 %71 to double
  %73 = load double*, double** %16, align 8
  %74 = load i64, i64* @YAW, align 8
  %75 = getelementptr inbounds double, double* %73, i64 %74
  store double %72, double* %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @TEAM_RED, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %26
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0, i32 2), align 4
  store i32 %80, i32* %19, align 4
  br label %96

81:                                               ; preds = %26
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @TEAM_BLUE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0, i32 1), align 4
  store i32 %86, i32* %19, align 4
  br label %95

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @TEAM_FREE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0, i32 0), align 4
  store i32 %92, i32* %19, align 4
  br label %94

93:                                               ; preds = %87
  br label %149

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %94, %85
  br label %96

96:                                               ; preds = %95, %79
  %97 = load float, float* %7, align 4
  %98 = load float, float* %8, align 4
  %99 = load float, float* %9, align 4
  %100 = load float, float* %10, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load double*, double** %15, align 8
  %103 = load double*, double** %16, align 8
  %104 = call i32 @CG_Draw3DModel(float %97, float %98, float %99, float %100, i32 %101, i32 0, double* %102, double* %103)
  br label %149

105:                                              ; preds = %23, %6
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg_drawIcons, i32 0, i32 0), align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %148

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @TEAM_RED, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @PW_REDFLAG, align 4
  %114 = call i32* @BG_FindItemForPowerup(i32 %113)
  store i32* %114, i32** %20, align 8
  br label %132

115:                                              ; preds = %108
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @TEAM_BLUE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* @PW_BLUEFLAG, align 4
  %121 = call i32* @BG_FindItemForPowerup(i32 %120)
  store i32* %121, i32** %20, align 8
  br label %131

122:                                              ; preds = %115
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @TEAM_FREE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* @PW_NEUTRALFLAG, align 4
  %128 = call i32* @BG_FindItemForPowerup(i32 %127)
  store i32* %128, i32** %20, align 8
  br label %130

129:                                              ; preds = %122
  br label %149

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130, %119
  br label %132

132:                                              ; preds = %131, %112
  %133 = load i32*, i32** %20, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load float, float* %7, align 4
  %137 = load float, float* %8, align 4
  %138 = load float, float* %9, align 4
  %139 = load float, float* %10, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cg_items, align 8
  %141 = load i32*, i32** %20, align 8
  %142 = call i64 @ITEM_INDEX(i32* %141)
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @CG_DrawPic(float %136, float %137, float %138, float %139, i32 %145)
  br label %147

147:                                              ; preds = %135, %132
  br label %148

148:                                              ; preds = %147, %105
  br label %149

149:                                              ; preds = %93, %129, %148, %96
  ret void
}

declare dso_local i32 @VectorClear(double*) #1

declare dso_local i32 @trap_R_ModelBounds(i32, double*, double*) #1

declare dso_local i32 @sin(double) #1

declare dso_local i32 @CG_Draw3DModel(float, float, float, float, i32, i32, double*, double*) #1

declare dso_local i32* @BG_FindItemForPowerup(i32) #1

declare dso_local i32 @CG_DrawPic(float, float, float, float, i32) #1

declare dso_local i64 @ITEM_INDEX(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
