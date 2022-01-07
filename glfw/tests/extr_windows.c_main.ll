; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_windows.c_main.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_windows.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bfh\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@error_callback = common dso_local global i32 0, align 4
@GLFW_DECORATED = common dso_local global i32 0, align 4
@GLFW_VISIBLE = common dso_local global i32 0, align 4
@GLFW_FOCUS_ON_SHOW = common dso_local global i32 0, align 4
@titles = common dso_local global i32* null, align 8
@key_callback = common dso_local global i32 0, align 4
@glfwGetProcAddress = common dso_local global i32 0, align 4
@colors = common dso_local global %struct.TYPE_2__* null, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32*], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %38, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %7, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %34 [
    i32 98, label %26
    i32 102, label %28
    i32 104, label %30
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %27, i32* %8, align 4
  br label %38

28:                                               ; preds = %24
  %29 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %29, i32* %9, align 4
  br label %38

30:                                               ; preds = %24
  %31 = call i32 (...) @usage()
  %32 = load i32, i32* @EXIT_SUCCESS, align 4
  %33 = call i32 @exit(i32 %32) #3
  unreachable

34:                                               ; preds = %24
  %35 = call i32 (...) @usage()
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  %37 = call i32 @exit(i32 %36) #3
  unreachable

38:                                               ; preds = %28, %26
  br label %19

39:                                               ; preds = %19
  %40 = load i32, i32* @error_callback, align 4
  %41 = call i32 @glfwSetErrorCallback(i32 %40)
  %42 = call i32 (...) @glfwInit()
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EXIT_FAILURE, align 4
  %46 = call i32 @exit(i32 %45) #3
  unreachable

47:                                               ; preds = %39
  %48 = load i32, i32* @GLFW_DECORATED, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @glfwWindowHint(i32 %48, i32 %49)
  %51 = load i32, i32* @GLFW_VISIBLE, align 4
  %52 = load i32, i32* @GLFW_FALSE, align 4
  %53 = call i32 @glfwWindowHint(i32 %51, i32 %52)
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %142, %47
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %145

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @GLFW_FOCUS_ON_SHOW, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @glfwWindowHint(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32*, i32** @titles, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @glfwCreateWindow(i32 200, i32 200, i32 %69, i32* null, i32* null)
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %72
  store i32* %70, i32** %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %64
  %80 = call i32 (...) @glfwTerminate()
  %81 = load i32, i32* @EXIT_FAILURE, align 4
  %82 = call i32 @exit(i32 %81) #3
  unreachable

83:                                               ; preds = %64
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @key_callback, align 4
  %89 = call i32 @glfwSetKeyCallback(i32* %87, i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @glfwMakeContextCurrent(i32* %93)
  %95 = load i32, i32* @glfwGetProcAddress, align 4
  %96 = call i32 @gladLoadGL(i32 %95)
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @colors, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @colors, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @colors, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @glClearColor(i32 %102, i32 %108, i32 %114, float 1.000000e+00)
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @glfwGetWindowFrameSize(i32* %119, i32* %12, i32* %13, i32* %14, i32* %15)
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, 1
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 200, %127
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %128, %129
  %131 = mul nsw i32 %126, %130
  %132 = add nsw i32 100, %131
  %133 = load i32, i32* %6, align 4
  %134 = ashr i32 %133, 1
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 200, %135
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %136, %137
  %139 = mul nsw i32 %134, %138
  %140 = add nsw i32 100, %139
  %141 = call i32 @glfwSetWindowPos(i32* %124, i32 %132, i32 %140)
  br label %142

142:                                              ; preds = %83
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %54

145:                                              ; preds = %54
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %155, %145
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 4
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @glfwShowWindow(i32* %153)
  br label %155

155:                                              ; preds = %149
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %146

158:                                              ; preds = %146
  br label %159

159:                                              ; preds = %191, %158
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %193

162:                                              ; preds = %159
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %188, %162
  %164 = load i32, i32* %6, align 4
  %165 = icmp slt i32 %164, 4
  br i1 %165, label %166, label %191

166:                                              ; preds = %163
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @glfwMakeContextCurrent(i32* %170)
  %172 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %173 = call i32 @glClear(i32 %172)
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @glfwSwapBuffers(i32* %177)
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = call i64 @glfwWindowShouldClose(i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %166
  %186 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %185, %166
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %6, align 4
  br label %163

191:                                              ; preds = %163
  %192 = call i32 (...) @glfwWaitEvents()
  br label %159

193:                                              ; preds = %159
  %194 = call i32 (...) @glfwTerminate()
  %195 = load i32, i32* @EXIT_SUCCESS, align 4
  %196 = call i32 @exit(i32 %195) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGL(i32) #1

declare dso_local i32 @glClearColor(i32, i32, i32, float) #1

declare dso_local i32 @glfwGetWindowFrameSize(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @glfwSetWindowPos(i32*, i32, i32) #1

declare dso_local i32 @glfwShowWindow(i32*) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i64 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glfwWaitEvents(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
