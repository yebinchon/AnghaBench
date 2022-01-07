; ModuleID = '/home/carl/AnghaBench/i3/src/extr_window.c_window_update_normal_hints.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_window.c_window_update_normal_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { double, double, double, double, double, double, double, double, double, double, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, double, double, i32, i32, double, double, i64, double, i64, double, i32, i32, i32, i32, i32, i32 }

@conn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not get WM_NORMAL_HINTS\0A\00", align 1
@XCB_ICCCM_SIZE_HINT_P_MIN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Minimum size: %d (width) x %d (height)\0A\00", align 1
@XCB_ICCCM_SIZE_HINT_P_MAX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Maximum size: %d (width) x %d (height)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Clearing maximum size \0A\00", align 1
@XCB_ICCCM_SIZE_HINT_P_RESIZE_INC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Size increments: %d (width) x %d (height)\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Clearing size increments\0A\00", align 1
@XCB_ICCCM_SIZE_HINT_BASE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Base size: %d (width) x %d (height)\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Clearing base size\0A\00", align 1
@XCB_ICCCM_SIZE_HINT_US_POSITION = common dso_local global i32 0, align 4
@XCB_ICCCM_SIZE_HINT_P_POSITION = common dso_local global i32 0, align 4
@XCB_ICCCM_SIZE_HINT_US_SIZE = common dso_local global i32 0, align 4
@XCB_ICCCM_SIZE_HINT_P_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Setting geometry x=%d y=%d w=%d h=%d\0A\00", align 1
@XCB_ICCCM_SIZE_HINT_P_ASPECT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"Aspect ratio set: minimum %f, maximum %f\0A\00", align 1
@DBL_EPSILON = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"Clearing aspect ratios\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @window_update_normal_hints(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @xcb_icccm_get_wm_size_hints_from_reply(%struct.TYPE_8__* %9, i32* %18)
  store i32 %19, i32* %10, align 4
  br label %28

20:                                               ; preds = %3
  %21 = load i32, i32* @conn, align 4
  %22 = load i32, i32* @conn, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @xcb_icccm_get_wm_normal_hints_unchecked(i32 %22, i32 %25)
  %27 = call i32 @xcb_icccm_get_wm_normal_hints_reply(i32 %21, i32 %26, %struct.TYPE_8__* %9, i32* null)
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %460

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @XCB_ICCCM_SIZE_HINT_P_MIN_SIZE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %43 = load double, double* %42, align 8
  %44 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), double %41, double %43)
  br label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %50 = load double, double* %49, align 8
  %51 = fcmp une double %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store double %54, double* %56, align 8
  store i32 1, i32* %8, align 4
  br label %57

57:                                               ; preds = %52, %45
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load double, double* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %64 = load double, double* %63, align 8
  %65 = fcmp une double %62, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %68 = load double, double* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store double %68, double* %70, align 8
  store i32 1, i32* %8, align 4
  br label %71

71:                                               ; preds = %66, %59
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72, %33
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @XCB_ICCCM_SIZE_HINT_P_MAX_SIZE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 16
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 15
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 16
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @max(i32 0, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 15
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @max(i32 0, i32 %89)
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %79
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load double, double* %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sitofp i32 %95 to double
  %97 = fcmp une double %94, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load i32, i32* %11, align 4
  %100 = sitofp i32 %99 to double
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  store double %100, double* %102, align 8
  store i32 1, i32* %8, align 4
  br label %103

103:                                              ; preds = %98, %91
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  %108 = load double, double* %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sitofp i32 %109 to double
  %111 = fcmp une double %108, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load i32, i32* %12, align 4
  %114 = sitofp i32 %113 to double
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  store double %114, double* %116, align 8
  store i32 1, i32* %8, align 4
  br label %117

117:                                              ; preds = %112, %105
  br label %118

118:                                              ; preds = %117
  br label %141

119:                                              ; preds = %73
  %120 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load double, double* %123, align 8
  %125 = fcmp une double %124, 0.000000e+00
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  store double 0.000000e+00, double* %128, align 8
  store i32 1, i32* %8, align 4
  br label %129

129:                                              ; preds = %126, %121
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  %134 = load double, double* %133, align 8
  %135 = fcmp une double %134, 0.000000e+00
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 3
  store double 0.000000e+00, double* %138, align 8
  store i32 1, i32* %8, align 4
  br label %139

139:                                              ; preds = %136, %131
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140, %118
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @XCB_ICCCM_SIZE_HINT_P_RESIZE_INC, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %225

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %151)
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %158, 65535
  br i1 %159, label %160, label %177

160:                                              ; preds = %156
  br label %161

161:                                              ; preds = %160
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 4
  %164 = load double, double* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = sitofp i32 %166 to double
  %168 = fcmp une double %164, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %161
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = sitofp i32 %171 to double
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 4
  store double %172, double* %174, align 8
  store i32 1, i32* %8, align 4
  br label %175

