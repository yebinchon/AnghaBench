; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_String_Report.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_String_Report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Memory/String Pool Info\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"----------------\0A\00", align 1
@strPoolIndex = common dso_local global float 0.000000e+00, align 4
@STRING_POOL_SIZE = common dso_local global float 0.000000e+00, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"String Pool is %.1f%% full, %i bytes out of %i used.\0A\00", align 1
@allocPoint = common dso_local global float 0.000000e+00, align 4
@MEM_POOL_SIZE = common dso_local global float 0.000000e+00, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Memory Pool is %.1f%% full, %i bytes out of %i used.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @String_Report() #0 {
  %1 = alloca float, align 4
  %2 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %4 = load float, float* @strPoolIndex, align 4
  store float %4, float* %1, align 4
  %5 = load float, float* @STRING_POOL_SIZE, align 4
  %6 = load float, float* %1, align 4
  %7 = fdiv float %6, %5
  store float %7, float* %1, align 4
  %8 = load float, float* %1, align 4
  %9 = fmul float %8, 1.000000e+02
  store float %9, float* %1, align 4
  %10 = load float, float* %1, align 4
  %11 = fpext float %10 to double
  %12 = load float, float* @strPoolIndex, align 4
  %13 = fpext float %12 to double
  %14 = load float, float* @STRING_POOL_SIZE, align 4
  %15 = fpext float %14 to double
  %16 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), double %11, double %13, double %15)
  %17 = load float, float* @allocPoint, align 4
  store float %17, float* %1, align 4
  %18 = load float, float* @MEM_POOL_SIZE, align 4
  %19 = load float, float* %1, align 4
  %20 = fdiv float %19, %18
  store float %20, float* %1, align 4
  %21 = load float, float* %1, align 4
  %22 = fmul float %21, 1.000000e+02
  store float %22, float* %1, align 4
  %23 = load float, float* %1, align 4
  %24 = fpext float %23 to double
  %25 = load float, float* @allocPoint, align 4
  %26 = fpext float %25 to double
  %27 = load float, float* @MEM_POOL_SIZE, align 4
  %28 = fpext float %27 to double
  %29 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), double %24, double %26, double %28)
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
