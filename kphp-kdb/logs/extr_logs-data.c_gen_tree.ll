; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_gen_tree.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_gen_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@end_token = common dso_local global i64 0, align 8
@op_lb = common dso_local global i64 0, align 8
@priority = common dso_local global i32* null, align 8
@op_rb = common dso_local global i64 0, align 8
@FAIL = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @gen_tree(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = icmp eq %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %273

16:                                               ; preds = %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %4, align 8
  br label %18

18:                                               ; preds = %24, %16
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @end_token, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 1
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %4, align 8
  br label %18

27:                                               ; preds = %18
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = ptrtoint %struct.TYPE_10__* %28 to i64
  %31 = ptrtoint %struct.TYPE_10__* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call %struct.TYPE_11__** @dl_malloc0(i32 %39)
  store %struct.TYPE_11__** %40, %struct.TYPE_11__*** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call %struct.TYPE_10__* @dl_malloc(i32 %44)
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %214, %27
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %217

50:                                               ; preds = %46
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @IS_OP(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %194

59:                                               ; preds = %50
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @op_lb, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %59
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %72
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %76
  %78 = bitcast %struct.TYPE_10__* %73 to i8*
  %79 = bitcast %struct.TYPE_10__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 8, i1 false)
  br label %193

80:                                               ; preds = %59
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @IS_PREFIX_UN(i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %129, label %89

89:                                               ; preds = %80
  %90 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = load i32*, i32** @priority, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %92, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @upd(%struct.TYPE_11__** %90, %struct.TYPE_10__* %91, i32* %10, i32* %11, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %129, label %103

103:                                              ; preds = %89
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %115, %103
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %109, i64 %111
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = call i32 (%struct.TYPE_11__*, ...) bitcast (i32 (...)* @del_node to i32 (%struct.TYPE_11__*, ...)*)(%struct.TYPE_11__* %113)
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %104

118:                                              ; preds = %104
  %119 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 8
  %123 = call i32 (%struct.TYPE_11__**, i64, ...) bitcast (i32 (...)* @dl_free to i32 (%struct.TYPE_11__**, i64, ...)*)(%struct.TYPE_11__** %119, i64 %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 8
  %128 = call i32 (%struct.TYPE_10__*, i64, ...) bitcast (i32 (...)* @dl_free to i32 (%struct.TYPE_10__*, i64, ...)*)(%struct.TYPE_10__* %124, i64 %127)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %273

129:                                              ; preds = %89, %80
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @op_rb, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %180

138:                                              ; preds = %129
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @op_lb, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %177

151:                                              ; preds = %141, %138
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %163, %151
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %157, i64 %159
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = call i32 (%struct.TYPE_11__*, ...) bitcast (i32 (...)* @del_node to i32 (%struct.TYPE_11__*, ...)*)(%struct.TYPE_11__* %161)
  br label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %152

166:                                              ; preds = %152
  %167 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 %169, 8
  %171 = call i32 (%struct.TYPE_11__**, i64, ...) bitcast (i32 (...)* @dl_free to i32 (%struct.TYPE_11__**, i64, ...)*)(%struct.TYPE_11__** %167, i64 %170)
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 8
  %176 = call i32 (%struct.TYPE_10__*, i64, ...) bitcast (i32 (...)* @dl_free to i32 (%struct.TYPE_10__*, i64, ...)*)(%struct.TYPE_10__* %172, i64 %175)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %273

177:                                              ; preds = %141
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %11, align 4
  br label %192

180:                                              ; preds = %129
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %11, align 4
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i64 %184
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i64 %188
  %190 = bitcast %struct.TYPE_10__* %185 to i8*
  %191 = bitcast %struct.TYPE_10__* %189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %190, i8* align 8 %191, i64 8, i1 false)
  br label %192

192:                                              ; preds = %180, %177
  br label %193

193:                                              ; preds = %192, %68
  br label %213

194:                                              ; preds = %50
  %195 = call %struct.TYPE_11__* (...) @new_node()
  %196 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %196, i64 %198
  store %struct.TYPE_11__* %195, %struct.TYPE_11__** %199, align 8
  %200 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %10, align 4
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %200, i64 %203
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i64 %209
  %211 = bitcast %struct.TYPE_10__* %206 to i8*
  %212 = bitcast %struct.TYPE_10__* %210 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %211, i8* align 8 %212, i64 8, i1 false)
  br label %213

213:                                              ; preds = %194, %193
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %46

217:                                              ; preds = %46
  %218 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %220 = load i32*, i32** @priority, align 8
  %221 = load i64, i64* @op_rb, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @upd(%struct.TYPE_11__** %218, %struct.TYPE_10__* %219, i32* %10, i32* %11, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %217
  %227 = load i32, i32* %10, align 4
  %228 = icmp ne i32 %227, 1
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = load i32, i32* %11, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %258

232:                                              ; preds = %229, %226, %217
  store i32 0, i32* %6, align 4
  br label %233

233:                                              ; preds = %244, %232
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* %10, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %247

237:                                              ; preds = %233
  %238 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %238, i64 %240
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %241, align 8
  %243 = call i32 (%struct.TYPE_11__*, ...) bitcast (i32 (...)* @del_node to i32 (%struct.TYPE_11__*, ...)*)(%struct.TYPE_11__* %242)
  br label %244

244:                                              ; preds = %237
  %245 = load i32, i32* %6, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %6, align 4
  br label %233

247:                                              ; preds = %233
  %248 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = mul i64 %250, 8
  %252 = call i32 (%struct.TYPE_11__**, i64, ...) bitcast (i32 (...)* @dl_free to i32 (%struct.TYPE_11__**, i64, ...)*)(%struct.TYPE_11__** %248, i64 %251)
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = mul i64 %255, 8
  %257 = call i32 (%struct.TYPE_10__*, i64, ...) bitcast (i32 (...)* @dl_free to i32 (%struct.TYPE_10__*, i64, ...)*)(%struct.TYPE_10__* %253, i64 %256)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %273

258:                                              ; preds = %229
  %259 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %259, i64 0
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %260, align 8
  store %struct.TYPE_11__* %261, %struct.TYPE_11__** %12, align 8
  %262 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = mul i64 %264, 8
  %266 = call i32 (%struct.TYPE_11__**, i64, ...) bitcast (i32 (...)* @dl_free to i32 (%struct.TYPE_11__**, i64, ...)*)(%struct.TYPE_11__** %262, i64 %265)
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = mul i64 %269, 8
  %271 = call i32 (%struct.TYPE_10__*, i64, ...) bitcast (i32 (...)* @dl_free to i32 (%struct.TYPE_10__*, i64, ...)*)(%struct.TYPE_10__* %267, i64 %270)
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %272, %struct.TYPE_11__** %2, align 8
  br label %273

273:                                              ; preds = %258, %247, %166, %118, %15
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %274
}

declare dso_local %struct.TYPE_11__** @dl_malloc0(i32) #1

declare dso_local %struct.TYPE_10__* @dl_malloc(i32) #1

declare dso_local i64 @IS_OP(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IS_PREFIX_UN(i64) #1

declare dso_local i32 @upd(%struct.TYPE_11__**, %struct.TYPE_10__*, i32*, i32*, i32) #1

declare dso_local i32 @del_node(...) #1

declare dso_local i32 @dl_free(...) #1

declare dso_local %struct.TYPE_11__* @new_node(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
