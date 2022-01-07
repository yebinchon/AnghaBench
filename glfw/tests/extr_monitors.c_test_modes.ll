; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_monitors.c_test_modes.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_monitors.c_test_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i32, i64 }

@GLFW_RED_BITS = common dso_local global i32 0, align 4
@GLFW_GREEN_BITS = common dso_local global i32 0, align 4
@GLFW_BLUE_BITS = common dso_local global i32 0, align 4
@GLFW_REFRESH_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Testing mode %u on monitor %s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Video Mode Test\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to enter mode %u: %s\0A\00", align 1
@framebuffer_size_callback = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
@glfwGetProcAddress = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"User terminated program\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@GL_RED_BITS = common dso_local global i32 0, align 4
@GL_GREEN_BITS = common dso_local global i32 0, align 4
@GL_BLUE_BITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"*** Color bit mismatch: (%i %i %i) instead of (%i %i %i)\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"*** Size mismatch: %ix%i instead of %ix%i\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Closing window\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_modes(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call %struct.TYPE_4__* @glfwGetVideoModes(i32* %9, i32* %4)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %174, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %177

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %7, align 8
  %20 = load i32, i32* @GLFW_RED_BITS, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @glfwWindowHint(i32 %20, i64 %23)
  %25 = load i32, i32* @GLFW_GREEN_BITS, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @glfwWindowHint(i32 %25, i64 %28)
  %30 = load i32, i32* @GLFW_BLUE_BITS, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @glfwWindowHint(i32 %30, i64 %33)
  %35 = load i32, i32* @GLFW_REFRESH_RATE, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @glfwWindowHint(i32 %35, i64 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = call i8* @glfwGetMonitorName(i32* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = call i8* @format_mode(%struct.TYPE_4__* %43)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %42, i8* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (...) @glfwGetPrimaryMonitor()
  %53 = call i32* @glfwCreateWindow(i32 %48, i64 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32* null)
  store i32* %53, i32** %5, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %15
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = call i8* @format_mode(%struct.TYPE_4__* %58)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %57, i8* %59)
  br label %174

61:                                               ; preds = %15
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @framebuffer_size_callback, align 4
  %64 = call i32 @glfwSetFramebufferSizeCallback(i32* %62, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @key_callback, align 4
  %67 = call i32 @glfwSetKeyCallback(i32* %65, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @glfwMakeContextCurrent(i32* %68)
  %70 = load i32, i32* @glfwGetProcAddress, align 4
  %71 = call i32 @gladLoadGL(i32 %70)
  %72 = call i32 @glfwSwapInterval(i32 1)
  %73 = call i32 @glfwSetTime(double 0.000000e+00)
  br label %74

74:                                               ; preds = %91, %61
  %75 = call double (...) @glfwGetTime()
  %76 = fcmp olt double %75, 5.000000e+00
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %79 = call i32 @glClear(i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @glfwSwapBuffers(i32* %80)
  %82 = call i32 (...) @glfwPollEvents()
  %83 = load i32*, i32** %5, align 8
  %84 = call i64 @glfwWindowShouldClose(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %77
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %88 = call i32 (...) @glfwTerminate()
  %89 = load i32, i32* @EXIT_SUCCESS, align 4
  %90 = call i32 @exit(i32 %89) #3
  unreachable

91:                                               ; preds = %77
  br label %74

92:                                               ; preds = %74
  %93 = load i32, i32* @GL_RED_BITS, align 4
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %95 = call i32 @glGetIntegerv(i32 %93, i64* %94)
  %96 = load i32, i32* @GL_GREEN_BITS, align 4
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %98 = call i32 @glGetIntegerv(i32 %96, i64* %97)
  %99 = load i32, i32* @GL_BLUE_BITS, align 4
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %101 = call i32 @glGetIntegerv(i32 %99, i64* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %105 = call i32 @glfwGetWindowSize(i32* %102, i32* %103, i64* %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %126, label %112

112:                                              ; preds = %92
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %126, label %119

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %119, %112, %92
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i64 %128, i64 %130, i64 %132, i64 %135, i64 %138, i64 %141)
  br label %143

143:                                              ; preds = %126, %119
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %145, %148
  br i1 %149, label %157, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %152, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %150, %143
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %159, i64 %161, i32 %164, i64 %167)
  br label %169

169:                                              ; preds = %157, %150
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %171 = load i32*, i32** %5, align 8
  %172 = call i32 @glfwDestroyWindow(i32* %171)
  store i32* null, i32** %5, align 8
  %173 = call i32 (...) @glfwPollEvents()
  br label %174

174:                                              ; preds = %169, %56
  %175 = load i32, i32* %3, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %3, align 4
  br label %11

177:                                              ; preds = %11
  ret void
}

declare dso_local %struct.TYPE_4__* @glfwGetVideoModes(i32*, i32*) #1

declare dso_local i32 @glfwWindowHint(i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @glfwGetMonitorName(i32*) #1

declare dso_local i8* @format_mode(%struct.TYPE_4__*) #1

declare dso_local i32* @glfwCreateWindow(i32, i64, i8*, i32, i32*) #1

declare dso_local i32 @glfwGetPrimaryMonitor(...) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32*, i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGL(i32) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i32 @glfwSetTime(double) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

declare dso_local i64 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glGetIntegerv(i32, i64*) #1

declare dso_local i32 @glfwGetWindowSize(i32*, i32*, i64*) #1

declare dso_local i32 @glfwDestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
