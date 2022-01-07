; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_win32_window.c_updateFramebufferTransparency.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_win32_window.c_updateFramebufferTransparency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@DWM_BB_ENABLE = common dso_local global i32 0, align 4
@DWM_BB_BLURREGION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_LAYERED = common dso_local global i32 0, align 4
@LWA_COLORKEY = common dso_local global i32 0, align 4
@RDW_ERASE = common dso_local global i32 0, align 4
@RDW_INVALIDATE = common dso_local global i32 0, align 4
@RDW_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @updateFramebufferTransparency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateFramebufferTransparency(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = call i32 (...) @IsWindowsVistaOrGreater()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %91

11:                                               ; preds = %1
  %12 = call i32 @DwmIsCompositionEnabled(i64* %3)
  %13 = call i64 @SUCCEEDED(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %15
  %19 = call i32 @CreateRectRgn(i32 0, i32 0, i32 -1, i32 -1)
  store i32 %19, i32* %4, align 4
  %20 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 16, i1 false)
  %21 = load i32, i32* @DWM_BB_ENABLE, align 4
  %22 = load i32, i32* @DWM_BB_BLURREGION, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @TRUE, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DwmEnableBlurBehindWindow(i32 %32, %struct.TYPE_8__* %5)
  %34 = call i64 @SUCCEEDED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %18
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GWL_EXSTYLE, align 4
  %42 = call i32 @GetWindowLongW(i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @WS_EX_LAYERED, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GWL_EXSTYLE, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @SetWindowLongW(i32 %49, i32 %50, i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @RGB(i32 255, i32 0, i32 255)
  %58 = load i32, i32* @LWA_COLORKEY, align 4
  %59 = call i32 @SetLayeredWindowAttributes(i32 %56, i32 %57, i32 255, i32 %58)
  br label %60

60:                                               ; preds = %36, %18
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @DeleteObject(i32 %61)
  br label %91

63:                                               ; preds = %15, %11
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GWL_EXSTYLE, align 4
  %69 = call i32 @GetWindowLongW(i32 %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @WS_EX_LAYERED, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @GWL_EXSTYLE, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @SetWindowLongW(i32 %77, i32 %78, i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RDW_ERASE, align 4
  %86 = load i32, i32* @RDW_INVALIDATE, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @RDW_FRAME, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @RedrawWindow(i32 %84, i32* null, i32* null, i32 %89)
  br label %91

91:                                               ; preds = %10, %63, %60
  ret void
}

declare dso_local i32 @IsWindowsVistaOrGreater(...) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @DwmIsCompositionEnabled(i64*) #1

declare dso_local i32 @CreateRectRgn(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @DwmEnableBlurBehindWindow(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @SetWindowLongW(i32, i32, i32) #1

declare dso_local i32 @SetLayeredWindowAttributes(i32, i32, i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @RedrawWindow(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
