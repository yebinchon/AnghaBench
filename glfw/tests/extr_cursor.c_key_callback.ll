; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_cursor.c_key_callback.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_cursor.c_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@GLFW_PRESS = common dso_local global i32 0, align 4
@animate_cursor = common dso_local global i32 0, align 4
@GLFW_CURSOR = common dso_local global i32 0, align 4
@GLFW_CURSOR_DISABLED = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@GLFW_CURSOR_NORMAL = common dso_local global i32 0, align 4
@cursor_x = common dso_local global double 0.000000e+00, align 8
@cursor_y = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [24 x i8] c"(( cursor is normal ))\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"(( cursor is disabled ))\0A\00", align 1
@GLFW_CURSOR_HIDDEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"(( cursor is hidden ))\0A\00", align 1
@GLFW_RAW_MOUSE_MOTION = common dso_local global i32 0, align 4
@GLFW_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"(( raw input is disabled ))\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"(( raw input is enabled ))\0A\00", align 1
@swap_interval = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"(( swap interval: %i ))\0A\00", align 1
@wait_events = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"(( %sing for events ))\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@track_cursor = common dso_local global i32 0, align 4
@tracking_cursor = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"Query before set: %f %f (%+f %+f)\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Query after set: %f %f (%+f %+f)\0A\00", align 1
@standard_cursors = common dso_local global i32** null, align 8
@key_callback.x = internal global i32 0, align 4
@key_callback.y = internal global i32 0, align 4
@key_callback.width = internal global i32 0, align 4
@key_callback.height = internal global i32 0, align 4
@GLFW_MOD_ALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @key_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_callback(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @GLFW_PRESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %246

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %246 [
    i32 141, label %23
    i32 137, label %34
    i32 134, label %45
    i32 140, label %53
    i32 135, label %59
    i32 132, label %65
    i32 131, label %87
    i32 128, label %94
    i32 130, label %104
    i32 133, label %119
    i32 129, label %152
    i32 139, label %157
    i32 148, label %168
    i32 147, label %171
    i32 146, label %177
    i32 145, label %183
    i32 144, label %189
    i32 143, label %195
    i32 142, label %201
    i32 136, label %207
    i32 138, label %207
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @animate_cursor, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* @animate_cursor, align 4
  %28 = load i32, i32* @animate_cursor, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @glfwSetCursor(i32* %31, i32* null)
  br label %33

33:                                               ; preds = %30, %23
  br label %246

34:                                               ; preds = %21
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @GLFW_CURSOR, align 4
  %37 = call i32 @glfwGetInputMode(i32* %35, i32 %36)
  %38 = load i32, i32* @GLFW_CURSOR_DISABLED, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @GLFW_TRUE, align 4
  %43 = call i32 @glfwSetWindowShouldClose(i32* %41, i32 %42)
  br label %246

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %21, %44
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @GLFW_CURSOR, align 4
  %48 = load i32, i32* @GLFW_CURSOR_NORMAL, align 4
  %49 = call i32 @glfwSetInputMode(i32* %46, i32 %47, i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @glfwGetCursorPos(i32* %50, double* @cursor_x, double* @cursor_y)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %246

53:                                               ; preds = %21
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @GLFW_CURSOR, align 4
  %56 = load i32, i32* @GLFW_CURSOR_DISABLED, align 4
  %57 = call i32 @glfwSetInputMode(i32* %54, i32 %55, i32 %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %246

59:                                               ; preds = %21
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @GLFW_CURSOR, align 4
  %62 = load i32, i32* @GLFW_CURSOR_HIDDEN, align 4
  %63 = call i32 @glfwSetInputMode(i32* %60, i32 %61, i32 %62)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %246

65:                                               ; preds = %21
  %66 = call i32 (...) @glfwRawMouseMotionSupported()
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %246

69:                                               ; preds = %65
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @GLFW_RAW_MOUSE_MOTION, align 4
  %72 = call i32 @glfwGetInputMode(i32* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* @GLFW_RAW_MOUSE_MOTION, align 4
  %77 = load i32, i32* @GLFW_FALSE, align 4
  %78 = call i32 @glfwSetInputMode(i32* %75, i32 %76, i32 %77)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %86

80:                                               ; preds = %69
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @GLFW_RAW_MOUSE_MOTION, align 4
  %83 = load i32, i32* @GLFW_TRUE, align 4
  %84 = call i32 @glfwSetInputMode(i32* %81, i32 %82, i32 %83)
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %80, %74
  br label %246

87:                                               ; preds = %21
  %88 = load i32, i32* @swap_interval, align 4
  %89 = sub nsw i32 1, %88
  store i32 %89, i32* @swap_interval, align 4
  %90 = load i32, i32* @swap_interval, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @swap_interval, align 4
  %93 = call i32 @glfwSwapInterval(i32 %92)
  br label %246

94:                                               ; preds = %21
  %95 = load i32, i32* @wait_events, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  store i32 %98, i32* @wait_events, align 4
  %99 = load i32, i32* @wait_events, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %102)
  br label %246

104:                                              ; preds = %21
  %105 = load i32, i32* @track_cursor, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  store i32 %108, i32* @track_cursor, align 4
  %109 = load i32, i32* @track_cursor, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32*, i32** %6, align 8
  %113 = load i32*, i32** @tracking_cursor, align 8
  %114 = call i32 @glfwSetCursor(i32* %112, i32* %113)
  br label %118

115:                                              ; preds = %104
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @glfwSetCursor(i32* %116, i32* null)
  br label %118

118:                                              ; preds = %115, %111
  br label %246

119:                                              ; preds = %21
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @glfwGetCursorPos(i32* %120, double* %11, double* %12)
  %122 = load double, double* %11, align 8
  %123 = load double, double* %12, align 8
  %124 = load double, double* %11, align 8
  %125 = load double, double* @cursor_x, align 8
  %126 = fsub double %124, %125
  %127 = load double, double* %12, align 8
  %128 = load double, double* @cursor_y, align 8
  %129 = fsub double %127, %128
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), double %122, double %123, double %126, double %129)
  %131 = load double, double* %11, align 8
  store double %131, double* @cursor_x, align 8
  %132 = load double, double* %12, align 8
  store double %132, double* @cursor_y, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = load double, double* @cursor_x, align 8
  %135 = fptosi double %134 to i32
  %136 = load double, double* @cursor_y, align 8
  %137 = fptosi double %136 to i32
  %138 = call i32 @glfwSetCursorPos(i32* %133, i32 %135, i32 %137)
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @glfwGetCursorPos(i32* %139, double* %11, double* %12)
  %141 = load double, double* %11, align 8
  %142 = load double, double* %12, align 8
  %143 = load double, double* %11, align 8
  %144 = load double, double* @cursor_x, align 8
  %145 = fsub double %143, %144
  %146 = load double, double* %12, align 8
  %147 = load double, double* @cursor_y, align 8
  %148 = fsub double %146, %147
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), double %141, double %142, double %145, double %148)
  %150 = load double, double* %11, align 8
  store double %150, double* @cursor_x, align 8
  %151 = load double, double* %12, align 8
  store double %151, double* @cursor_y, align 8
  br label %246

