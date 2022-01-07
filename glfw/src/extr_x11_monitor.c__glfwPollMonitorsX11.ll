; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_monitor.c__glfwPollMonitorsX11.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_monitor.c__glfwPollMonitorsX11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_30__, i32 }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_28__, i32, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64, i64, i32 }
%struct.TYPE_32__ = type { i64, i64, float, float }
%struct.TYPE_33__ = type { i32, i64* }
%struct.TYPE_34__ = type { i64, i64, i32, i32, i8* }
%struct.TYPE_35__ = type { i64, float, float, i64, i64 }

@_glfw = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@RR_Connected = common dso_local global i64 0, align 8
@None = common dso_local global i64 0, align 8
@RR_Rotate_90 = common dso_local global i64 0, align 8
@RR_Rotate_270 = common dso_local global i64 0, align 8
@_GLFW_INSERT_FIRST = common dso_local global i32 0, align 4
@_GLFW_INSERT_LAST = common dso_local global i32 0, align 4
@GLFW_CONNECTED = common dso_local global i32 0, align 4
@GLFW_DISCONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Display\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPollMonitorsX11() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_31__**, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca %struct.TYPE_35__*, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 4, i32 1), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %315

20:                                               ; preds = %0
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 4, i32 0), align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %315, label %23

23:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  store %struct.TYPE_31__** null, %struct.TYPE_31__*** %3, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %4, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 3), align 8
  %26 = call %struct.TYPE_33__* @XRRGetScreenResourcesCurrent(i32 %24, i32 %25)
  store %struct.TYPE_33__* %26, %struct.TYPE_33__** %5, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 1), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 3), align 8
  %29 = call i64 @XRRGetOutputPrimary(i32 %27, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 2, i32 0), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 1), align 4
  %34 = call %struct.TYPE_32__* @XineramaQueryScreens(i32 %33, i32* %2)
  store %struct.TYPE_32__* %34, %struct.TYPE_32__** %4, align 8
  br label %35

35:                                               ; preds = %32, %23
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 0), align 8
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 0), align 8
  %41 = call %struct.TYPE_31__** @calloc(i32 %40, i32 8)
  store %struct.TYPE_31__** %41, %struct.TYPE_31__*** %3, align 8
  %42 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 2), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 0), align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memcpy(%struct.TYPE_31__** %42, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %39, %35
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %277, %49
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %280

56:                                               ; preds = %50
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 1), align 4
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %59 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call %struct.TYPE_34__* @XRRGetOutputInfo(i32 %57, %struct.TYPE_33__* %58, i64 %65)
  store %struct.TYPE_34__* %66, %struct.TYPE_34__** %12, align 8
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RR_Connected, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %56
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @None, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %56
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %80 = call i32 @XRRFreeOutputInfo(%struct.TYPE_34__* %79)
  br label %277

81:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %116, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %1, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %82
  %87 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %87, i64 %89
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %90, align 8
  %92 = icmp ne %struct.TYPE_31__* %91, null
  br i1 %92, label %93, label %115

93:                                               ; preds = %86
  %94 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %94, i64 %96
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %101, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %93
  %111 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %111, i64 %113
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %114, align 8
  br label %119

115:                                              ; preds = %93, %86
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %82

119:                                              ; preds = %110, %82
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %1, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %125 = call i32 @XRRFreeOutputInfo(%struct.TYPE_34__* %124)
  br label %277

126:                                              ; preds = %119
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 1), align 4
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call %struct.TYPE_35__* @XRRGetCrtcInfo(i32 %127, %struct.TYPE_33__* %128, i64 %131)
  store %struct.TYPE_35__* %132, %struct.TYPE_35__** %13, align 8
  %133 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @RR_Rotate_90, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %126
  %139 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @RR_Rotate_270, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %138, %126
  %145 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %10, align 4
  %148 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %11, align 4
  br label %158

151:                                              ; preds = %138
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %10, align 4
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %11, align 4
  br label %158

158:                                              ; preds = %151, %144
  %159 = load i32, i32* %10, align 4
  %160 = icmp sle i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %11, align 4
  %163 = icmp sle i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %161, %158
  %165 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %165, i32 0, i32 1
  %167 = load float, float* %166, align 8
  %168 = fmul float %167, 0x4039666660000000
  %169 = fdiv float %168, 9.600000e+01
  %170 = fptosi float %169 to i32
  store i32 %170, i32* %10, align 4
  %171 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %171, i32 0, i32 2
  %173 = load float, float* %172, align 4
  %174 = fmul float %173, 0x4039666660000000
  %175 = fdiv float %174, 9.600000e+01
  %176 = fptosi float %175 to i32
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %164, %161
  %178 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %178, i32 0, i32 4
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call %struct.TYPE_31__* @_glfwAllocMonitor(i8* %180, i32 %181, i32 %182)
  store %struct.TYPE_31__* %183, %struct.TYPE_31__** %14, align 8
  %184 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %184, i32 0, i32 1
  %186 = load i64*, i64** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 0
  store i64 %190, i64* %193, align 8
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %198, i32 0, i32 1
  store i64 %196, i64* %199, align 8
  store i32 0, i32* %8, align 4
  br label %200

200:                                              ; preds = %254, %177
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %2, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %257

204:                                              ; preds = %200
  %205 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %210, %213
  br i1 %214, label %215, label %253

215:                                              ; preds = %204
  %216 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %221, %224
  br i1 %225, label %226, label %253

