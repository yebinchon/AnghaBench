; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RB_ExecuteRenderCommands.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RB_ExecuteRenderCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (...)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ri = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@backEnd = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_ExecuteRenderCommands(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %6 = call i32 (...) %5()
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %1, %61
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @PADP(i8* %8, i32 8)
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %50 [
    i32 131, label %13
    i32 130, label %16
    i32 136, label %19
    i32 137, label %22
    i32 129, label %25
    i32 132, label %28
    i32 128, label %31
    i32 138, label %34
    i32 139, label %37
    i32 140, label %40
    i32 133, label %43
    i32 134, label %46
    i32 135, label %49
  ]

13:                                               ; preds = %7
  %14 = load i8*, i8** %2, align 8
  %15 = call i8* @RB_SetColor(i8* %14)
  store i8* %15, i8** %2, align 8
  br label %61

16:                                               ; preds = %7
  %17 = load i8*, i8** %2, align 8
  %18 = call i8* @RB_StretchPic(i8* %17)
  store i8* %18, i8** %2, align 8
  br label %61

19:                                               ; preds = %7
  %20 = load i8*, i8** %2, align 8
  %21 = call i8* @RB_DrawSurfs(i8* %20)
  store i8* %21, i8** %2, align 8
  br label %61

22:                                               ; preds = %7
  %23 = load i8*, i8** %2, align 8
  %24 = call i8* @RB_DrawBuffer(i8* %23)
  store i8* %24, i8** %2, align 8
  br label %61

25:                                               ; preds = %7
  %26 = load i8*, i8** %2, align 8
  %27 = call i8* @RB_SwapBuffers(i8* %26)
  store i8* %27, i8** %2, align 8
  br label %61

28:                                               ; preds = %7
  %29 = load i8*, i8** %2, align 8
  %30 = call i8* @RB_TakeScreenshotCmd(i8* %29)
  store i8* %30, i8** %2, align 8
  br label %61

31:                                               ; preds = %7
  %32 = load i8*, i8** %2, align 8
  %33 = call i8* @RB_TakeVideoFrameCmd(i8* %32)
  store i8* %33, i8** %2, align 8
  br label %61

34:                                               ; preds = %7
  %35 = load i8*, i8** %2, align 8
  %36 = call i8* @RB_ColorMask(i8* %35)
  store i8* %36, i8** %2, align 8
  br label %61

37:                                               ; preds = %7
  %38 = load i8*, i8** %2, align 8
  %39 = call i8* @RB_ClearDepth(i8* %38)
  store i8* %39, i8** %2, align 8
  br label %61

40:                                               ; preds = %7
  %41 = load i8*, i8** %2, align 8
  %42 = call i8* @RB_CapShadowMap(i8* %41)
  store i8* %42, i8** %2, align 8
  br label %61

43:                                               ; preds = %7
  %44 = load i8*, i8** %2, align 8
  %45 = call i8* @RB_PostProcess(i8* %44)
  store i8* %45, i8** %2, align 8
  br label %61

46:                                               ; preds = %7
  %47 = load i8*, i8** %2, align 8
  %48 = call i8* @RB_ExportCubemaps(i8* %47)
  store i8* %48, i8** %2, align 8
  br label %61

49:                                               ; preds = %7
  br label %50

50:                                               ; preds = %7, %49
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tess, i32 0, i32 0), align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @RB_EndSurface()
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %57 = call i32 (...) %56()
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0, i32 0), align 4
  ret void

61:                                               ; preds = %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13
  br label %7
}

declare dso_local i8* @PADP(i8*, i32) #1

declare dso_local i8* @RB_SetColor(i8*) #1

declare dso_local i8* @RB_StretchPic(i8*) #1

declare dso_local i8* @RB_DrawSurfs(i8*) #1

declare dso_local i8* @RB_DrawBuffer(i8*) #1

declare dso_local i8* @RB_SwapBuffers(i8*) #1

declare dso_local i8* @RB_TakeScreenshotCmd(i8*) #1

declare dso_local i8* @RB_TakeVideoFrameCmd(i8*) #1

declare dso_local i8* @RB_ColorMask(i8*) #1

declare dso_local i8* @RB_ClearDepth(i8*) #1

declare dso_local i8* @RB_CapShadowMap(i8*) #1

declare dso_local i8* @RB_PostProcess(i8*) #1

declare dso_local i8* @RB_ExportCubemaps(i8*) #1

declare dso_local i32 @RB_EndSurface(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
