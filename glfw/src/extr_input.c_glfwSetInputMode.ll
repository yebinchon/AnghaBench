; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_input.c_glfwSetInputMode.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_input.c_glfwSetInputMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64*, i32, i64*, i32, i8*, i32, i32 }

@GLFW_CURSOR = common dso_local global i32 0, align 4
@GLFW_CURSOR_NORMAL = common dso_local global i32 0, align 4
@GLFW_CURSOR_HIDDEN = common dso_local global i32 0, align 4
@GLFW_CURSOR_DISABLED = common dso_local global i32 0, align 4
@GLFW_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid cursor mode 0x%08X\00", align 1
@GLFW_STICKY_KEYS = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i8* null, align 8
@GLFW_FALSE = common dso_local global i8* null, align 8
@GLFW_KEY_LAST = common dso_local global i32 0, align 4
@_GLFW_STICK = common dso_local global i64 0, align 8
@GLFW_RELEASE = common dso_local global i8* null, align 8
@GLFW_STICKY_MOUSE_BUTTONS = common dso_local global i32 0, align 4
@GLFW_MOUSE_BUTTON_LAST = common dso_local global i32 0, align 4
@GLFW_LOCK_KEY_MODS = common dso_local global i32 0, align 4
@GLFW_RAW_MOUSE_MOTION = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Raw mouse motion is not supported on this system\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid input mode 0x%08X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @glfwSetInputMode(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = call i32 (...) @_GLFW_REQUIRE_INIT()
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @GLFW_CURSOR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @GLFW_CURSOR_NORMAL, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @GLFW_CURSOR_HIDDEN, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GLFW_CURSOR_DISABLED, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %224

36:                                               ; preds = %28, %24, %20
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %224

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 7
  %52 = call i32 @_glfwPlatformGetCursorPos(%struct.TYPE_5__* %47, i32* %49, i32* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @_glfwPlatformSetCursorMode(%struct.TYPE_5__* %53, i32 %54)
  br label %224

56:                                               ; preds = %3
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @GLFW_STICKY_KEYS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %112

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i8*, i8** @GLFW_TRUE, align 8
  br label %67

65:                                               ; preds = %60
  %66 = load i8*, i8** @GLFW_FALSE, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i8* [ %64, %63 ], [ %66, %65 ]
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %6, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %224

76:                                               ; preds = %67
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %108, label %79

79:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %104, %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @GLFW_KEY_LAST, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %80
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @_GLFW_STICK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %84
  %95 = load i8*, i8** @GLFW_RELEASE, align 8
  %96 = ptrtoint i8* %95 to i64
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 %96, i64* %102, align 8
  br label %103

103:                                              ; preds = %94, %84
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %80

107:                                              ; preds = %80
  br label %108

108:                                              ; preds = %107, %76
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %223

112:                                              ; preds = %56
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @GLFW_STICKY_MOUSE_BUTTONS, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %168

116:                                              ; preds = %112
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i8*, i8** @GLFW_TRUE, align 8
  br label %123

121:                                              ; preds = %116
  %122 = load i8*, i8** @GLFW_FALSE, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i8* [ %120, %119 ], [ %122, %121 ]
  %125 = ptrtoint i8* %124 to i32
  store i32 %125, i32* %6, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %224

132:                                              ; preds = %123
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %164, label %135

135:                                              ; preds = %132
  store i32 0, i32* %9, align 4
  br label %136

136:                                              ; preds = %160, %135
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @GLFW_MOUSE_BUTTON_LAST, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %163

140:                                              ; preds = %136
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 4
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @_GLFW_STICK, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %140
  %151 = load i8*, i8** @GLFW_RELEASE, align 8
  %152 = ptrtoint i8* %151 to i64
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 4
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  store i64 %152, i64* %158, align 8
  br label %159

159:                                              ; preds = %150, %140
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %136

163:                                              ; preds = %136
  br label %164

164:                                              ; preds = %163, %132
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 8
  br label %222

168:                                              ; preds = %112
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @GLFW_LOCK_KEY_MODS, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %168
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i8*, i8** @GLFW_TRUE, align 8
  br label %179

177:                                              ; preds = %172
  %178 = load i8*, i8** @GLFW_FALSE, align 8
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i8* [ %176, %175 ], [ %178, %177 ]
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 6
  store i8* %180, i8** %182, align 8
  br label %221

183:                                              ; preds = %168
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* @GLFW_RAW_MOUSE_MOTION, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %216

187:                                              ; preds = %183
  %188 = call i32 (...) @_glfwPlatformRawMouseMotionSupported()
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %192 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %191, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %224

193:                                              ; preds = %187
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i8*, i8** @GLFW_TRUE, align 8
  br label %200

198:                                              ; preds = %193
  %199 = load i8*, i8** @GLFW_FALSE, align 8
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i8* [ %197, %196 ], [ %199, %198 ]
  %202 = ptrtoint i8* %201 to i32
  store i32 %202, i32* %6, align 4
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %224

209:                                              ; preds = %200
  %210 = load i32, i32* %6, align 4
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 5
  store i32 %210, i32* %212, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @_glfwPlatformSetRawMouseMotion(%struct.TYPE_5__* %213, i32 %214)
  br label %220

216:                                              ; preds = %183
  %217 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %218 = load i32, i32* %5, align 4
  %219 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %217, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %216, %209
  br label %221

221:                                              ; preds = %220, %179
  br label %222

222:                                              ; preds = %221, %164
  br label %223

223:                                              ; preds = %222, %108
  br label %224

224:                                              ; preds = %32, %42, %75, %131, %190, %208, %223, %43
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT(...) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i32 @_glfwPlatformGetCursorPos(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformSetCursorMode(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @_glfwPlatformRawMouseMotionSupported(...) #1

declare dso_local i32 @_glfwPlatformSetRawMouseMotion(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