152:                                              ; preds = %21
  %153 = load i32*, i32** %6, align 8
  %154 = call i32 @glfwSetCursorPos(i32* %153, i32 0, i32 0)
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @glfwGetCursorPos(i32* %155, double* @cursor_x, double* @cursor_y)
  br label %246

157:                                              ; preds = %21
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 @glfwGetWindowSize(i32* %158, i32* %13, i32* %14)
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sub nsw i32 %161, 1
  %163 = load i32, i32* %14, align 4
  %164 = sub nsw i32 %163, 1
  %165 = call i32 @glfwSetCursorPos(i32* %160, i32 %162, i32 %164)
  %166 = load i32*, i32** %6, align 8
  %167 = call i32 @glfwGetCursorPos(i32* %166, double* @cursor_x, double* @cursor_y)
  br label %246

168:                                              ; preds = %21
  %169 = load i32*, i32** %6, align 8
  %170 = call i32 @glfwSetCursor(i32* %169, i32* null)
  br label %246

171:                                              ; preds = %21
  %172 = load i32*, i32** %6, align 8
  %173 = load i32**, i32*** @standard_cursors, align 8
  %174 = getelementptr inbounds i32*, i32** %173, i64 0
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @glfwSetCursor(i32* %172, i32* %175)
  br label %246

