; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_ShowResponseHead.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_ShowResponseHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"voiceMenu\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"cl_conXOffset\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@cg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_ShowResponseHead() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float 7.200000e+01, float* %1, align 4
  store float 0.000000e+00, float* %4, align 4
  store float 0.000000e+00, float* %3, align 4
  store float 0.000000e+00, float* %2, align 4
  %5 = call i32 @CG_AdjustFrom640(float* %1, float* %2, float* %3, float* %4)
  %6 = call i32 @Menus_OpenByName(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = load float, float* %1, align 4
  %8 = fptosi float %7 to i32
  %9 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %8)
  %10 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cg, i32 0, i32 0), align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cg, i32 0, i32 1), align 4
  ret void
}

declare dso_local i32 @CG_AdjustFrom640(float*, float*, float*, float*) #1

declare dso_local i32 @Menus_OpenByName(i8*) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #1

declare dso_local i32 @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