175:                                              ; preds = %169, %161
  br label %176

176:                                              ; preds = %175
  br label %188

177:                                              ; preds = %156, %147
  br label %178

178:                                              ; preds = %177
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 4
  %181 = load double, double* %180, align 8
  %182 = fcmp une double %181, 0.000000e+00
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 4
  store double 0.000000e+00, double* %185, align 8
  store i32 1, i32* %8, align 4
  br label %186

186:                                              ; preds = %183, %178
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187, %176
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %213

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = icmp slt i32 %194, 65535
  br i1 %195, label %196, label %213

196:                                              ; preds = %192
  br label %197

197:                                              ; preds = %196
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 5
  %200 = load double, double* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = sitofp i32 %202 to double
  %204 = fcmp une double %200, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %197
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = sitofp i32 %207 to double
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 5
  store double %208, double* %210, align 8
  store i32 1, i32* %8, align 4
  br label %211

211:                                              ; preds = %205, %197
  br label %212

212:                                              ; preds = %211
  br label %224

213:                                              ; preds = %192, %188
  br label %214

214:                                              ; preds = %213
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 5
  %217 = load double, double* %216, align 8
  %218 = fcmp une double %217, 0.000000e+00
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 5
  store double 0.000000e+00, double* %221, align 8
  store i32 1, i32* %8, align 4
  br label %222

222:                                              ; preds = %219, %214
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223, %212
  br label %247

225:                                              ; preds = %141
  %226 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %227

227:                                              ; preds = %225
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 4
  %230 = load double, double* %229, align 8
  %231 = fcmp une double %230, 0.000000e+00
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 4
  store double 0.000000e+00, double* %234, align 8
  store i32 1, i32* %8, align 4
  br label %235

235:                                              ; preds = %232, %227
  br label %236

236:                                              ; preds = %235
  br label %237

237:                                              ; preds = %236
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 5
  %240 = load double, double* %239, align 8
  %241 = fcmp une double %240, 0.000000e+00
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 5
  store double 0.000000e+00, double* %244, align 8
  store i32 1, i32* %8, align 4
  br label %245

245:                                              ; preds = %242, %237
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246, %224
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @XCB_ICCCM_SIZE_HINT_BASE_SIZE, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %297

253:                                              ; preds = %247
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 6
  %256 = load double, double* %255, align 8
  %257 = fcmp oge double %256, 0.000000e+00
  br i1 %257, label %258, label %297

258:                                              ; preds = %253
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 7
  %261 = load double, double* %260, align 8
  %262 = fcmp oge double %261, 0.000000e+00
  br i1 %262, label %263, label %297

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 5
  %265 = load double, double* %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 6
  %267 = load double, double* %266, align 8
  %268 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), double %265, double %267)
  br label %269

269:                                              ; preds = %263
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 6
  %272 = load double, double* %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 5
  %274 = load double, double* %273, align 8
  %275 = fcmp une double %272, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %269
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 5
  %278 = load double, double* %277, align 8
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 6
  store double %278, double* %280, align 8
  store i32 1, i32* %8, align 4
  br label %281

281:                                              ; preds = %276, %269
  br label %282

282:                                              ; preds = %281
  br label %283

283:                                              ; preds = %282
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 7
  %286 = load double, double* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 6
  %288 = load double, double* %287, align 8
  %289 = fcmp une double %286, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 6
  %292 = load double, double* %291, align 8
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 7
  store double %292, double* %294, align 8
  store i32 1, i32* %8, align 4
  br label %295

295:                                              ; preds = %290, %283
  br label %296

296:                                              ; preds = %295
  br label %319

297:                                              ; preds = %258, %253, %247
  %298 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %299

299:                                              ; preds = %297
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 6
  %302 = load double, double* %301, align 8
  %303 = fcmp une double %302, 0.000000e+00
  br i1 %303, label %304, label %307

304:                                              ; preds = %299
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 6
  store double 0.000000e+00, double* %306, align 8
  store i32 1, i32* %8, align 4
  br label %307

307:                                              ; preds = %304, %299
  br label %308

308:                                              ; preds = %307
  br label %309

309:                                              ; preds = %308
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 7
  %312 = load double, double* %311, align 8
  %313 = fcmp une double %312, 0.000000e+00
  br i1 %313, label %314, label %317

314:                                              ; preds = %309
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 7
  store double 0.000000e+00, double* %316, align 8
  store i32 1, i32* %8, align 4
  br label %317

317:                                              ; preds = %314, %309
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318, %296
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %321 = icmp ne %struct.TYPE_9__* %320, null
  br i1 %321, label %322, label %372

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @XCB_ICCCM_SIZE_HINT_US_POSITION, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %334, label %328

328:                                              ; preds = %322
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @XCB_ICCCM_SIZE_HINT_P_POSITION, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %372

