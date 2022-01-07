; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_output_collapsing_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_output_collapsing_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32, i32*, i32*, i32* }
%struct.strbuf = type { i32 }

@GRAPH_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_graph*, %struct.strbuf*)* @graph_output_collapsing_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_output_collapsing_line(%struct.git_graph* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.git_graph*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  store i16 0, i16* %6, align 2
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %15 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %20 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 -1, i32* %24, align 4
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %12

28:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %184, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %32 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %187

35:                                               ; preds = %29
  %36 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %37 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %184

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %47, 2
  %49 = load i32, i32* %5, align 4
  %50 = icmp sle i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %53, 2
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %46
  %58 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %59 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, -1
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %70 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  br label %183

75:                                               ; preds = %46
  %76 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %77 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %120

85:                                               ; preds = %75
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %88 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %86, i32* %93, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %119

96:                                               ; preds = %85
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = mul nsw i32 %99, 2
  %101 = add nsw i32 %100, 3
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %115, %96
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 %104, 2
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %110 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  br label %115

115:                                              ; preds = %107
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 2
  store i32 %117, i32* %10, align 4
  br label %102

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %85
  br label %182

120:                                              ; preds = %75
  %121 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %122 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %181

132:                                              ; preds = %120
  %133 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %134 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp sgt i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %146 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sub nsw i32 %148, 2
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %157 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sub nsw i32 %159, 3
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %170 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sub nsw i32 %172, 2
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  store i32 %168, i32* %175, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %180

178:                                              ; preds = %132
  %179 = load i32, i32* %5, align 4
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %178, %132
  br label %181

181:                                              ; preds = %180, %131
  br label %182

182:                                              ; preds = %181, %119
  br label %183

183:                                              ; preds = %182, %57
  br label %184

184:                                              ; preds = %183, %45
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %29

187:                                              ; preds = %29
  %188 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %189 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %192 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %190, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %187
  %200 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %201 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %199, %187
  store i32 0, i32* %5, align 4
  br label %205

205:                                              ; preds = %296, %204
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %208 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %299

211:                                              ; preds = %205
  %212 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %213 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %211
  %222 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %223 = call i32 @strbuf_addch(%struct.strbuf* %222, i8 signext 32)
  br label %295

224:                                              ; preds = %211
  %225 = load i32, i32* %11, align 4
  %226 = mul nsw i32 %225, 2
  %227 = load i32, i32* %5, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %224
  %230 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %231 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %232 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = call i32 @strbuf_write_column(%struct.strbuf* %230, i32* %236, i8 signext 124)
  br label %294

238:                                              ; preds = %224
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %8, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %269

242:                                              ; preds = %238
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* %7, align 4
  %245 = sub nsw i32 %244, 1
  %246 = icmp ne i32 %243, %245
  br i1 %246, label %247, label %269

247:                                              ; preds = %242
  %248 = load i32, i32* %5, align 4
  %249 = load i32, i32* %11, align 4
  %250 = mul nsw i32 %249, 2
  %251 = add nsw i32 %250, 3
  %252 = icmp ne i32 %248, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %247
  %254 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %255 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32 -1, i32* %259, align 4
  br label %260

260:                                              ; preds = %253, %247
  store i16 1, i16* %6, align 2
  %261 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %262 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %263 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %262, i32 0, i32 3
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = call i32 @strbuf_write_column(%struct.strbuf* %261, i32* %267, i8 signext 95)
  br label %293

269:                                              ; preds = %242, %238
  %270 = load i16, i16* %6, align 2
  %271 = sext i16 %270 to i32
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %284

273:                                              ; preds = %269
  %274 = load i32, i32* %5, align 4
  %275 = load i32, i32* %7, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %284

277:                                              ; preds = %273
  %278 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %279 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %5, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  store i32 -1, i32* %283, align 4
  br label %284

284:                                              ; preds = %277, %273, %269
  %285 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %286 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %287 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %286, i32 0, i32 3
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = call i32 @strbuf_write_column(%struct.strbuf* %285, i32* %291, i8 signext 47)
  br label %293

293:                                              ; preds = %284, %260
  br label %294

294:                                              ; preds = %293, %229
  br label %295

295:                                              ; preds = %294, %221
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %5, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %5, align 4
  br label %205

299:                                              ; preds = %205
  %300 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %301 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %302 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %303 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @graph_pad_horizontally(%struct.git_graph* %300, %struct.strbuf* %301, i32 %304)
  %306 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %307 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %306, i32 0, i32 2
  %308 = load i32*, i32** %307, align 8
  %309 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %310 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = call i32 @SWAP(i32* %308, i32* %311)
  %313 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %314 = call i64 @graph_is_mapping_correct(%struct.git_graph* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %299
  %317 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %318 = load i32, i32* @GRAPH_PADDING, align 4
  %319 = call i32 @graph_update_state(%struct.git_graph* %317, i32 %318)
  br label %320

320:                                              ; preds = %316, %299
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_write_column(%struct.strbuf*, i32*, i8 signext) #1

declare dso_local i32 @graph_pad_horizontally(%struct.git_graph*, %struct.strbuf*, i32) #1

declare dso_local i32 @SWAP(i32*, i32*) #1

declare dso_local i64 @graph_is_mapping_correct(%struct.git_graph*) #1

declare dso_local i32 @graph_update_state(%struct.git_graph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
