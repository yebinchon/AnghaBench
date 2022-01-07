; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_glimp_common.c_GLimp_CommonPreInit.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_glimp_common.c_GLimp_CommonPreInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i8*, i32)* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@ri = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"r_sdlDriver\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CVAR_ROM = common dso_local global i32 0, align 4
@r_sdlDriver = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"r_allowResize\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@CVAR_LATCH = common dso_local global i32 0, align 4
@r_allowResize = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"r_centerWindow\00", align 1
@r_centerWindow = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"r_tvMode\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@r_tvMode = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"r_tvModeAspect\00", align 1
@r_tvModeAspect = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"r_tvConsoleMode\00", align 1
@r_tvConsoleMode = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"r_motionblur\00", align 1
@r_motionblur = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLimp_CommonPreInit() #0 {
  %1 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %2 = load i32, i32* @CVAR_ROM, align 4
  %3 = call i32 %1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  store i32 %3, i32* @r_sdlDriver, align 4
  %4 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %5 = load i32, i32* @CVAR_ARCHIVE, align 4
  %6 = load i32, i32* @CVAR_LATCH, align 4
  %7 = or i32 %5, %6
  %8 = call i32 %4(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  store i32 %8, i32* @r_allowResize, align 4
  %9 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %10 = load i32, i32* @CVAR_ARCHIVE, align 4
  %11 = load i32, i32* @CVAR_LATCH, align 4
  %12 = or i32 %10, %11
  %13 = call i32 %9(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  store i32 %13, i32* @r_centerWindow, align 4
  %14 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %15 = load i32, i32* @CVAR_LATCH, align 4
  %16 = load i32, i32* @CVAR_ARCHIVE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 %14(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %17)
  store i32 %18, i32* @r_tvMode, align 4
  %19 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %20 = load i32, i32* @CVAR_LATCH, align 4
  %21 = load i32, i32* @CVAR_ARCHIVE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 %19(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  store i32 %23, i32* @r_tvModeAspect, align 4
  %24 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %25 = load i32, i32* @CVAR_LATCH, align 4
  %26 = load i32, i32* @CVAR_ARCHIVE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 %24(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  store i32 %28, i32* @r_tvConsoleMode, align 4
  %29 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %30 = load i32, i32* @CVAR_ARCHIVE, align 4
  %31 = load i32, i32* @CVAR_LATCH, align 4
  %32 = or i32 %30, %31
  %33 = call i32 %29(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  store i32 %33, i32* @r_motionblur, align 4
  %34 = call i32 @R_GetModeInfo(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 4), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 3), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 2), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 1), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 0), i32 -1)
  ret void
}

declare dso_local i32 @R_GetModeInfo(i32*, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
