; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_monitor.c__glfwSetVideoModeX11.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_monitor.c__glfwSetVideoModeX11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i64, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_26__ = type { i64 }

@_glfw = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@None = common dso_local global i64 0, align 8
@CurrentTime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwSetVideoModeX11(%struct.TYPE_24__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 2, i32 1), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %132

16:                                               ; preds = %2
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %132, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @None, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @_glfwChooseVideoMode(%struct.TYPE_24__* %21, i32* %22)
  store i32* %23, i32** %7, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %25 = call i32 @_glfwPlatformGetVideoMode(%struct.TYPE_24__* %24, i32* %5)
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @_glfwCompareVideoModes(i32* %5, i32* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %132

30:                                               ; preds = %19
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 0), align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 1), align 4
  %33 = call i32* @XRRGetScreenResourcesCurrent(i32 %31, i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 0), align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_27__* @XRRGetCrtcInfo(i32 %34, i32* %35, i32 %39)
  store %struct.TYPE_27__* %40, %struct.TYPE_27__** %9, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 0), align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_25__* @XRRGetOutputInfo(i32 %41, i32* %42, i32 %46)
  store %struct.TYPE_25__* %47, %struct.TYPE_25__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %80, %30
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.TYPE_26__* @getModeInfo(i32* %55, i32 %62)
  store %struct.TYPE_26__* %63, %struct.TYPE_26__** %12, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %65 = call i32 @modeIsGood(%struct.TYPE_26__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %54
  br label %80

68:                                               ; preds = %54
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %71 = call i32 @vidmodeFromModeInfo(%struct.TYPE_26__* %69, %struct.TYPE_27__* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = call i64 @_glfwCompareVideoModes(i32* %72, i32* %13)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %6, align 8
  br label %83

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %67
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %48

83:                                               ; preds = %75, %48
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %125

86:                                               ; preds = %83
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @None, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  store i64 %96, i64* %99, align 8
  br label %100

100:                                              ; preds = %93, %86
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 0), align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CurrentTime, align 4
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %6, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @XRRSetCrtcConfig(i32 %101, i32* %102, i32 %106, i32 %107, i32 %110, i32 %113, i64 %114, i32 %117, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %100, %83
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %127 = call i32 @XRRFreeOutputInfo(%struct.TYPE_25__* %126)
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %129 = call i32 @XRRFreeCrtcInfo(%struct.TYPE_27__* %128)
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 @XRRFreeScreenResources(i32* %130)
  br label %132

132:                                              ; preds = %29, %125, %16, %2
  ret void
}

declare dso_local i32* @_glfwChooseVideoMode(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @_glfwPlatformGetVideoMode(%struct.TYPE_24__*, i32*) #1

declare dso_local i64 @_glfwCompareVideoModes(i32*, i32*) #1

declare dso_local i32* @XRRGetScreenResourcesCurrent(i32, i32) #1

declare dso_local %struct.TYPE_27__* @XRRGetCrtcInfo(i32, i32*, i32) #1

declare dso_local %struct.TYPE_25__* @XRRGetOutputInfo(i32, i32*, i32) #1

declare dso_local %struct.TYPE_26__* @getModeInfo(i32*, i32) #1

declare dso_local i32 @modeIsGood(%struct.TYPE_26__*) #1

declare dso_local i32 @vidmodeFromModeInfo(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @XRRSetCrtcConfig(i32, i32*, i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @XRRFreeOutputInfo(%struct.TYPE_25__*) #1

declare dso_local i32 @XRRFreeCrtcInfo(%struct.TYPE_27__*) #1

declare dso_local i32 @XRRFreeScreenResources(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
