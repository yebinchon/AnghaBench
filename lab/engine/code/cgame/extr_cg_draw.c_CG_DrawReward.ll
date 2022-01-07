; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawReward.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawReward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i32, i32 }

@cg_drawRewards = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@cg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@REWARD_TIME = common dso_local global i32 0, align 4
@CHAN_ANNOUNCER = common dso_local global i32 0, align 4
@ICON_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawReward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawReward() #0 {
  %1 = alloca float*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [32 x i8], align 16
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cg_drawRewards, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %154

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 4), align 8
  %12 = load i32, i32* @REWARD_TIME, align 4
  %13 = call float* @CG_FadeColor(i32 %11, i32 %12)
  store float* %13, float** %1, align 8
  %14 = load float*, float** %1, align 8
  %15 = icmp ne float* %14, null
  br i1 %15, label %72, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 0), align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %70

19:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %55, %19
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 0), align 8
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %20
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 3), align 8
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 3), align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 2), align 8
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 2), align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 1), align 8
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 1), align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %24
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %20

58:                                               ; preds = %20
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 5), align 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 4), align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 0), align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 0), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 4), align 8
  %63 = load i32, i32* @REWARD_TIME, align 4
  %64 = call float* @CG_FadeColor(i32 %62, i32 %63)
  store float* %64, float** %1, align 8
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 3), align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %69 = call i32 @trap_S_StartLocalSound(i32 %67, i32 %68)
  br label %71

70:                                               ; preds = %16
  br label %154

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %10
  %73 = load float*, float** %1, align 8
  %74 = call i32 @trap_R_SetColor(float* %73)
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 1), align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %77, 10
  br i1 %78, label %79, label %119

79:                                               ; preds = %72
  store float 5.600000e+01, float* %5, align 4
  %80 = load i32, i32* @ICON_SIZE, align 4
  %81 = sdiv i32 %80, 2
  %82 = sub nsw i32 320, %81
  %83 = sitofp i32 %82 to float
  store float %83, float* %4, align 4
  %84 = load float, float* %4, align 4
  %85 = load float, float* %5, align 4
  %86 = load i32, i32* @ICON_SIZE, align 4
  %87 = sub nsw i32 %86, 4
  %88 = load i32, i32* @ICON_SIZE, align 4
  %89 = sub nsw i32 %88, 4
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 2), align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @CG_DrawPic(float %84, float %85, i32 %87, i32 %89, i32 %92)
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %95 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 1), align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @Com_sprintf(i8* %94, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @SCREEN_WIDTH, align 4
  %100 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %102 = call i32 @CG_DrawStrlen(i8* %101)
  %103 = mul nsw i32 %100, %102
  %104 = sub nsw i32 %99, %103
  %105 = sdiv i32 %104, 2
  %106 = sitofp i32 %105 to float
  store float %106, float* %4, align 4
  %107 = load float, float* %4, align 4
  %108 = load float, float* %5, align 4
  %109 = load i32, i32* @ICON_SIZE, align 4
  %110 = sitofp i32 %109 to float
  %111 = fadd float %108, %110
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %113 = load float*, float** %1, align 8
  %114 = load i32, i32* @qfalse, align 4
  %115 = load i32, i32* @qtrue, align 4
  %116 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %117 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %118 = call i32 @CG_DrawStringExt(float %107, float %111, i8* %112, float* %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 0)
  br label %152

119:                                              ; preds = %72
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 1), align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %3, align 4
  store float 5.600000e+01, float* %5, align 4
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @ICON_SIZE, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sdiv i32 %125, 2
  %127 = sub nsw i32 320, %126
  %128 = sitofp i32 %127 to float
  store float %128, float* %4, align 4
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %148, %119
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* %3, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %129
  %134 = load float, float* %4, align 4
  %135 = load float, float* %5, align 4
  %136 = load i32, i32* @ICON_SIZE, align 4
  %137 = sub nsw i32 %136, 4
  %138 = load i32, i32* @ICON_SIZE, align 4
  %139 = sub nsw i32 %138, 4
  %140 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 2), align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @CG_DrawPic(float %134, float %135, i32 %137, i32 %139, i32 %142)
  %144 = load i32, i32* @ICON_SIZE, align 4
  %145 = sitofp i32 %144 to float
  %146 = load float, float* %4, align 4
  %147 = fadd float %146, %145
  store float %147, float* %4, align 4
  br label %148

148:                                              ; preds = %133
  %149 = load i32, i32* %2, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %2, align 4
  br label %129

151:                                              ; preds = %129
  br label %152

152:                                              ; preds = %151, %79
  %153 = call i32 @trap_R_SetColor(float* null)
  br label %154

154:                                              ; preds = %152, %70, %9
  ret void
}

declare dso_local float* @CG_FadeColor(i32, i32) #1

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #1

declare dso_local i32 @trap_R_SetColor(float*) #1

declare dso_local i32 @CG_DrawPic(float, float, i32, i32, i32) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @CG_DrawStrlen(i8*) #1

declare dso_local i32 @CG_DrawStringExt(float, float, i8*, float*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