226:                                              ; preds = %215
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %230, i32 0, i32 2
  %232 = load float, float* %231, align 8
  %233 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %233, i32 0, i32 1
  %235 = load float, float* %234, align 8
  %236 = fcmp oeq float %232, %235
  br i1 %236, label %237, label %253

237:                                              ; preds = %226
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %241, i32 0, i32 3
  %243 = load float, float* %242, align 4
  %244 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %244, i32 0, i32 2
  %246 = load float, float* %245, align 4
  %247 = fcmp oeq float %243, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %237
  %249 = load i32, i32* %8, align 4
  %250 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %251, i32 0, i32 2
  store i32 %249, i32* %252, align 8
  br label %257

253:                                              ; preds = %237, %226, %215, %204
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %200

257:                                              ; preds = %248, %200
  %258 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* %6, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %257
  %265 = load i32, i32* @_GLFW_INSERT_FIRST, align 4
  store i32 %265, i32* %9, align 4
  br label %268

266:                                              ; preds = %257
  %267 = load i32, i32* @_GLFW_INSERT_LAST, align 4
  store i32 %267, i32* %9, align 4
  br label %268

268:                                              ; preds = %266, %264
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %270 = load i32, i32* @GLFW_CONNECTED, align 4
  %271 = load i32, i32* %9, align 4
  %272 = call i32 @_glfwInputMonitor(%struct.TYPE_31__* %269, i32 %270, i32 %271)
  %273 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %274 = call i32 @XRRFreeOutputInfo(%struct.TYPE_34__* %273)
  %275 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %276 = call i32 @XRRFreeCrtcInfo(%struct.TYPE_35__* %275)
  br label %277

277:                                              ; preds = %268, %123, %78
  %278 = load i32, i32* %7, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %7, align 4
  br label %50

280:                                              ; preds = %50
  %281 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %282 = call i32 @XRRFreeScreenResources(%struct.TYPE_33__* %281)
  %283 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %284 = icmp ne %struct.TYPE_32__* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %287 = call i32 @XFree(%struct.TYPE_32__* %286)
  br label %288

288:                                              ; preds = %285, %280
  store i32 0, i32* %15, align 4
  br label %289

289:                                              ; preds = %309, %288
  %290 = load i32, i32* %15, align 4
  %291 = load i32, i32* %1, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %312

293:                                              ; preds = %289
  %294 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %295 = load i32, i32* %15, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %294, i64 %296
  %298 = load %struct.TYPE_31__*, %struct.TYPE_31__** %297, align 8
  %299 = icmp ne %struct.TYPE_31__* %298, null
  br i1 %299, label %300, label %308

300:                                              ; preds = %293
  %301 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %302 = load i32, i32* %15, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %301, i64 %303
  %305 = load %struct.TYPE_31__*, %struct.TYPE_31__** %304, align 8
  %306 = load i32, i32* @GLFW_DISCONNECTED, align 4
  %307 = call i32 @_glfwInputMonitor(%struct.TYPE_31__* %305, i32 %306, i32 0)
  br label %308

308:                                              ; preds = %300, %293
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %15, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %15, align 4
  br label %289

312:                                              ; preds = %289
  %313 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %314 = call i32 @free(%struct.TYPE_31__** %313)
  br label %328

315:                                              ; preds = %20, %0
  %316 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 1), align 4
  %317 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 0), align 8
  %318 = call i32 @DisplayWidthMM(i32 %316, i32 %317)
  store i32 %318, i32* %16, align 4
  %319 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 1), align 4
  %320 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @_glfw, i32 0, i32 1, i32 0), align 8
  %321 = call i32 @DisplayHeightMM(i32 %319, i32 %320)
  store i32 %321, i32* %17, align 4
  %322 = load i32, i32* %16, align 4
  %323 = load i32, i32* %17, align 4
  %324 = call %struct.TYPE_31__* @_glfwAllocMonitor(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %322, i32 %323)
  %325 = load i32, i32* @GLFW_CONNECTED, align 4
  %326 = load i32, i32* @_GLFW_INSERT_FIRST, align 4
  %327 = call i32 @_glfwInputMonitor(%struct.TYPE_31__* %324, i32 %325, i32 %326)
  br label %328

328:                                              ; preds = %315, %312
  ret void
}

declare dso_local %struct.TYPE_33__* @XRRGetScreenResourcesCurrent(i32, i32) #1

declare dso_local i64 @XRRGetOutputPrimary(i32, i32) #1

declare dso_local %struct.TYPE_32__* @XineramaQueryScreens(i32, i32*) #1

declare dso_local %struct.TYPE_31__** @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_31__**, i32, i32) #1

declare dso_local %struct.TYPE_34__* @XRRGetOutputInfo(i32, %struct.TYPE_33__*, i64) #1

declare dso_local i32 @XRRFreeOutputInfo(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_35__* @XRRGetCrtcInfo(i32, %struct.TYPE_33__*, i64) #1

declare dso_local %struct.TYPE_31__* @_glfwAllocMonitor(i8*, i32, i32) #1

declare dso_local i32 @_glfwInputMonitor(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @XRRFreeCrtcInfo(%struct.TYPE_35__*) #1

declare dso_local i32 @XRRFreeScreenResources(%struct.TYPE_33__*) #1

declare dso_local i32 @XFree(%struct.TYPE_32__*) #1

declare dso_local i32 @free(%struct.TYPE_31__**) #1

declare dso_local i32 @DisplayWidthMM(i32, i32) #1

declare dso_local i32 @DisplayHeightMM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
