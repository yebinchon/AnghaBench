; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_choose_kernel.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_choose_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_38__*, %struct.TYPE_39__*, %struct.TYPE_40__*, %struct.TYPE_43__*, %struct.TYPE_44__* }
%struct.TYPE_38__ = type { i32, i64, i32, i32, i64 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_40__ = type { i32 (%struct.TYPE_43__*, i32, i32)* }
%struct.TYPE_43__ = type { %struct.TYPE_37__*, i32 }
%struct.TYPE_37__ = type { i32, i32, i32 }
%struct.TYPE_44__ = type { i64, i32, i32 }
%struct.TYPE_42__ = type { i32, i32, i32, i32, i32, i32*, i32, i32*, double*, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_41__ = type { i32, i32, i32, i32, i32, %struct.TYPE_42__*, %struct.TYPE_39__*, %struct.TYPE_40__* }

@ATTACK_EXEC_INSIDE_KERNEL = common dso_local global i64 0, align 8
@ATTACK_MODE_BF = common dso_local global i64 0, align 8
@OPTS_TYPE_PT_BITSLICE = common dso_local global i32 0, align 4
@OPTI_TYPE_OPTIMIZED_KERNEL = common dso_local global i32 0, align 4
@KERN_RUN_1 = common dso_local global i32 0, align 4
@KERN_RUN_2 = common dso_local global i32 0, align 4
@KERN_RUN_3 = common dso_local global i32 0, align 4
@KERN_RUN_4 = common dso_local global i32 0, align 4
@OPTS_TYPE_HOOK12 = common dso_local global i32 0, align 4
@KERN_RUN_12 = common dso_local global i32 0, align 4
@CL_TRUE = common dso_local global i32 0, align 4
@hook12_thread = common dso_local global i32 0, align 4
@OPTS_TYPE_HOOK23 = common dso_local global i32 0, align 4
@KERN_RUN_23 = common dso_local global i32 0, align 4
@hook23_thread = common dso_local global i32 0, align 4
@OPTS_TYPE_INIT2 = common dso_local global i32 0, align 4
@KERN_RUN_INIT2 = common dso_local global i32 0, align 4
@OPTS_TYPE_LOOP2 = common dso_local global i32 0, align 4
@KERN_RUN_LOOP2 = common dso_local global i32 0, align 4
@OPTS_TYPE_DEEP_COMP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @choose_kernel(%struct.TYPE_36__* %0, %struct.TYPE_42__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_42__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_44__*, align 8
  %15 = alloca %struct.TYPE_43__*, align 8
  %16 = alloca %struct.TYPE_40__*, align 8
  %17 = alloca %struct.TYPE_39__*, align 8
  %18 = alloca %struct.TYPE_38__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_41__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_41__*, align 8
  %27 = alloca %struct.TYPE_41__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_41__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca float, align 4
  %36 = alloca i32, align 4
  %37 = alloca double, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.TYPE_41__*, align 8
  %41 = alloca i32, align 4
  %42 = alloca %struct.TYPE_41__*, align 8
  %43 = alloca %struct.TYPE_41__*, align 8
  %44 = alloca i32, align 4
  %45 = alloca %struct.TYPE_41__*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %8, align 8
  store %struct.TYPE_42__* %1, %struct.TYPE_42__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %54 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_44__*, %struct.TYPE_44__** %55, align 8
  store %struct.TYPE_44__* %56, %struct.TYPE_44__** %14, align 8
  %57 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_43__*, %struct.TYPE_43__** %58, align 8
  store %struct.TYPE_43__* %59, %struct.TYPE_43__** %15, align 8
  %60 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_40__*, %struct.TYPE_40__** %61, align 8
  store %struct.TYPE_40__* %62, %struct.TYPE_40__** %16, align 8
  %63 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_39__*, %struct.TYPE_39__** %64, align 8
  store %struct.TYPE_39__* %65, %struct.TYPE_39__** %17, align 8
  %66 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_38__*, %struct.TYPE_38__** %67, align 8
  store %struct.TYPE_38__* %68, %struct.TYPE_38__** %18, align 8
  %69 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %78

73:                                               ; preds = %6
  %74 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %75 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @process_stdout(%struct.TYPE_36__* %74, %struct.TYPE_42__* %75, i32 %76)
  store i32 %77, i32* %7, align 4
  br label %993

78:                                               ; preds = %6
  %79 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ATTACK_EXEC_INSIDE_KERNEL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %242

84:                                               ; preds = %78
  %85 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ATTACK_MODE_BF, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %186

90:                                               ; preds = %84
  %91 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %185

96:                                               ; preds = %90
  %97 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @OPTS_TYPE_PT_BITSLICE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %184

103:                                              ; preds = %96
  %104 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %19, align 4
  %107 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %122

111:                                              ; preds = %103
  %112 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %113 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %114 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %114, i32 0, i32 22
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %19, align 4
  %118 = call i32 @run_cuda_kernel_bzero(%struct.TYPE_36__* %112, %struct.TYPE_42__* %113, i32 %116, i32 %117)
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i32 -1, i32* %7, align 4
  br label %993

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %103
  %123 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %129 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %130 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %130, i32 0, i32 21
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @run_opencl_kernel_bzero(%struct.TYPE_36__* %128, %struct.TYPE_42__* %129, i32 %132, i32 %133)
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  store i32 -1, i32* %7, align 4
  br label %993

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %122
  %139 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %140 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %141 = call i32 @run_kernel_tm(%struct.TYPE_36__* %139, %struct.TYPE_42__* %140)
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 -1, i32* %7, align 4
  br label %993

144:                                              ; preds = %138
  %145 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %162

149:                                              ; preds = %144
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %151 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %151, i32 0, i32 23
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %154, i32 0, i32 22
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @hc_cuMemcpyDtoD(%struct.TYPE_36__* %150, i32 %153, i32 %156, i32 %157)
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %161

160:                                              ; preds = %149
  store i32 -1, i32* %7, align 4
  br label %993

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %161, %144
  %163 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %183

167:                                              ; preds = %162
  %168 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %169 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %169, i32 0, i32 14
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %172, i32 0, i32 21
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %175, i32 0, i32 20
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %19, align 4
  %179 = call i32 @hc_clEnqueueCopyBuffer(%struct.TYPE_36__* %168, i32 %171, i32 %174, i32 %177, i32 0, i32 0, i32 %178, i32 0, i32* null, i32* null)
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %182

181:                                              ; preds = %167
  store i32 -1, i32* %7, align 4
  br label %993

182:                                              ; preds = %167
  br label %183

183:                                              ; preds = %182, %162
  br label %184

184:                                              ; preds = %183, %96
  br label %185

185:                                              ; preds = %184, %95
  br label %186

186:                                              ; preds = %185, %84
  %187 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @OPTI_TYPE_OPTIMIZED_KERNEL, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %231

193:                                              ; preds = %186
  %194 = load i32, i32* %10, align 4
  %195 = icmp slt i32 %194, 16
  br i1 %195, label %196, label %206

196:                                              ; preds = %193
  %197 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %198 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %199 = load i32, i32* @KERN_RUN_1, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @run_kernel(%struct.TYPE_36__* %197, %struct.TYPE_42__* %198, i32 %199, i32 %200, i32 1, i32 %201)
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %204, label %205

204:                                              ; preds = %196
  store i32 -1, i32* %7, align 4
  br label %993

205:                                              ; preds = %196
  br label %230

206:                                              ; preds = %193
  %207 = load i32, i32* %10, align 4
  %208 = icmp slt i32 %207, 32
  br i1 %208, label %209, label %219

209:                                              ; preds = %206
  %210 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %211 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %212 = load i32, i32* @KERN_RUN_2, align 4
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %12, align 4
  %215 = call i32 @run_kernel(%struct.TYPE_36__* %210, %struct.TYPE_42__* %211, i32 %212, i32 %213, i32 1, i32 %214)
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %217, label %218

217:                                              ; preds = %209
  store i32 -1, i32* %7, align 4
  br label %993

218:                                              ; preds = %209
  br label %229

219:                                              ; preds = %206
  %220 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %221 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %222 = load i32, i32* @KERN_RUN_3, align 4
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @run_kernel(%struct.TYPE_36__* %220, %struct.TYPE_42__* %221, i32 %222, i32 %223, i32 1, i32 %224)
  %226 = icmp eq i32 %225, -1
  br i1 %226, label %227, label %228

227:                                              ; preds = %219
  store i32 -1, i32* %7, align 4
  br label %993

228:                                              ; preds = %219
  br label %229

229:                                              ; preds = %228, %218
  br label %230

230:                                              ; preds = %229, %205
  br label %241

231:                                              ; preds = %186
  %232 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %233 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %234 = load i32, i32* @KERN_RUN_4, align 4
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @run_kernel(%struct.TYPE_36__* %232, %struct.TYPE_42__* %233, i32 %234, i32 %235, i32 1, i32 %236)
  %238 = icmp eq i32 %237, -1
  br i1 %238, label %239, label %240

239:                                              ; preds = %231
  store i32 -1, i32* %7, align 4
  br label %993

240:                                              ; preds = %231
  br label %241

241:                                              ; preds = %240, %230
  br label %992

242:                                              ; preds = %78
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %243 = load i32, i32* %20, align 4
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %245, label %493

245:                                              ; preds = %242
  %246 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %266

250:                                              ; preds = %245
  %251 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %252 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %252, i32 0, i32 19
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %255, i32 0, i32 18
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = mul i64 %259, 4
  %261 = trunc i64 %260 to i32
  %262 = call i32 @hc_cuMemcpyDtoD(%struct.TYPE_36__* %251, i32 %254, i32 %257, i32 %261)
  %263 = icmp eq i32 %262, -1
  br i1 %263, label %264, label %265

264:                                              ; preds = %250
  store i32 -1, i32* %7, align 4
  br label %993

265:                                              ; preds = %250
  br label %266

266:                                              ; preds = %265, %245
  %267 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %271, label %290

271:                                              ; preds = %266
  %272 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %273 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %273, i32 0, i32 14
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %276, i32 0, i32 17
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %279, i32 0, i32 16
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %11, align 4
  %283 = sext i32 %282 to i64
  %284 = mul i64 %283, 4
  %285 = trunc i64 %284 to i32
  %286 = call i32 @hc_clEnqueueCopyBuffer(%struct.TYPE_36__* %272, i32 %275, i32 %278, i32 %281, i32 0, i32 0, i32 %285, i32 0, i32* null, i32* null)
  %287 = icmp eq i32 %286, -1
  br i1 %287, label %288, label %289

288:                                              ; preds = %271
  store i32 -1, i32* %7, align 4
  br label %993

289:                                              ; preds = %271
  br label %290

290:                                              ; preds = %289, %266
  %291 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %292 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %296

295:                                              ; preds = %290
  br label %304

296:                                              ; preds = %290
  %297 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %298 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %299 = load i32, i32* %11, align 4
  %300 = call i32 @run_kernel_amp(%struct.TYPE_36__* %297, %struct.TYPE_42__* %298, i32 %299)
  %301 = icmp eq i32 %300, -1
  br i1 %301, label %302, label %303

302:                                              ; preds = %296
  store i32 -1, i32* %7, align 4
  br label %993

303:                                              ; preds = %296
  br label %304

304:                                              ; preds = %303, %295
  %305 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %306 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %307 = load i32, i32* @KERN_RUN_1, align 4
  %308 = load i32, i32* %11, align 4
  %309 = call i32 @run_kernel(%struct.TYPE_36__* %305, %struct.TYPE_42__* %306, i32 %307, i32 %308, i32 0, i32 0)
  %310 = icmp eq i32 %309, -1
  br i1 %310, label %311, label %312

311:                                              ; preds = %304
  store i32 -1, i32* %7, align 4
  br label %993

312:                                              ; preds = %304
  %313 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %314 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @OPTS_TYPE_HOOK12, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %492

319:                                              ; preds = %312
  %320 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %321 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %322 = load i32, i32* @KERN_RUN_12, align 4
  %323 = load i32, i32* %11, align 4
  %324 = call i32 @run_kernel(%struct.TYPE_36__* %320, %struct.TYPE_42__* %321, i32 %322, i32 %323, i32 0, i32 0)
  %325 = icmp eq i32 %324, -1
  br i1 %325, label %326, label %327

326:                                              ; preds = %319
  store i32 -1, i32* %7, align 4
  br label %993

327:                                              ; preds = %319
  %328 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %332, label %347

332:                                              ; preds = %327
  %333 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %334 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %334, i32 0, i32 13
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %337, i32 0, i32 12
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @hc_cuMemcpyDtoH(%struct.TYPE_36__* %333, i32 %336, i32 %339, i32 %342)
  %344 = icmp eq i32 %343, -1
  br i1 %344, label %345, label %346

345:                                              ; preds = %332
  store i32 -1, i32* %7, align 4
  br label %993

346:                                              ; preds = %332
  br label %347

347:                                              ; preds = %346, %327
  %348 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = icmp eq i32 %350, 1
  br i1 %351, label %352, label %371

352:                                              ; preds = %347
  %353 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %354 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %354, i32 0, i32 14
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %357, i32 0, i32 11
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @CL_TRUE, align 4
  %361 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %362 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %364, i32 0, i32 13
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @hc_clEnqueueReadBuffer(%struct.TYPE_36__* %353, i32 %356, i32 %359, i32 %360, i32 0, i32 %363, i32 %366, i32 0, i32* null, i32* null)
  %368 = icmp eq i32 %367, -1
  br i1 %368, label %369, label %370

369:                                              ; preds = %352
  store i32 -1, i32* %7, align 4
  br label %993

370:                                              ; preds = %352
  br label %371

371:                                              ; preds = %370, %347
  %372 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %373 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %372, i32 0, i32 4
  %374 = load i64, i64* %373, align 8
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %23, align 4
  %376 = load i32, i32* %23, align 4
  %377 = call i64 @hccalloc(i32 %376, i32 48)
  %378 = inttoptr i64 %377 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %378, %struct.TYPE_41__** %24, align 8
  store i32 0, i32* %25, align 4
  br label %379

379:                                              ; preds = %414, %371
  %380 = load i32, i32* %25, align 4
  %381 = load i32, i32* %23, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %417

383:                                              ; preds = %379
  %384 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %385 = load i32, i32* %25, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %384, i64 %386
  store %struct.TYPE_41__* %387, %struct.TYPE_41__** %26, align 8
  %388 = load i32, i32* %25, align 4
  %389 = load %struct.TYPE_41__*, %struct.TYPE_41__** %26, align 8
  %390 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %389, i32 0, i32 0
  store i32 %388, i32* %390, align 8
  %391 = load i32, i32* %23, align 4
  %392 = load %struct.TYPE_41__*, %struct.TYPE_41__** %26, align 8
  %393 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %392, i32 0, i32 1
  store i32 %391, i32* %393, align 4
  %394 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %395 = load %struct.TYPE_41__*, %struct.TYPE_41__** %26, align 8
  %396 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %395, i32 0, i32 7
  store %struct.TYPE_40__* %394, %struct.TYPE_40__** %396, align 8
  %397 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %398 = load %struct.TYPE_41__*, %struct.TYPE_41__** %26, align 8
  %399 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %398, i32 0, i32 6
  store %struct.TYPE_39__* %397, %struct.TYPE_39__** %399, align 8
  %400 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %401 = load %struct.TYPE_41__*, %struct.TYPE_41__** %26, align 8
  %402 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %401, i32 0, i32 5
  store %struct.TYPE_42__* %400, %struct.TYPE_42__** %402, align 8
  %403 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %404 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 8
  %406 = load %struct.TYPE_41__*, %struct.TYPE_41__** %26, align 8
  %407 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %406, i32 0, i32 4
  store i32 %405, i32* %407, align 8
  %408 = load i32, i32* %13, align 4
  %409 = load %struct.TYPE_41__*, %struct.TYPE_41__** %26, align 8
  %410 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %409, i32 0, i32 2
  store i32 %408, i32* %410, align 8
  %411 = load i32, i32* %11, align 4
  %412 = load %struct.TYPE_41__*, %struct.TYPE_41__** %26, align 8
  %413 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %412, i32 0, i32 3
  store i32 %411, i32* %413, align 4
  br label %414

414:                                              ; preds = %383
  %415 = load i32, i32* %25, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %25, align 4
  br label %379

417:                                              ; preds = %379
  %418 = load i32, i32* %23, align 4
  %419 = call i64 @calloc(i32 %418, i32 48)
  %420 = inttoptr i64 %419 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %420, %struct.TYPE_41__** %27, align 8
  store i32 0, i32* %28, align 4
  br label %421

421:                                              ; preds = %437, %417
  %422 = load i32, i32* %28, align 4
  %423 = load i32, i32* %23, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %440

425:                                              ; preds = %421
  %426 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %427 = load i32, i32* %28, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %426, i64 %428
  store %struct.TYPE_41__* %429, %struct.TYPE_41__** %29, align 8
  %430 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %431 = load i32, i32* %28, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %430, i64 %432
  %434 = load i32, i32* @hook12_thread, align 4
  %435 = load %struct.TYPE_41__*, %struct.TYPE_41__** %29, align 8
  %436 = call i32 @hc_thread_create(%struct.TYPE_41__* byval(%struct.TYPE_41__) align 8 %433, i32 %434, %struct.TYPE_41__* %435)
  br label %437

437:                                              ; preds = %425
  %438 = load i32, i32* %28, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %28, align 4
  br label %421

440:                                              ; preds = %421
  %441 = load i32, i32* %23, align 4
  %442 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %443 = call i32 @hc_thread_wait(i32 %441, %struct.TYPE_41__* %442)
  %444 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %445 = call i32 @hcfree(%struct.TYPE_41__* %444)
  %446 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %447 = call i32 @hcfree(%struct.TYPE_41__* %446)
  %448 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %449 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = icmp eq i32 %450, 1
  br i1 %451, label %452, label %467

452:                                              ; preds = %440
  %453 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %454 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %455 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %454, i32 0, i32 12
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %458 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %457, i32 0, i32 13
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %461 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %460, i32 0, i32 3
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @hc_cuMemcpyHtoD(%struct.TYPE_36__* %453, i32 %456, i32 %459, i32 %462)
  %464 = icmp eq i32 %463, -1
  br i1 %464, label %465, label %466

465:                                              ; preds = %452
  store i32 -1, i32* %7, align 4
  br label %993

466:                                              ; preds = %452
  br label %467

467:                                              ; preds = %466, %440
  %468 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %469 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %468, i32 0, i32 2
  %470 = load i32, i32* %469, align 8
  %471 = icmp eq i32 %470, 1
  br i1 %471, label %472, label %491

472:                                              ; preds = %467
  %473 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %474 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %475 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %474, i32 0, i32 14
  %476 = load i32, i32* %475, align 8
  %477 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %478 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %477, i32 0, i32 11
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* @CL_TRUE, align 4
  %481 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %482 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %481, i32 0, i32 3
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %485 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %484, i32 0, i32 13
  %486 = load i32, i32* %485, align 4
  %487 = call i32 @hc_clEnqueueWriteBuffer(%struct.TYPE_36__* %473, i32 %476, i32 %479, i32 %480, i32 0, i32 %483, i32 %486, i32 0, i32* null, i32* null)
  %488 = icmp eq i32 %487, -1
  br i1 %488, label %489, label %490

489:                                              ; preds = %472
  store i32 -1, i32* %7, align 4
  br label %993

490:                                              ; preds = %472
  br label %491

491:                                              ; preds = %490, %467
  br label %492

492:                                              ; preds = %491, %312
  br label %493

493:                                              ; preds = %492, %242
  %494 = load i32, i32* %21, align 4
  %495 = icmp eq i32 %494, 1
  br i1 %495, label %496, label %789

496:                                              ; preds = %493
  %497 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %498 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %497, i32 0, i32 0
  %499 = load %struct.TYPE_37__*, %struct.TYPE_37__** %498, align 8
  %500 = load i32, i32* %13, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %499, i64 %501
  %503 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  store i32 %504, i32* %30, align 4
  %505 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %506 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %505, i32 0, i32 4
  %507 = load i32, i32* %506, align 8
  store i32 %507, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  br label %508

508:                                              ; preds = %602, %496
  %509 = load i32, i32* %32, align 4
  %510 = load i32, i32* %30, align 4
  %511 = icmp slt i32 %509, %510
  br i1 %511, label %512, label %608

512:                                              ; preds = %508
  %513 = load i32, i32* %30, align 4
  %514 = load i32, i32* %32, align 4
  %515 = sub nsw i32 %513, %514
  store i32 %515, i32* %34, align 4
  %516 = load i32, i32* %34, align 4
  %517 = load i32, i32* %31, align 4
  %518 = call i32 @MIN(i32 %516, i32 %517)
  store i32 %518, i32* %34, align 4
  %519 = load i32, i32* %32, align 4
  %520 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %521 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %520, i32 0, i32 5
  %522 = load i32*, i32** %521, align 8
  %523 = getelementptr inbounds i32, i32* %522, i64 28
  store i32 %519, i32* %523, align 4
  %524 = load i32, i32* %34, align 4
  %525 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %526 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %525, i32 0, i32 5
  %527 = load i32*, i32** %526, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 29
  store i32 %524, i32* %528, align 4
  %529 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %530 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %531 = load i32, i32* @KERN_RUN_2, align 4
  %532 = load i32, i32* %11, align 4
  %533 = load i32, i32* %33, align 4
  %534 = call i32 @run_kernel(%struct.TYPE_36__* %529, %struct.TYPE_42__* %530, i32 %531, i32 %532, i32 1, i32 %533)
  %535 = icmp eq i32 %534, -1
  br i1 %535, label %536, label %537

536:                                              ; preds = %512
  store i32 -1, i32* %7, align 4
  br label %993

537:                                              ; preds = %512
  %538 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %539 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 4
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %543

542:                                              ; preds = %537
  br label %608

543:                                              ; preds = %537
  %544 = load i32, i32* %32, align 4
  %545 = load i32, i32* %34, align 4
  %546 = add nsw i32 %544, %545
  %547 = sitofp i32 %546 to float
  %548 = load i32, i32* %30, align 4
  %549 = sitofp i32 %548 to float
  %550 = fdiv float %547, %549
  store float %550, float* %35, align 4
  %551 = load i32, i32* %11, align 4
  %552 = sitofp i32 %551 to float
  %553 = load float, float* %35, align 4
  %554 = fmul float %552, %553
  %555 = fptosi float %554 to i32
  store i32 %555, i32* %36, align 4
  %556 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %557 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %556, i32 0, i32 15
  %558 = load i32, i32* %557, align 4
  %559 = call double @hc_timer_get(i32 %558)
  store double %559, double* %37, align 8
  %560 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %561 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %560, i32 0, i32 6
  %562 = load i32, i32* %561, align 8
  store i32 %562, i32* %38, align 4
  %563 = load i32, i32* %36, align 4
  %564 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %565 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %564, i32 0, i32 7
  %566 = load i32*, i32** %565, align 8
  %567 = load i32, i32* %38, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i32, i32* %566, i64 %568
  store i32 %563, i32* %569, align 4
  %570 = load double, double* %37, align 8
  %571 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %572 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %571, i32 0, i32 8
  %573 = load double*, double** %572, align 8
  %574 = load i32, i32* %38, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds double, double* %573, i64 %575
  store double %570, double* %576, align 8
  %577 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %578 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %577, i32 0, i32 3
  %579 = load i32, i32* %578, align 4
  %580 = icmp eq i32 %579, 1
  br i1 %580, label %581, label %601

581:                                              ; preds = %543
  %582 = load double, double* %37, align 8
  %583 = fcmp ogt double %582, 4.000000e+03
  br i1 %583, label %584, label %600

584:                                              ; preds = %581
  %585 = load i32, i32* %30, align 4
  %586 = sitofp i32 %585 to double
  %587 = load i32, i32* %32, align 4
  %588 = load i32, i32* %34, align 4
  %589 = add nsw i32 %587, %588
  %590 = sitofp i32 %589 to double
  %591 = fdiv double %586, %590
  %592 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %593 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %592, i32 0, i32 9
  %594 = load double, double* %593, align 8
  %595 = fmul double %594, %591
  store double %595, double* %593, align 8
  %596 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %597 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %596, i32 0, i32 6
  store i32 1, i32* %597, align 8
  %598 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %599 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %598, i32 0, i32 10
  store i32 1, i32* %599, align 8
  store i32 0, i32* %7, align 4
  br label %993

600:                                              ; preds = %581
  br label %601

601:                                              ; preds = %600, %543
  br label %602

602:                                              ; preds = %601
  %603 = load i32, i32* %31, align 4
  %604 = load i32, i32* %32, align 4
  %605 = add nsw i32 %604, %603
  store i32 %605, i32* %32, align 4
  %606 = load i32, i32* %33, align 4
  %607 = add nsw i32 %606, 1
  store i32 %607, i32* %33, align 4
  br label %508

608:                                              ; preds = %542, %508
  %609 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %610 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %609, i32 0, i32 1
  %611 = load i32, i32* %610, align 8
  %612 = load i32, i32* @OPTS_TYPE_HOOK23, align 4
  %613 = and i32 %611, %612
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %788

615:                                              ; preds = %608
  %616 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %617 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %618 = load i32, i32* @KERN_RUN_23, align 4
  %619 = load i32, i32* %11, align 4
  %620 = call i32 @run_kernel(%struct.TYPE_36__* %616, %struct.TYPE_42__* %617, i32 %618, i32 %619, i32 0, i32 0)
  %621 = icmp eq i32 %620, -1
  br i1 %621, label %622, label %623

622:                                              ; preds = %615
  store i32 -1, i32* %7, align 4
  br label %993

623:                                              ; preds = %615
  %624 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %625 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %624, i32 0, i32 1
  %626 = load i32, i32* %625, align 4
  %627 = icmp eq i32 %626, 1
  br i1 %627, label %628, label %643

628:                                              ; preds = %623
  %629 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %630 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %631 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %630, i32 0, i32 13
  %632 = load i32, i32* %631, align 4
  %633 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %634 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %633, i32 0, i32 12
  %635 = load i32, i32* %634, align 8
  %636 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %637 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %636, i32 0, i32 3
  %638 = load i32, i32* %637, align 4
  %639 = call i32 @hc_cuMemcpyDtoH(%struct.TYPE_36__* %629, i32 %632, i32 %635, i32 %638)
  %640 = icmp eq i32 %639, -1
  br i1 %640, label %641, label %642

641:                                              ; preds = %628
  store i32 -1, i32* %7, align 4
  br label %993

642:                                              ; preds = %628
  br label %643

643:                                              ; preds = %642, %623
  %644 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %645 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %644, i32 0, i32 2
  %646 = load i32, i32* %645, align 8
  %647 = icmp eq i32 %646, 1
  br i1 %647, label %648, label %667

648:                                              ; preds = %643
  %649 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %650 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %651 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %650, i32 0, i32 14
  %652 = load i32, i32* %651, align 8
  %653 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %654 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %653, i32 0, i32 11
  %655 = load i32, i32* %654, align 4
  %656 = load i32, i32* @CL_TRUE, align 4
  %657 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %658 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %657, i32 0, i32 3
  %659 = load i32, i32* %658, align 4
  %660 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %661 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %660, i32 0, i32 13
  %662 = load i32, i32* %661, align 4
  %663 = call i32 @hc_clEnqueueReadBuffer(%struct.TYPE_36__* %649, i32 %652, i32 %655, i32 %656, i32 0, i32 %659, i32 %662, i32 0, i32* null, i32* null)
  %664 = icmp eq i32 %663, -1
  br i1 %664, label %665, label %666

665:                                              ; preds = %648
  store i32 -1, i32* %7, align 4
  br label %993

666:                                              ; preds = %648
  br label %667

667:                                              ; preds = %666, %643
  %668 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %669 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %668, i32 0, i32 4
  %670 = load i64, i64* %669, align 8
  %671 = trunc i64 %670 to i32
  store i32 %671, i32* %39, align 4
  %672 = load i32, i32* %39, align 4
  %673 = call i64 @hccalloc(i32 %672, i32 48)
  %674 = inttoptr i64 %673 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %674, %struct.TYPE_41__** %40, align 8
  store i32 0, i32* %41, align 4
  br label %675

675:                                              ; preds = %710, %667
  %676 = load i32, i32* %41, align 4
  %677 = load i32, i32* %39, align 4
  %678 = icmp slt i32 %676, %677
  br i1 %678, label %679, label %713

679:                                              ; preds = %675
  %680 = load %struct.TYPE_41__*, %struct.TYPE_41__** %40, align 8
  %681 = load i32, i32* %41, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %680, i64 %682
  store %struct.TYPE_41__* %683, %struct.TYPE_41__** %42, align 8
  %684 = load i32, i32* %41, align 4
  %685 = load %struct.TYPE_41__*, %struct.TYPE_41__** %42, align 8
  %686 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %685, i32 0, i32 0
  store i32 %684, i32* %686, align 8
  %687 = load i32, i32* %39, align 4
  %688 = load %struct.TYPE_41__*, %struct.TYPE_41__** %42, align 8
  %689 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %688, i32 0, i32 1
  store i32 %687, i32* %689, align 4
  %690 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %691 = load %struct.TYPE_41__*, %struct.TYPE_41__** %42, align 8
  %692 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %691, i32 0, i32 7
  store %struct.TYPE_40__* %690, %struct.TYPE_40__** %692, align 8
  %693 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %694 = load %struct.TYPE_41__*, %struct.TYPE_41__** %42, align 8
  %695 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %694, i32 0, i32 6
  store %struct.TYPE_39__* %693, %struct.TYPE_39__** %695, align 8
  %696 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %697 = load %struct.TYPE_41__*, %struct.TYPE_41__** %42, align 8
  %698 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %697, i32 0, i32 5
  store %struct.TYPE_42__* %696, %struct.TYPE_42__** %698, align 8
  %699 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %700 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %699, i32 0, i32 1
  %701 = load i32, i32* %700, align 8
  %702 = load %struct.TYPE_41__*, %struct.TYPE_41__** %42, align 8
  %703 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %702, i32 0, i32 4
  store i32 %701, i32* %703, align 8
  %704 = load i32, i32* %13, align 4
  %705 = load %struct.TYPE_41__*, %struct.TYPE_41__** %42, align 8
  %706 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %705, i32 0, i32 2
  store i32 %704, i32* %706, align 8
  %707 = load i32, i32* %11, align 4
  %708 = load %struct.TYPE_41__*, %struct.TYPE_41__** %42, align 8
  %709 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %708, i32 0, i32 3
  store i32 %707, i32* %709, align 4
  br label %710

710:                                              ; preds = %679
  %711 = load i32, i32* %41, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %41, align 4
  br label %675

713:                                              ; preds = %675
  %714 = load i32, i32* %39, align 4
  %715 = call i64 @calloc(i32 %714, i32 48)
  %716 = inttoptr i64 %715 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %716, %struct.TYPE_41__** %43, align 8
  store i32 0, i32* %44, align 4
  br label %717

717:                                              ; preds = %733, %713
  %718 = load i32, i32* %44, align 4
  %719 = load i32, i32* %39, align 4
  %720 = icmp slt i32 %718, %719
  br i1 %720, label %721, label %736

721:                                              ; preds = %717
  %722 = load %struct.TYPE_41__*, %struct.TYPE_41__** %40, align 8
  %723 = load i32, i32* %44, align 4
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %722, i64 %724
  store %struct.TYPE_41__* %725, %struct.TYPE_41__** %45, align 8
  %726 = load %struct.TYPE_41__*, %struct.TYPE_41__** %43, align 8
  %727 = load i32, i32* %44, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %726, i64 %728
  %730 = load i32, i32* @hook23_thread, align 4
  %731 = load %struct.TYPE_41__*, %struct.TYPE_41__** %45, align 8
  %732 = call i32 @hc_thread_create(%struct.TYPE_41__* byval(%struct.TYPE_41__) align 8 %729, i32 %730, %struct.TYPE_41__* %731)
  br label %733

733:                                              ; preds = %721
  %734 = load i32, i32* %44, align 4
  %735 = add nsw i32 %734, 1
  store i32 %735, i32* %44, align 4
  br label %717

736:                                              ; preds = %717
  %737 = load i32, i32* %39, align 4
  %738 = load %struct.TYPE_41__*, %struct.TYPE_41__** %43, align 8
  %739 = call i32 @hc_thread_wait(i32 %737, %struct.TYPE_41__* %738)
  %740 = load %struct.TYPE_41__*, %struct.TYPE_41__** %43, align 8
  %741 = call i32 @hcfree(%struct.TYPE_41__* %740)
  %742 = load %struct.TYPE_41__*, %struct.TYPE_41__** %40, align 8
  %743 = call i32 @hcfree(%struct.TYPE_41__* %742)
  %744 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %745 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %744, i32 0, i32 1
  %746 = load i32, i32* %745, align 4
  %747 = icmp eq i32 %746, 1
  br i1 %747, label %748, label %763

748:                                              ; preds = %736
  %749 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %750 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %751 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %750, i32 0, i32 12
  %752 = load i32, i32* %751, align 8
  %753 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %754 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %753, i32 0, i32 13
  %755 = load i32, i32* %754, align 4
  %756 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %757 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %756, i32 0, i32 3
  %758 = load i32, i32* %757, align 4
  %759 = call i32 @hc_cuMemcpyHtoD(%struct.TYPE_36__* %749, i32 %752, i32 %755, i32 %758)
  %760 = icmp eq i32 %759, -1
  br i1 %760, label %761, label %762

761:                                              ; preds = %748
  store i32 -1, i32* %7, align 4
  br label %993

762:                                              ; preds = %748
  br label %763

763:                                              ; preds = %762, %736
  %764 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %765 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %764, i32 0, i32 2
  %766 = load i32, i32* %765, align 8
  %767 = icmp eq i32 %766, 1
  br i1 %767, label %768, label %787

768:                                              ; preds = %763
  %769 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %770 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %771 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %770, i32 0, i32 14
  %772 = load i32, i32* %771, align 8
  %773 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %774 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %773, i32 0, i32 11
  %775 = load i32, i32* %774, align 4
  %776 = load i32, i32* @CL_TRUE, align 4
  %777 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %778 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %777, i32 0, i32 3
  %779 = load i32, i32* %778, align 4
  %780 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %781 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %780, i32 0, i32 13
  %782 = load i32, i32* %781, align 4
  %783 = call i32 @hc_clEnqueueWriteBuffer(%struct.TYPE_36__* %769, i32 %772, i32 %775, i32 %776, i32 0, i32 %779, i32 %782, i32 0, i32* null, i32* null)
  %784 = icmp eq i32 %783, -1
  br i1 %784, label %785, label %786

785:                                              ; preds = %768
  store i32 -1, i32* %7, align 4
  br label %993

786:                                              ; preds = %768
  br label %787

787:                                              ; preds = %786, %763
  br label %788

788:                                              ; preds = %787, %608
  br label %789

789:                                              ; preds = %788, %493
  %790 = load i32, i32* %21, align 4
  %791 = icmp eq i32 %790, 1
  br i1 %791, label %792, label %871

792:                                              ; preds = %789
  %793 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %794 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %793, i32 0, i32 1
  %795 = load i32, i32* %794, align 8
  %796 = load i32, i32* @OPTS_TYPE_INIT2, align 4
  %797 = and i32 %795, %796
  %798 = icmp ne i32 %797, 0
  br i1 %798, label %799, label %808

799:                                              ; preds = %792
  %800 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %801 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %802 = load i32, i32* @KERN_RUN_INIT2, align 4
  %803 = load i32, i32* %11, align 4
  %804 = call i32 @run_kernel(%struct.TYPE_36__* %800, %struct.TYPE_42__* %801, i32 %802, i32 %803, i32 0, i32 0)
  %805 = icmp eq i32 %804, -1
  br i1 %805, label %806, label %807

806:                                              ; preds = %799
  store i32 -1, i32* %7, align 4
  br label %993

807:                                              ; preds = %799
  br label %808

808:                                              ; preds = %807, %792
  %809 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %810 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %809, i32 0, i32 1
  %811 = load i32, i32* %810, align 8
  %812 = load i32, i32* @OPTS_TYPE_LOOP2, align 4
  %813 = and i32 %811, %812
  %814 = icmp ne i32 %813, 0
  br i1 %814, label %815, label %870

815:                                              ; preds = %808
  %816 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %817 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %816, i32 0, i32 0
  %818 = load %struct.TYPE_37__*, %struct.TYPE_37__** %817, align 8
  %819 = load i32, i32* %13, align 4
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %818, i64 %820
  %822 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %821, i32 0, i32 1
  %823 = load i32, i32* %822, align 4
  store i32 %823, i32* %46, align 4
  %824 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %825 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %824, i32 0, i32 4
  %826 = load i32, i32* %825, align 8
  store i32 %826, i32* %47, align 4
  store i32 0, i32* %48, align 4
  store i32 0, i32* %49, align 4
  br label %827

827:                                              ; preds = %863, %815
  %828 = load i32, i32* %48, align 4
  %829 = load i32, i32* %46, align 4
  %830 = icmp slt i32 %828, %829
  br i1 %830, label %831, label %869

831:                                              ; preds = %827
  %832 = load i32, i32* %46, align 4
  %833 = load i32, i32* %48, align 4
  %834 = sub nsw i32 %832, %833
  store i32 %834, i32* %50, align 4
  %835 = load i32, i32* %50, align 4
  %836 = load i32, i32* %47, align 4
  %837 = call i32 @MIN(i32 %835, i32 %836)
  store i32 %837, i32* %50, align 4
  %838 = load i32, i32* %48, align 4
  %839 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %840 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %839, i32 0, i32 5
  %841 = load i32*, i32** %840, align 8
  %842 = getelementptr inbounds i32, i32* %841, i64 28
  store i32 %838, i32* %842, align 4
  %843 = load i32, i32* %50, align 4
  %844 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %845 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %844, i32 0, i32 5
  %846 = load i32*, i32** %845, align 8
  %847 = getelementptr inbounds i32, i32* %846, i64 29
  store i32 %843, i32* %847, align 4
  %848 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %849 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %850 = load i32, i32* @KERN_RUN_LOOP2, align 4
  %851 = load i32, i32* %11, align 4
  %852 = load i32, i32* %49, align 4
  %853 = call i32 @run_kernel(%struct.TYPE_36__* %848, %struct.TYPE_42__* %849, i32 %850, i32 %851, i32 1, i32 %852)
  %854 = icmp eq i32 %853, -1
  br i1 %854, label %855, label %856

855:                                              ; preds = %831
  store i32 -1, i32* %7, align 4
  br label %993

856:                                              ; preds = %831
  %857 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %858 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %857, i32 0, i32 0
  %859 = load i32, i32* %858, align 4
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %861, label %862

861:                                              ; preds = %856
  br label %869

862:                                              ; preds = %856
  br label %863

863:                                              ; preds = %862
  %864 = load i32, i32* %47, align 4
  %865 = load i32, i32* %48, align 4
  %866 = add nsw i32 %865, %864
  store i32 %866, i32* %48, align 4
  %867 = load i32, i32* %49, align 4
  %868 = add nsw i32 %867, 1
  store i32 %868, i32* %49, align 4
  br label %827

869:                                              ; preds = %861, %827
  br label %870

870:                                              ; preds = %869, %808
  br label %871

871:                                              ; preds = %870, %789
  %872 = load i32, i32* %22, align 4
  %873 = icmp eq i32 %872, 1
  br i1 %873, label %874, label %940

874:                                              ; preds = %871
  %875 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %876 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %875, i32 0, i32 1
  %877 = load i32, i32* %876, align 8
  %878 = load i32, i32* @OPTS_TYPE_DEEP_COMP_KERNEL, align 4
  %879 = and i32 %877, %878
  %880 = icmp ne i32 %879, 0
  br i1 %880, label %881, label %930

881:                                              ; preds = %874
  %882 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %883 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %882, i32 0, i32 0
  %884 = load %struct.TYPE_37__*, %struct.TYPE_37__** %883, align 8
  %885 = load i32, i32* %13, align 4
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %884, i64 %886
  %888 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %887, i32 0, i32 2
  %889 = load i32, i32* %888, align 4
  store i32 %889, i32* %51, align 4
  store i32 0, i32* %52, align 4
  br label %890

890:                                              ; preds = %926, %881
  %891 = load i32, i32* %52, align 4
  %892 = load i32, i32* %51, align 4
  %893 = icmp slt i32 %891, %892
  br i1 %893, label %894, label %929

894:                                              ; preds = %890
  %895 = load i32, i32* %52, align 4
  %896 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %897 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %896, i32 0, i32 5
  %898 = load i32*, i32** %897, align 8
  %899 = getelementptr inbounds i32, i32* %898, i64 28
  store i32 %895, i32* %899, align 4
  %900 = load i32, i32* %51, align 4
  %901 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %902 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %901, i32 0, i32 5
  %903 = load i32*, i32** %902, align 8
  %904 = getelementptr inbounds i32, i32* %903, i64 29
  store i32 %900, i32* %904, align 4
  %905 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %906 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %905, i32 0, i32 0
  %907 = load i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32)** %906, align 8
  %908 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %909 = load i32, i32* %13, align 4
  %910 = load i32, i32* %52, align 4
  %911 = call i32 %907(%struct.TYPE_43__* %908, i32 %909, i32 %910)
  store i32 %911, i32* %53, align 4
  %912 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %913 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %914 = load i32, i32* %53, align 4
  %915 = load i32, i32* %11, align 4
  %916 = call i32 @run_kernel(%struct.TYPE_36__* %912, %struct.TYPE_42__* %913, i32 %914, i32 %915, i32 0, i32 0)
  %917 = icmp eq i32 %916, -1
  br i1 %917, label %918, label %919

918:                                              ; preds = %894
  store i32 -1, i32* %7, align 4
  br label %993

919:                                              ; preds = %894
  %920 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %921 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %920, i32 0, i32 0
  %922 = load i32, i32* %921, align 4
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %924, label %925

924:                                              ; preds = %919
  br label %929

925:                                              ; preds = %919
  br label %926

926:                                              ; preds = %925
  %927 = load i32, i32* %52, align 4
  %928 = add nsw i32 %927, 1
  store i32 %928, i32* %52, align 4
  br label %890

929:                                              ; preds = %924, %890
  br label %939

930:                                              ; preds = %874
  %931 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %932 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %933 = load i32, i32* @KERN_RUN_3, align 4
  %934 = load i32, i32* %11, align 4
  %935 = call i32 @run_kernel(%struct.TYPE_36__* %931, %struct.TYPE_42__* %932, i32 %933, i32 %934, i32 0, i32 0)
  %936 = icmp eq i32 %935, -1
  br i1 %936, label %937, label %938

937:                                              ; preds = %930
  store i32 -1, i32* %7, align 4
  br label %993

938:                                              ; preds = %930
  br label %939

939:                                              ; preds = %938, %929
  br label %940

940:                                              ; preds = %939, %871
  %941 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %942 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %941, i32 0, i32 1
  %943 = load i32, i32* %942, align 8
  %944 = load i32, i32* @OPTS_TYPE_HOOK12, align 4
  %945 = and i32 %943, %944
  %946 = icmp ne i32 %945, 0
  br i1 %946, label %954, label %947

947:                                              ; preds = %940
  %948 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %949 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %948, i32 0, i32 1
  %950 = load i32, i32* %949, align 8
  %951 = load i32, i32* @OPTS_TYPE_HOOK23, align 4
  %952 = and i32 %950, %951
  %953 = icmp ne i32 %952, 0
  br i1 %953, label %954, label %991

954:                                              ; preds = %947, %940
  %955 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %956 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %955, i32 0, i32 1
  %957 = load i32, i32* %956, align 4
  %958 = icmp eq i32 %957, 1
  br i1 %958, label %959, label %972

959:                                              ; preds = %954
  %960 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %961 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %962 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %963 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %962, i32 0, i32 12
  %964 = load i32, i32* %963, align 8
  %965 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %966 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %965, i32 0, i32 3
  %967 = load i32, i32* %966, align 4
  %968 = call i32 @run_cuda_kernel_bzero(%struct.TYPE_36__* %960, %struct.TYPE_42__* %961, i32 %964, i32 %967)
  %969 = icmp eq i32 %968, -1
  br i1 %969, label %970, label %971

970:                                              ; preds = %959
  store i32 -1, i32* %7, align 4
  br label %993

971:                                              ; preds = %959
  br label %972

972:                                              ; preds = %971, %954
  %973 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %974 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %973, i32 0, i32 2
  %975 = load i32, i32* %974, align 8
  %976 = icmp eq i32 %975, 1
  br i1 %976, label %977, label %990

977:                                              ; preds = %972
  %978 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %979 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %980 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %981 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %980, i32 0, i32 11
  %982 = load i32, i32* %981, align 4
  %983 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %984 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %983, i32 0, i32 3
  %985 = load i32, i32* %984, align 4
  %986 = call i32 @run_opencl_kernel_bzero(%struct.TYPE_36__* %978, %struct.TYPE_42__* %979, i32 %982, i32 %985)
  %987 = icmp eq i32 %986, -1
  br i1 %987, label %988, label %989

988:                                              ; preds = %977
  store i32 -1, i32* %7, align 4
  br label %993

989:                                              ; preds = %977
  br label %990

990:                                              ; preds = %989, %972
  br label %991

991:                                              ; preds = %990, %947
  br label %992

992:                                              ; preds = %991, %241
  store i32 0, i32* %7, align 4
  br label %993

993:                                              ; preds = %992, %988, %970, %937, %918, %855, %806, %785, %761, %665, %641, %622, %584, %536, %489, %465, %369, %345, %326, %311, %302, %288, %264, %239, %227, %217, %204, %181, %160, %143, %136, %120, %73
  %994 = load i32, i32* %7, align 4
  ret i32 %994
}

declare dso_local i32 @process_stdout(%struct.TYPE_36__*, %struct.TYPE_42__*, i32) #1

declare dso_local i32 @run_cuda_kernel_bzero(%struct.TYPE_36__*, %struct.TYPE_42__*, i32, i32) #1

declare dso_local i32 @run_opencl_kernel_bzero(%struct.TYPE_36__*, %struct.TYPE_42__*, i32, i32) #1

declare dso_local i32 @run_kernel_tm(%struct.TYPE_36__*, %struct.TYPE_42__*) #1

declare dso_local i32 @hc_cuMemcpyDtoD(%struct.TYPE_36__*, i32, i32, i32) #1

declare dso_local i32 @hc_clEnqueueCopyBuffer(%struct.TYPE_36__*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @run_kernel(%struct.TYPE_36__*, %struct.TYPE_42__*, i32, i32, i32, i32) #1

declare dso_local i32 @run_kernel_amp(%struct.TYPE_36__*, %struct.TYPE_42__*, i32) #1

declare dso_local i32 @hc_cuMemcpyDtoH(%struct.TYPE_36__*, i32, i32, i32) #1

declare dso_local i32 @hc_clEnqueueReadBuffer(%struct.TYPE_36__*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @hccalloc(i32, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @hc_thread_create(%struct.TYPE_41__* byval(%struct.TYPE_41__) align 8, i32, %struct.TYPE_41__*) #1

declare dso_local i32 @hc_thread_wait(i32, %struct.TYPE_41__*) #1

declare dso_local i32 @hcfree(%struct.TYPE_41__*) #1

declare dso_local i32 @hc_cuMemcpyHtoD(%struct.TYPE_36__*, i32, i32, i32) #1

declare dso_local i32 @hc_clEnqueueWriteBuffer(%struct.TYPE_36__*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local double @hc_timer_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
