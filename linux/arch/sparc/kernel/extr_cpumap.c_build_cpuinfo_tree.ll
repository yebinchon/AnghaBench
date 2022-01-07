; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_cpumap.c_build_cpuinfo_tree.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_cpumap.c_build_cpuinfo_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_tree = type { i32, %struct.cpuinfo_node*, %struct.TYPE_2__* }
%struct.cpuinfo_node = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cpuinfo_level = type { i32 }

@CPUINFO_LVL_MAX = common dso_local global i32 0, align 4
@nodes = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@CPUINFO_LVL_PROC = common dso_local global i32 0, align 4
@CPUINFO_LVL_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpuinfo_tree* ()* @build_cpuinfo_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpuinfo_tree* @build_cpuinfo_tree() #0 {
  %1 = alloca %struct.cpuinfo_tree*, align 8
  %2 = alloca %struct.cpuinfo_tree*, align 8
  %3 = alloca %struct.cpuinfo_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = load i32, i32* @CPUINFO_LVL_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca %struct.cpuinfo_level, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %20 = load i32, i32* @CPUINFO_LVL_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %23 = load i32, i32* @CPUINFO_LVL_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  %26 = load i32, i32* @CPUINFO_LVL_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %8, align 8
  %29 = call i32 @enumerate_cpuinfo_nodes(%struct.cpuinfo_level* %19)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %31 = load i32, i32* @nodes, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @struct_size(%struct.cpuinfo_tree* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.cpuinfo_tree* @kzalloc(i32 %33, i32 %34)
  store %struct.cpuinfo_tree* %35, %struct.cpuinfo_tree** %2, align 8
  %36 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %37 = icmp ne %struct.cpuinfo_tree* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %0
  store %struct.cpuinfo_tree* null, %struct.cpuinfo_tree** %1, align 8
  store i32 1, i32* %15, align 4
  br label %336

39:                                               ; preds = %0
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %42 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %44 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %43, i32 0, i32 2
  %45 = mul nuw i64 4, %17
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memcpy(%struct.TYPE_2__** %44, %struct.cpuinfo_level* %19, i32 %46)
  %48 = load i32, i32* @cpu_online_mask, align 4
  %49 = call i32 @cpumask_first(i32 %48)
  store i32 %49, i32* %11, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @CPUINFO_LVL_PROC, align 4
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %144, %39
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @CPUINFO_LVL_ROOT, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %147

55:                                               ; preds = %51
  %56 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %57 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %25, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %69 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %68, i32 0, i32 1
  %70 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %70, i64 %72
  store %struct.cpuinfo_node* %73, %struct.cpuinfo_node** %3, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @cpuinfo_id(i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %55
  %83 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %84 = call i32 @kfree(%struct.cpuinfo_tree* %83)
  store %struct.cpuinfo_tree* null, %struct.cpuinfo_tree** %1, align 8
  store i32 1, i32* %15, align 4
  br label %336

85:                                               ; preds = %55
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %88 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %91 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %93 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %92, i32 0, i32 2
  store i32 1, i32* %93, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @CPUINFO_LVL_ROOT, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %85
  %98 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %99 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  br label %108

107:                                              ; preds = %85
  br label %108

108:                                              ; preds = %107, %97
  %109 = phi i32 [ %106, %97 ], [ -1, %107 ]
  %110 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %111 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* @CPUINFO_LVL_PROC, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* %11, align 4
  br label %127

117:                                              ; preds = %108
  %118 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %119 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %118, i32 0, i32 2
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  br label %127

127:                                              ; preds = %117, %115
  %128 = phi i32 [ %116, %115 ], [ %126, %117 ]
  %129 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %130 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 4
  %131 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %132 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %131, i32 0, i32 5
  store i32 %128, i32* %132, align 4
  %133 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %134 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %133, i32 0, i32 4
  store i32 %128, i32* %134, align 4
  %135 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %136 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %28, i64 %139
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %22, i64 %142
  store i32 1, i32* %143, align 4
  br label %144

144:                                              ; preds = %127
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %14, align 4
  br label %51

147:                                              ; preds = %51
  %148 = call i32 (...) @num_possible_cpus()
  %149 = sub nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %150

150:                                              ; preds = %159, %147
  %151 = load i32, i32* %13, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i32, i32* %13, align 4
  %155 = call i64 @cpu_online(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %162

158:                                              ; preds = %153
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %13, align 4
  br label %150

162:                                              ; preds = %157, %150
  br label %163

163:                                              ; preds = %332, %172, %162
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %334

168:                                              ; preds = %163
  %169 = load i32, i32* %11, align 4
  %170 = call i64 @cpu_online(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  br label %163

173:                                              ; preds = %168
  %174 = load i32, i32* @CPUINFO_LVL_PROC, align 4
  store i32 %174, i32* %14, align 4
  br label %175

175:                                              ; preds = %329, %173
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* @CPUINFO_LVL_ROOT, align 4
  %178 = icmp sge i32 %176, %177
  br i1 %178, label %179, label %332

179:                                              ; preds = %175
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @cpuinfo_id(i32 %180, i32 %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp slt i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i64 @unlikely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %179
  %189 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %190 = call i32 @kfree(%struct.cpuinfo_tree* %189)
  store %struct.cpuinfo_tree* null, %struct.cpuinfo_tree** %1, align 8
  store i32 1, i32* %15, align 4
  br label %336

191:                                              ; preds = %179
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %28, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %192, %196
  br i1 %197, label %202, label %198

198:                                              ; preds = %191
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %322

202:                                              ; preds = %198, %191
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %28, i64 %205
  store i32 %203, i32* %206, align 4
  %207 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %208 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %207, i32 0, i32 1
  %209 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %25, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %209, i64 %214
  store %struct.cpuinfo_node* %215, %struct.cpuinfo_node** %3, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %22, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %221 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %22, i64 %223
  store i32 1, i32* %224, align 4
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %13, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %202
  %229 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %230 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %228, %202
  %234 = load i32, i32* %14, align 4
  %235 = load i32, i32* @CPUINFO_LVL_ROOT, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %233
  %238 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %239 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %238, i32 0, i32 3
  store i32 -1, i32* %239, align 4
  br label %248

240:                                              ; preds = %233
  %241 = load i32, i32* %14, align 4
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %25, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %247 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %240, %237
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* @CPUINFO_LVL_PROC, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %264

252:                                              ; preds = %248
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %13, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = load i32, i32* %11, align 4
  br label %260

258:                                              ; preds = %252
  %259 = load i32, i32* %12, align 4
  br label %260

260:                                              ; preds = %258, %256
  %261 = phi i32 [ %257, %256 ], [ %259, %258 ]
  %262 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %263 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %262, i32 0, i32 5
  store i32 %261, i32* %263, align 4
  br label %273

264:                                              ; preds = %248
  %265 = load i32, i32* %14, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %25, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %269, 1
  %271 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %272 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %271, i32 0, i32 5
  store i32 %270, i32* %272, align 4
  br label %273

273:                                              ; preds = %264, %260
  %274 = load i32, i32* %14, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %25, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 4
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %9, align 4
  %280 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %281 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %280, i32 0, i32 2
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = load i32, i32* %14, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = icmp sle i32 %279, %287
  br i1 %288, label %289, label %321

289:                                              ; preds = %273
  %290 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %291 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %290, i32 0, i32 1
  %292 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %291, align 8
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %292, i64 %294
  store %struct.cpuinfo_node* %295, %struct.cpuinfo_node** %3, align 8
  %296 = load i32, i32* %10, align 4
  %297 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %298 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %297, i32 0, i32 0
  store i32 %296, i32* %298, align 4
  %299 = load i32, i32* %14, align 4
  %300 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %301 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %300, i32 0, i32 1
  store i32 %299, i32* %301, align 4
  %302 = load i32, i32* %14, align 4
  %303 = load i32, i32* @CPUINFO_LVL_PROC, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %289
  %306 = load i32, i32* %11, align 4
  br label %313

307:                                              ; preds = %289
  %308 = load i32, i32* %14, align 4
  %309 = add nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %25, i64 %310
  %312 = load i32, i32* %311, align 4
  br label %313

313:                                              ; preds = %307, %305
  %314 = phi i32 [ %306, %305 ], [ %312, %307 ]
  %315 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %316 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %315, i32 0, i32 6
  store i32 %314, i32* %316, align 4
  %317 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %318 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %317, i32 0, i32 5
  store i32 %314, i32* %318, align 4
  %319 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %320 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %319, i32 0, i32 4
  store i32 %314, i32* %320, align 4
  br label %321

321:                                              ; preds = %313, %273
  br label %328

322:                                              ; preds = %198
  %323 = load i32, i32* %14, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %22, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %325, align 4
  br label %328

328:                                              ; preds = %322, %321
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %14, align 4
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %14, align 4
  br label %175

332:                                              ; preds = %175
  %333 = load i32, i32* %11, align 4
  store i32 %333, i32* %12, align 4
  br label %163

334:                                              ; preds = %163
  %335 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  store %struct.cpuinfo_tree* %335, %struct.cpuinfo_tree** %1, align 8
  store i32 1, i32* %15, align 4
  br label %336

336:                                              ; preds = %334, %188, %82, %38
  %337 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %337)
  %338 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %1, align 8
  ret %struct.cpuinfo_tree* %338
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @enumerate_cpuinfo_nodes(%struct.cpuinfo_level*) #2

declare dso_local %struct.cpuinfo_tree* @kzalloc(i32, i32) #2

declare dso_local i32 @struct_size(%struct.cpuinfo_tree*, i32, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_2__**, %struct.cpuinfo_level*, i32) #2

declare dso_local i32 @cpumask_first(i32) #2

declare dso_local i32 @cpuinfo_id(i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @kfree(%struct.cpuinfo_tree*) #2

declare dso_local i32 @num_possible_cpus(...) #2

declare dso_local i64 @cpu_online(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