334:                                              ; preds = %328, %322
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @XCB_ICCCM_SIZE_HINT_US_SIZE, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %346, label %340

340:                                              ; preds = %334
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @XCB_ICCCM_SIZE_HINT_P_SIZE, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %372

346:                                              ; preds = %340, %334
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 14
  %348 = load i32, i32* %347, align 4
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 13
  %350 = load i32, i32* %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 12
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 11
  %354 = load i32, i32* %353, align 8
  %355 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %348, i32 %350, i32 %352, i32 %354)
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 14
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 3
  store i32 %357, i32* %359, align 4
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 13
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 2
  store i32 %361, i32* %363, align 4
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 12
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 1
  store i32 %365, i32* %367, align 4
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 11
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 0
  store i32 %369, i32* %371, align 4
  br label %372

372:                                              ; preds = %346, %340, %328, %319
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @XCB_ICCCM_SIZE_HINT_P_ASPECT, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %436

378:                                              ; preds = %372
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 7
  %380 = load i64, i64* %379, align 8
  %381 = icmp sge i64 %380, 0
  br i1 %381, label %382, label %436

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 8
  %384 = load double, double* %383, align 8
  %385 = fcmp ogt double %384, 0.000000e+00
  br i1 %385, label %386, label %436

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 9
  %388 = load i64, i64* %387, align 8
  %389 = icmp sge i64 %388, 0
  br i1 %389, label %390, label %436

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 10
  %392 = load double, double* %391, align 8
  %393 = fcmp ogt double %392, 0.000000e+00
  br i1 %393, label %394, label %436

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 7
  %396 = load i64, i64* %395, align 8
  %397 = sitofp i64 %396 to double
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 8
  %399 = load double, double* %398, align 8
  %400 = fdiv double %397, %399
  store double %400, double* %13, align 8
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 9
  %402 = load i64, i64* %401, align 8
  %403 = sitofp i64 %402 to double
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 10
  %405 = load double, double* %404, align 8
  %406 = fdiv double %403, %405
  store double %406, double* %14, align 8
  %407 = load double, double* %13, align 8
  %408 = load double, double* %14, align 8
  %409 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), double %407, double %408)
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 8
  %412 = load double, double* %411, align 8
  %413 = load double, double* %13, align 8
  %414 = fsub double %412, %413
  %415 = call i64 @fabs(double %414)
  %416 = load i64, i64* @DBL_EPSILON, align 8
  %417 = icmp sgt i64 %415, %416
  br i1 %417, label %418, label %422

418:                                              ; preds = %394
  %419 = load double, double* %13, align 8
  %420 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %420, i32 0, i32 8
  store double %419, double* %421, align 8
  store i32 1, i32* %8, align 4
  br label %422

422:                                              ; preds = %418, %394
  %423 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 9
  %425 = load double, double* %424, align 8
  %426 = load double, double* %14, align 8
  %427 = fsub double %425, %426
  %428 = call i64 @fabs(double %427)
  %429 = load i64, i64* @DBL_EPSILON, align 8
  %430 = icmp sgt i64 %428, %429
  br i1 %430, label %431, label %435

431:                                              ; preds = %422
  %432 = load double, double* %14, align 8
  %433 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %433, i32 0, i32 9
  store double %432, double* %434, align 8
  store i32 1, i32* %8, align 4
  br label %435

435:                                              ; preds = %431, %422
  br label %458

436:                                              ; preds = %390, %386, %382, %378, %372
  %437 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %438

438:                                              ; preds = %436
  %439 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %439, i32 0, i32 8
  %441 = load double, double* %440, align 8
  %442 = fcmp une double %441, 0.000000e+00
  br i1 %442, label %443, label %446

443:                                              ; preds = %438
  %444 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %444, i32 0, i32 8
  store double 0.000000e+00, double* %445, align 8
  store i32 1, i32* %8, align 4
  br label %446

446:                                              ; preds = %443, %438
  br label %447

447:                                              ; preds = %446
  br label %448

448:                                              ; preds = %447
  %449 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 9
  %451 = load double, double* %450, align 8
  %452 = fcmp une double %451, 0.000000e+00
  br i1 %452, label %453, label %456

453:                                              ; preds = %448
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 9
  store double 0.000000e+00, double* %455, align 8
  store i32 1, i32* %8, align 4
  br label %456

456:                                              ; preds = %453, %448
  br label %457

457:                                              ; preds = %456
  br label %458

458:                                              ; preds = %457, %435
  %459 = load i32, i32* %8, align 4
  store i32 %459, i32* %4, align 4
  br label %460

460:                                              ; preds = %458, %31
  %461 = load i32, i32* %4, align 4
  ret i32 %461
}

declare dso_local i32 @xcb_icccm_get_wm_size_hints_from_reply(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @xcb_icccm_get_wm_normal_hints_reply(i32, i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @xcb_icccm_get_wm_normal_hints_unchecked(i32, i32) #1

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
