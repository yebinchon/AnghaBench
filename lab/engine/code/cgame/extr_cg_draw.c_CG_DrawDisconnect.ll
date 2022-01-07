; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawDisconnect.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawDisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@CMD_BACKUP = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"Connection Interrupted\00", align 1
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"gfx/2d/net.tga\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawDisconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawDisconnect() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = call i32 (...) @trap_GetCurrentCmdNumber()
  %8 = load i32, i32* @CMD_BACKUP, align 4
  %9 = sub nsw i32 %7, %8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @trap_GetUserCmd(i32 %11, %struct.TYPE_8__* %4)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %14, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %0
  br label %46

26:                                               ; preds = %20
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @CG_DrawStrlen(i8* %27)
  %29 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sdiv i32 %31, 2
  %33 = sub nsw i32 320, %32
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @CG_DrawBigString(i32 %33, i32 100, i8* %34, float 1.000000e+00)
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %37 = ashr i64 %36, 9
  %38 = and i64 %37, 1
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %46

41:                                               ; preds = %26
  store float 5.920000e+02, float* %1, align 4
  store float 4.320000e+02, float* %2, align 4
  %42 = load float, float* %1, align 4
  %43 = load float, float* %2, align 4
  %44 = call i32 @trap_R_RegisterShader(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 @CG_DrawPic(float %42, float %43, i32 48, i32 48, i32 %44)
  br label %46

46:                                               ; preds = %41, %40, %25
  ret void
}

declare dso_local i32 @trap_GetCurrentCmdNumber(...) #1

declare dso_local i32 @trap_GetUserCmd(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @CG_DrawStrlen(i8*) #1

declare dso_local i32 @CG_DrawBigString(i32, i32, i8*, float) #1

declare dso_local i32 @CG_DrawPic(float, float, i32, i32, i32) #1

declare dso_local i32 @trap_R_RegisterShader(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
