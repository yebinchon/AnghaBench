; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_monitor.c__glfwPlatformSetGammaRamp.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_monitor.c__glfwPlatformSetGammaRamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64, i64, i64 }
%struct.TYPE_20__ = type { i32, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"X11: Gamma ramp size must match current ramp size\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"X11: Gamma ramp access not supported by server\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetGammaRamp(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3, i32 1), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %78

8:                                                ; preds = %2
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %78, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @XRRGetCrtcGammaSize(i32 %12, i32 %16)
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %24 = call i32 @_glfwInputError(i32 %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %104

25:                                               ; preds = %11
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_20__* @XRRAllocGamma(i32 %28)
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %5, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 2
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memcpy(i32 %32, i64 %35, i32 %41)
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 2
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memcpy(i32 %45, i64 %48, i32 %54)
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 2
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memcpy(i32 %58, i64 %61, i32 %67)
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = call i32 @XRRSetCrtcGamma(i32 %69, i32 %73, %struct.TYPE_20__* %74)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = call i32 @XRRFreeGamma(%struct.TYPE_20__* %76)
  br label %104

78:                                               ; preds = %8, %2
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i16*
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i16*
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i16*
  %99 = call i32 @XF86VidModeSetGammaRamp(i32 %82, i32 %83, i32 %86, i16* %90, i16* %94, i16* %98)
  br label %103

100:                                              ; preds = %78
  %101 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %102 = call i32 @_glfwInputError(i32 %101, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %81
  br label %104

104:                                              ; preds = %22, %103, %25
  ret void
}

declare dso_local i32 @XRRGetCrtcGammaSize(i32, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local %struct.TYPE_20__* @XRRAllocGamma(i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @XRRSetCrtcGamma(i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @XRRFreeGamma(%struct.TYPE_20__*) #1

declare dso_local i32 @XF86VidModeSetGammaRamp(i32, i32, i32, i16*, i16*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
