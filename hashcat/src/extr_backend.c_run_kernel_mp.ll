; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_run_kernel_mp.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_run_kernel_mp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32*, i32*, i32, i8**, i8**, i8**, i32, i32, i32*, i32*, i32*, i32, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_kernel_mp(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [3 x i64], align 16
  %16 = alloca [3 x i64], align 16
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %30 [
    i32 130, label %18
    i32 128, label %22
    i32 129, label %26
  ]

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  br label %30

22:                                               ; preds = %4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  br label %30

26:                                               ; preds = %4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %4, %26, %22, %18
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %51 [
    i32 130, label %33
    i32 128, label %39
    i32 129, label %45
  ]

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 8
  store i32 %34, i32* %38, align 4
  br label %51

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  store i32 %40, i32* %44, align 4
  br label %51

45:                                               ; preds = %30
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 9
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %30, %45, %39, %33
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %103

56:                                               ; preds = %51
  store i32* null, i32** %12, align 8
  store i8** null, i8*** %13, align 8
  %57 = load i32, i32* %8, align 4
  switch i32 %57, label %79 [
    i32 130, label %58
    i32 128, label %65
    i32 129, label %72
  ]

58:                                               ; preds = %56
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 18
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %12, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 7
  %64 = load i8**, i8*** %63, align 8
  store i8** %64, i8*** %13, align 8
  br label %79

65:                                               ; preds = %56
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 17
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %12, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 8
  %71 = load i8**, i8*** %70, align 8
  store i8** %71, i8*** %13, align 8
  br label %79

72:                                               ; preds = %56
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 16
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %12, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 9
  %78 = load i8**, i8*** %77, align 8
  store i8** %78, i8*** %13, align 8
  br label %79

79:                                               ; preds = %56, %72, %65, %58
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @CEILDIV(i32 %80, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 15
  %89 = load i32, i32* %88, align 8
  %90 = load i8**, i8*** %13, align 8
  %91 = call i32 @hc_cuLaunchKernel(i32* %83, i32* %84, i32 %85, i32 1, i32 1, i32 %86, i32 1, i32 1, i32 0, i32 %89, i8** %90, i32* null)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  store i32 -1, i32* %5, align 4
  br label %378

94:                                               ; preds = %79
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 15
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @hc_cuStreamSynchronize(i32* %95, i32 %98)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i32 -1, i32* %5, align 4
  br label %378

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %51
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %377

108:                                              ; preds = %103
  store i32* null, i32** %14, align 8
  %109 = load i32, i32* %8, align 4
  switch i32 %109, label %122 [
    i32 130, label %110
    i32 128, label %114
    i32 129, label %118
  ]

110:                                              ; preds = %108
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 14
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %14, align 8
  br label %122

114:                                              ; preds = %108
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 13
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %14, align 8
  br label %122

118:                                              ; preds = %108
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 12
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %14, align 8
  br label %122

122:                                              ; preds = %108, %118, %114, %110
  %123 = load i32, i32* %8, align 4
  switch i32 %123, label %336 [
    i32 130, label %124
    i32 128, label %191
    i32 129, label %258
  ]

124:                                              ; preds = %122
  %125 = load i32*, i32** %6, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 7
  %129 = load i8**, i8*** %128, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 3
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @hc_clSetKernelArg(i32* %125, i32* %126, i32 3, i32 4, i8* %131)
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  store i32 -1, i32* %5, align 4
  br label %378

135:                                              ; preds = %124
  %136 = load i32*, i32** %6, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 7
  %140 = load i8**, i8*** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 4
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @hc_clSetKernelArg(i32* %136, i32* %137, i32 4, i32 4, i8* %142)
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  store i32 -1, i32* %5, align 4
  br label %378

146:                                              ; preds = %135
  %147 = load i32*, i32** %6, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 7
  %151 = load i8**, i8*** %150, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 5
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @hc_clSetKernelArg(i32* %147, i32* %148, i32 5, i32 4, i8* %153)
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  store i32 -1, i32* %5, align 4
  br label %378

157:                                              ; preds = %146
  %158 = load i32*, i32** %6, align 8
  %159 = load i32*, i32** %14, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 7
  %162 = load i8**, i8*** %161, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 6
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @hc_clSetKernelArg(i32* %158, i32* %159, i32 6, i32 4, i8* %164)
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  store i32 -1, i32* %5, align 4
  br label %378

168:                                              ; preds = %157
  %169 = load i32*, i32** %6, align 8
  %170 = load i32*, i32** %14, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 7
  %173 = load i8**, i8*** %172, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 7
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @hc_clSetKernelArg(i32* %169, i32* %170, i32 7, i32 4, i8* %175)
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %179

178:                                              ; preds = %168
  store i32 -1, i32* %5, align 4
  br label %378

179:                                              ; preds = %168
  %180 = load i32*, i32** %6, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 7
  %184 = load i8**, i8*** %183, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 8
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @hc_clSetKernelArg(i32* %180, i32* %181, i32 8, i32 4, i8* %186)
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  store i32 -1, i32* %5, align 4
  br label %378

190:                                              ; preds = %179
  br label %336

191:                                              ; preds = %122
  %192 = load i32*, i32** %6, align 8
  %193 = load i32*, i32** %14, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 8
  %196 = load i8**, i8*** %195, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 3
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @hc_clSetKernelArg(i32* %192, i32* %193, i32 3, i32 4, i8* %198)
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %202

201:                                              ; preds = %191
  store i32 -1, i32* %5, align 4
  br label %378

202:                                              ; preds = %191
  %203 = load i32*, i32** %6, align 8
  %204 = load i32*, i32** %14, align 8
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 8
  %207 = load i8**, i8*** %206, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 4
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @hc_clSetKernelArg(i32* %203, i32* %204, i32 4, i32 4, i8* %209)
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %212, label %213

212:                                              ; preds = %202
  store i32 -1, i32* %5, align 4
  br label %378

213:                                              ; preds = %202
  %214 = load i32*, i32** %6, align 8
  %215 = load i32*, i32** %14, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 8
  %218 = load i8**, i8*** %217, align 8
  %219 = getelementptr inbounds i8*, i8** %218, i64 5
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @hc_clSetKernelArg(i32* %214, i32* %215, i32 5, i32 4, i8* %220)
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %223, label %224

223:                                              ; preds = %213
  store i32 -1, i32* %5, align 4
  br label %378

224:                                              ; preds = %213
  %225 = load i32*, i32** %6, align 8
  %226 = load i32*, i32** %14, align 8
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 8
  %229 = load i8**, i8*** %228, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 6
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @hc_clSetKernelArg(i32* %225, i32* %226, i32 6, i32 4, i8* %231)
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %234, label %235

234:                                              ; preds = %224
  store i32 -1, i32* %5, align 4
  br label %378

235:                                              ; preds = %224
  %236 = load i32*, i32** %6, align 8
  %237 = load i32*, i32** %14, align 8
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 8
  %240 = load i8**, i8*** %239, align 8
  %241 = getelementptr inbounds i8*, i8** %240, i64 7
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @hc_clSetKernelArg(i32* %236, i32* %237, i32 7, i32 4, i8* %242)
  %244 = icmp eq i32 %243, -1
  br i1 %244, label %245, label %246

245:                                              ; preds = %235
  store i32 -1, i32* %5, align 4
  br label %378

246:                                              ; preds = %235
  %247 = load i32*, i32** %6, align 8
  %248 = load i32*, i32** %14, align 8
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 8
  %251 = load i8**, i8*** %250, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 8
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @hc_clSetKernelArg(i32* %247, i32* %248, i32 8, i32 4, i8* %253)
  %255 = icmp eq i32 %254, -1
  br i1 %255, label %256, label %257

256:                                              ; preds = %246
  store i32 -1, i32* %5, align 4
  br label %378

257:                                              ; preds = %246
  br label %336

258:                                              ; preds = %122
  %259 = load i32*, i32** %6, align 8
  %260 = load i32*, i32** %14, align 8
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 9
  %263 = load i8**, i8*** %262, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 3
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @hc_clSetKernelArg(i32* %259, i32* %260, i32 3, i32 4, i8* %265)
  %267 = icmp eq i32 %266, -1
  br i1 %267, label %268, label %269

268:                                              ; preds = %258
  store i32 -1, i32* %5, align 4
  br label %378

269:                                              ; preds = %258
  %270 = load i32*, i32** %6, align 8
  %271 = load i32*, i32** %14, align 8
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 9
  %274 = load i8**, i8*** %273, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i64 4
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @hc_clSetKernelArg(i32* %270, i32* %271, i32 4, i32 4, i8* %276)
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %279, label %280

279:                                              ; preds = %269
  store i32 -1, i32* %5, align 4
  br label %378

280:                                              ; preds = %269
  %281 = load i32*, i32** %6, align 8
  %282 = load i32*, i32** %14, align 8
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 9
  %285 = load i8**, i8*** %284, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 5
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @hc_clSetKernelArg(i32* %281, i32* %282, i32 5, i32 4, i8* %287)
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %290, label %291

290:                                              ; preds = %280
  store i32 -1, i32* %5, align 4
  br label %378

291:                                              ; preds = %280
  %292 = load i32*, i32** %6, align 8
  %293 = load i32*, i32** %14, align 8
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 9
  %296 = load i8**, i8*** %295, align 8
  %297 = getelementptr inbounds i8*, i8** %296, i64 6
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 @hc_clSetKernelArg(i32* %292, i32* %293, i32 6, i32 4, i8* %298)
  %300 = icmp eq i32 %299, -1
  br i1 %300, label %301, label %302

301:                                              ; preds = %291
  store i32 -1, i32* %5, align 4
  br label %378

302:                                              ; preds = %291
  %303 = load i32*, i32** %6, align 8
  %304 = load i32*, i32** %14, align 8
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 9
  %307 = load i8**, i8*** %306, align 8
  %308 = getelementptr inbounds i8*, i8** %307, i64 7
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @hc_clSetKernelArg(i32* %303, i32* %304, i32 7, i32 4, i8* %309)
  %311 = icmp eq i32 %310, -1
  br i1 %311, label %312, label %313

312:                                              ; preds = %302
  store i32 -1, i32* %5, align 4
  br label %378

313:                                              ; preds = %302
  %314 = load i32*, i32** %6, align 8
  %315 = load i32*, i32** %14, align 8
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 9
  %318 = load i8**, i8*** %317, align 8
  %319 = getelementptr inbounds i8*, i8** %318, i64 8
  %320 = load i8*, i8** %319, align 8
  %321 = call i32 @hc_clSetKernelArg(i32* %314, i32* %315, i32 8, i32 4, i8* %320)
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %324

323:                                              ; preds = %313
  store i32 -1, i32* %5, align 4
  br label %378

324:                                              ; preds = %313
  %325 = load i32*, i32** %6, align 8
  %326 = load i32*, i32** %14, align 8
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 9
  %329 = load i8**, i8*** %328, align 8
  %330 = getelementptr inbounds i8*, i8** %329, i64 9
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 @hc_clSetKernelArg(i32* %325, i32* %326, i32 9, i32 4, i8* %331)
  %333 = icmp eq i32 %332, -1
  br i1 %333, label %334, label %335

334:                                              ; preds = %324
  store i32 -1, i32* %5, align 4
  br label %378

335:                                              ; preds = %324
  br label %336

336:                                              ; preds = %122, %335, %257, %190
  %337 = load i32, i32* %11, align 4
  %338 = load i32, i32* %10, align 4
  %339 = call i32 @round_up_multiple_64(i32 %337, i32 %338)
  store i32 %339, i32* %11, align 4
  %340 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %341 = load i32, i32* %11, align 4
  %342 = sext i32 %341 to i64
  store i64 %342, i64* %340, align 8
  %343 = getelementptr inbounds i64, i64* %340, i64 1
  store i64 1, i64* %343, align 8
  %344 = getelementptr inbounds i64, i64* %343, i64 1
  store i64 1, i64* %344, align 8
  %345 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 0
  %346 = load i32, i32* %10, align 4
  %347 = sext i32 %346 to i64
  store i64 %347, i64* %345, align 8
  %348 = getelementptr inbounds i64, i64* %345, i64 1
  store i64 1, i64* %348, align 8
  %349 = getelementptr inbounds i64, i64* %348, i64 1
  store i64 1, i64* %349, align 8
  %350 = load i32*, i32** %6, align 8
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 11
  %353 = load i32, i32* %352, align 4
  %354 = load i32*, i32** %14, align 8
  %355 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %356 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 0
  %357 = call i32 @hc_clEnqueueNDRangeKernel(i32* %350, i32 %353, i32* %354, i32 1, i32* null, i64* %355, i64* %356, i32 0, i32* null, i32* null)
  %358 = icmp eq i32 %357, -1
  br i1 %358, label %359, label %360

359:                                              ; preds = %336
  store i32 -1, i32* %5, align 4
  br label %378

360:                                              ; preds = %336
  %361 = load i32*, i32** %6, align 8
  %362 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 11
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @hc_clFlush(i32* %361, i32 %364)
  %366 = icmp eq i32 %365, -1
  br i1 %366, label %367, label %368

367:                                              ; preds = %360
  store i32 -1, i32* %5, align 4
  br label %378

368:                                              ; preds = %360
  %369 = load i32*, i32** %6, align 8
  %370 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 0, i32 11
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @hc_clFinish(i32* %369, i32 %372)
  %374 = icmp eq i32 %373, -1
  br i1 %374, label %375, label %376

375:                                              ; preds = %368
  store i32 -1, i32* %5, align 4
  br label %378

376:                                              ; preds = %368
  br label %377

377:                                              ; preds = %376, %103
  store i32 0, i32* %5, align 4
  br label %378

378:                                              ; preds = %377, %375, %367, %359, %334, %323, %312, %301, %290, %279, %268, %256, %245, %234, %223, %212, %201, %189, %178, %167, %156, %145, %134, %101, %93
  %379 = load i32, i32* %5, align 4
  ret i32 %379
}

declare dso_local i32 @CEILDIV(i32, i32) #1

declare dso_local i32 @hc_cuLaunchKernel(i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @hc_cuStreamSynchronize(i32*, i32) #1

declare dso_local i32 @hc_clSetKernelArg(i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @round_up_multiple_64(i32, i32) #1

declare dso_local i32 @hc_clEnqueueNDRangeKernel(i32*, i32, i32*, i32, i32*, i64*, i64*, i32, i32*, i32*) #1

declare dso_local i32 @hc_clFlush(i32*, i32) #1

declare dso_local i32 @hc_clFinish(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
