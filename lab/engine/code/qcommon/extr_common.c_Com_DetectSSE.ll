; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_DetectSSE.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_DetectSSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CF_SSE = common dso_local global i32 0, align 4
@CF_SSE2 = common dso_local global i32 0, align 4
@qsnapvectorsse = common dso_local global i32 0, align 4
@Q_SnapVector = common dso_local global i32 0, align 4
@qsnapvectorx87 = common dso_local global i32 0, align 4
@qftolsse = common dso_local global i32 0, align 4
@Q_ftol = common dso_local global i32 0, align 4
@qvmftolsse = common dso_local global i32 0, align 4
@Q_VMftol = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SSE instruction set enabled\0A\00", align 1
@qftolx87 = common dso_local global i32 0, align 4
@qvmftolx87 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"SSE instruction set not available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Com_DetectSSE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Com_DetectSSE() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @Sys_GetProcessorFeatures()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @CF_SSE, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @CF_SSE2, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @qsnapvectorsse, align 4
  store i32 %13, i32* @Q_SnapVector, align 4
  br label %16

14:                                               ; preds = %7
  %15 = load i32, i32* @qsnapvectorx87, align 4
  store i32 %15, i32* @Q_SnapVector, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* @qftolsse, align 4
  store i32 %17, i32* @Q_ftol, align 4
  %18 = load i32, i32* @qvmftolsse, align 4
  store i32 %18, i32* @Q_VMftol, align 4
  %19 = call i32 @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %25

20:                                               ; preds = %0
  %21 = load i32, i32* @qftolx87, align 4
  store i32 %21, i32* @Q_ftol, align 4
  %22 = load i32, i32* @qvmftolx87, align 4
  store i32 %22, i32* @Q_VMftol, align 4
  %23 = load i32, i32* @qsnapvectorx87, align 4
  store i32 %23, i32* @Q_SnapVector, align 4
  %24 = call i32 @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @Sys_GetProcessorFeatures(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
