; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_SurfaceVertsAndIndexes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_SurfaceVertsAndIndexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, float**, float**, float**, i32*, i32, i32, i32**, %struct.TYPE_5__*, i32**, i32**, i32**, i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }

@tess = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ATTR_POSITION = common dso_local global i32 0, align 4
@ATTR_NORMAL = common dso_local global i32 0, align 4
@ATTR_TANGENT = common dso_local global i32 0, align 4
@ATTR_TEXCOORD = common dso_local global i32 0, align 4
@ATTR_LIGHTCOORD = common dso_local global i32 0, align 4
@ATTR_COLOR = common dso_local global i32 0, align 4
@ATTR_LIGHTDIRECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, i32, i32*, i32, i32)* @RB_SurfaceVertsAndIndexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RB_SurfaceVertsAndIndexes(i32 %0, %struct.TYPE_6__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 14), align 8
  %25 = call i32 @RB_CheckVao(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @RB_CHECKOVERFLOW(i32 %26, i32 %27)
  %29 = load i32*, i32** %10, align 8
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 13), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %22, align 8
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %47, %6
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %39 = load i32*, i32** %14, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %14, align 8
  %41 = load i32, i32* %39, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %38, %42
  %44 = trunc i64 %43 to i32
  %45 = load i32*, i32** %22, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %22, align 8
  store i32 %44, i32* %45, align 4
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %33

50:                                               ; preds = %33
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 9), align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ATTR_POSITION, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %50
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %15, align 8
  %63 = load float**, float*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %65 = getelementptr inbounds float*, float** %63, i64 %64
  %66 = load float*, float** %65, align 8
  store float* %66, float** %16, align 8
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %77, %61
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load float*, float** %16, align 8
  %76 = call i32 @VectorCopy(i32 %74, float* %75)
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 1
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %15, align 8
  %82 = load float*, float** %16, align 8
  %83 = getelementptr inbounds float, float* %82, i64 4
  store float* %83, float** %16, align 8
  br label %67

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84, %50
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 9), align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ATTR_NORMAL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %85
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %93, %struct.TYPE_6__** %15, align 8
  %94 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 12), align 8
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %96 = getelementptr inbounds i32*, i32** %94, i64 %95
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %20, align 8
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %108, %92
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %20, align 8
  %107 = call i32 @VectorCopy4(i32 %105, i32* %106)
  br label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 1
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %15, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  store i32* %114, i32** %20, align 8
  br label %98

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %115, %85
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 9), align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ATTR_TANGENT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %116
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %124, %struct.TYPE_6__** %15, align 8
  %125 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 11), align 8
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %127 = getelementptr inbounds i32*, i32** %125, i64 %126
  %128 = load i32*, i32** %127, align 8
  store i32* %128, i32** %21, align 8
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %139, %123
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %21, align 8
  %138 = call i32 @VectorCopy4(i32 %136, i32* %137)
  br label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 1
  store %struct.TYPE_6__* %143, %struct.TYPE_6__** %15, align 8
  %144 = load i32*, i32** %21, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  store i32* %145, i32** %21, align 8
  br label %129

146:                                              ; preds = %129
  br label %147

147:                                              ; preds = %146, %116
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 9), align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @ATTR_TEXCOORD, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %178

154:                                              ; preds = %147
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %155, %struct.TYPE_6__** %15, align 8
  %156 = load float**, float*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 3), align 8
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %158 = getelementptr inbounds float*, float** %156, i64 %157
  %159 = load float*, float** %158, align 8
  store float* %159, float** %17, align 8
  store i32 0, i32* %13, align 4
  br label %160

160:                                              ; preds = %170, %154
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %160
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load float*, float** %17, align 8
  %169 = call i32 @VectorCopy2(i32 %167, float* %168)
  br label %170

170:                                              ; preds = %164
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 1
  store %struct.TYPE_6__* %174, %struct.TYPE_6__** %15, align 8
  %175 = load float*, float** %17, align 8
  %176 = getelementptr inbounds float, float* %175, i64 2
  store float* %176, float** %17, align 8
  br label %160

177:                                              ; preds = %160
  br label %178

178:                                              ; preds = %177, %147
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 9), align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @ATTR_LIGHTCOORD, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %209

185:                                              ; preds = %178
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %186, %struct.TYPE_6__** %15, align 8
  %187 = load float**, float*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 4), align 8
  %188 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %189 = getelementptr inbounds float*, float** %187, i64 %188
  %190 = load float*, float** %189, align 8
  store float* %190, float** %18, align 8
  store i32 0, i32* %13, align 4
  br label %191

191:                                              ; preds = %201, %185
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %208

195:                                              ; preds = %191
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load float*, float** %18, align 8
  %200 = call i32 @VectorCopy2(i32 %198, float* %199)
  br label %201

201:                                              ; preds = %195
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %13, align 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 1
  store %struct.TYPE_6__* %205, %struct.TYPE_6__** %15, align 8
  %206 = load float*, float** %18, align 8
  %207 = getelementptr inbounds float, float* %206, i64 2
  store float* %207, float** %18, align 8
  br label %191

208:                                              ; preds = %191
  br label %209

209:                                              ; preds = %208, %178
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 9), align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @ATTR_COLOR, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %240

216:                                              ; preds = %209
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %217, %struct.TYPE_6__** %15, align 8
  %218 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 10), align 8
  %219 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %220 = getelementptr inbounds i32*, i32** %218, i64 %219
  %221 = load i32*, i32** %220, align 8
  store i32* %221, i32** %23, align 8
  store i32 0, i32* %13, align 4
  br label %222

222:                                              ; preds = %232, %216
  %223 = load i32, i32* %13, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %239

226:                                              ; preds = %222
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %23, align 8
  %231 = call i32 @VectorCopy4(i32 %229, i32* %230)
  br label %232

232:                                              ; preds = %226
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 1
  store %struct.TYPE_6__* %236, %struct.TYPE_6__** %15, align 8
  %237 = load i32*, i32** %23, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 4
  store i32* %238, i32** %23, align 8
  br label %222

239:                                              ; preds = %222
  br label %240

240:                                              ; preds = %239, %209
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 9), align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @ATTR_LIGHTDIRECTION, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %271

247:                                              ; preds = %240
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %248, %struct.TYPE_6__** %15, align 8
  %249 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 8), align 8
  %250 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %251 = getelementptr inbounds i32*, i32** %249, i64 %250
  %252 = load i32*, i32** %251, align 8
  store i32* %252, i32** %19, align 8
  store i32 0, i32* %13, align 4
  br label %253

253:                                              ; preds = %263, %247
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* %7, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %270

257:                                              ; preds = %253
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** %19, align 8
  %262 = call i32 @VectorCopy4(i32 %260, i32* %261)
  br label %263

263:                                              ; preds = %257
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %13, align 4
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 1
  store %struct.TYPE_6__* %267, %struct.TYPE_6__** %15, align 8
  %268 = load i32*, i32** %19, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 4
  store i32* %269, i32** %19, align 8
  br label %253

270:                                              ; preds = %253
  br label %271

271:                                              ; preds = %270, %240
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 6), align 8
  %274 = or i32 %273, %272
  store i32 %274, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 6), align 8
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 7), align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 7), align 4
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %281 = add i64 %280, %279
  store i64 %281, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @RB_CheckVao(i32) #1

declare dso_local i32 @RB_CHECKOVERFLOW(i32, i32) #1

declare dso_local i32 @VectorCopy(i32, float*) #1

declare dso_local i32 @VectorCopy4(i32, i32*) #1

declare dso_local i32 @VectorCopy2(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