177:                                              ; preds = %21
  %178 = load i32*, i32** %6, align 8
  %179 = load i32**, i32*** @standard_cursors, align 8
  %180 = getelementptr inbounds i32*, i32** %179, i64 1
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @glfwSetCursor(i32* %178, i32* %181)
  br label %246

183:                                              ; preds = %21
  %184 = load i32*, i32** %6, align 8
  %185 = load i32**, i32*** @standard_cursors, align 8
  %186 = getelementptr inbounds i32*, i32** %185, i64 2
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @glfwSetCursor(i32* %184, i32* %187)
  br label %246

189:                                              ; preds = %21
  %190 = load i32*, i32** %6, align 8
  %191 = load i32**, i32*** @standard_cursors, align 8
  %192 = getelementptr inbounds i32*, i32** %191, i64 3
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @glfwSetCursor(i32* %190, i32* %193)
  br label %246

195:                                              ; preds = %21
  %196 = load i32*, i32** %6, align 8
  %197 = load i32**, i32*** @standard_cursors, align 8
  %198 = getelementptr inbounds i32*, i32** %197, i64 4
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @glfwSetCursor(i32* %196, i32* %199)
  br label %246

201:                                              ; preds = %21
  %202 = load i32*, i32** %6, align 8
  %203 = load i32**, i32*** @standard_cursors, align 8
  %204 = getelementptr inbounds i32*, i32** %203, i64 5
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @glfwSetCursor(i32* %202, i32* %205)
  br label %246

207:                                              ; preds = %21, %21
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @GLFW_MOD_ALT, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  br label %246

212:                                              ; preds = %207
  %213 = load i32*, i32** %6, align 8
  %214 = call i32 @glfwGetWindowMonitor(i32* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %212
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* @key_callback.x, align 4
  %219 = load i32, i32* @key_callback.y, align 4
  %220 = load i32, i32* @key_callback.width, align 4
  %221 = load i32, i32* @key_callback.height, align 4
  %222 = call i32 @glfwSetWindowMonitor(i32* %217, i32* null, i32 %218, i32 %219, i32 %220, i32 %221, i32 0)
  br label %243

223:                                              ; preds = %212
  %224 = call i32* (...) @glfwGetPrimaryMonitor()
  store i32* %224, i32** %15, align 8
  %225 = load i32*, i32** %15, align 8
  %226 = call %struct.TYPE_3__* @glfwGetVideoMode(i32* %225)
  store %struct.TYPE_3__* %226, %struct.TYPE_3__** %16, align 8
  %227 = load i32*, i32** %6, align 8
  %228 = call i32 @glfwGetWindowPos(i32* %227, i32* @key_callback.x, i32* @key_callback.y)
  %229 = load i32*, i32** %6, align 8
  %230 = call i32 @glfwGetWindowSize(i32* %229, i32* @key_callback.width, i32* @key_callback.height)
  %231 = load i32*, i32** %6, align 8
  %232 = load i32*, i32** %15, align 8
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @glfwSetWindowMonitor(i32* %231, i32* %232, i32 0, i32 0, i32 %235, i32 %238, i32 %241)
  br label %243

243:                                              ; preds = %223, %216
  %244 = load i32*, i32** %6, align 8
  %245 = call i32 @glfwGetCursorPos(i32* %244, double* @cursor_x, double* @cursor_y)
  br label %246

246:                                              ; preds = %20, %211, %21, %243, %201, %195, %189, %183, %177, %171, %168, %157, %152, %119, %118, %94, %87, %86, %68, %59, %53, %45, %40, %33
  ret void
}

declare dso_local i32 @glfwSetCursor(i32*, i32*) #1

declare dso_local i32 @glfwGetInputMode(i32*, i32) #1

declare dso_local i32 @glfwSetWindowShouldClose(i32*, i32) #1

declare dso_local i32 @glfwSetInputMode(i32*, i32, i32) #1

declare dso_local i32 @glfwGetCursorPos(i32*, double*, double*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @glfwRawMouseMotionSupported(...) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i32 @glfwSetCursorPos(i32*, i32, i32) #1

declare dso_local i32 @glfwGetWindowSize(i32*, i32*, i32*) #1

declare dso_local i32 @glfwGetWindowMonitor(i32*) #1

declare dso_local i32 @glfwSetWindowMonitor(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local %struct.TYPE_3__* @glfwGetVideoMode(i32*) #1

declare dso_local i32 @glfwGetWindowPos(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
