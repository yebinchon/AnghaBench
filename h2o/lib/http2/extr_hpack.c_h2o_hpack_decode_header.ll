; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_h2o_hpack_decode_header.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_h2o_hpack_decode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i64 }
%struct.st_h2o_hpack_header_table_entry_t = type { i8*, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }

@H2O_HTTP2_ERROR_COMPRESSION = common dso_local global i32 0, align 4
@HEADER_TABLE_OFFSET = common dso_local global i64 0, align 8
@h2o_hpack_static_table = common dso_local global %struct.TYPE_16__* null, align 8
@h2o_hpack_err_found_upper_case_in_header_name = common dso_local global i8* null, align 8
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@HEADER_TABLE_ENTRY_SIZE_OFFSET = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i32 0, align 4
@H2O_HTTP2_ERROR_INVALID_HEADER_CHAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_hpack_decode_header(i32* %0, i8* %1, %struct.TYPE_18__** %2, %struct.TYPE_18__* %3, i32** %4, i32* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_18__**, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.st_h2o_hpack_header_table_entry_t*, align 8
  %24 = alloca %struct.TYPE_17__*, align 8
  %25 = alloca %struct.st_h2o_hpack_header_table_entry_t*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %11, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %28

28:                                               ; preds = %132, %7
  %29 = load i32**, i32*** %13, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = icmp uge i32* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @H2O_HTTP2_ERROR_COMPRESSION, align 4
  store i32 %34, i32* %8, align 4
  br label %318

35:                                               ; preds = %28
  %36 = load i32**, i32*** %13, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 128
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32**, i32*** %13, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = call i64 @h2o_hpack_decode_int(i32** %41, i32* %42, i32 7)
  store i64 %43, i64* %19, align 8
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @H2O_HTTP2_ERROR_COMPRESSION, align 4
  store i32 %46, i32* %8, align 4
  br label %318

47:                                               ; preds = %40
  store i32 1, i32* %20, align 4
  br label %135

48:                                               ; preds = %35
  %49 = load i32**, i32*** %13, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 64
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load i32**, i32*** %13, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 64
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32**, i32*** %13, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %59, align 8
  br label %70

62:                                               ; preds = %53
  %63 = load i32**, i32*** %13, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i64 @h2o_hpack_decode_int(i32** %63, i32* %64, i32 6)
  store i64 %65, i64* %19, align 8
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @H2O_HTTP2_ERROR_COMPRESSION, align 4
  store i32 %68, i32* %8, align 4
  br label %318

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %58
  store i32 1, i32* %21, align 4
  br label %134

71:                                               ; preds = %48
  %72 = load i32**, i32*** %13, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 32
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load i32**, i32*** %13, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 15
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32**, i32*** %13, align 8
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %83, align 8
  br label %94

86:                                               ; preds = %76
  %87 = load i32**, i32*** %13, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = call i64 @h2o_hpack_decode_int(i32** %87, i32* %88, i32 4)
  store i64 %89, i64* %19, align 8
  %90 = icmp sle i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @H2O_HTTP2_ERROR_COMPRESSION, align 4
  store i32 %92, i32* %8, align 4
  br label %318

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %82
  br label %133

95:                                               ; preds = %71
  %96 = load i32**, i32*** %13, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = call i64 @h2o_hpack_decode_int(i32** %96, i32* %97, i32 5)
  store i64 %98, i64* %22, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @H2O_HTTP2_ERROR_COMPRESSION, align 4
  store i32 %101, i32* %8, align 4
  br label %318

102:                                              ; preds = %95
  %103 = load i64, i64* %22, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %103, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @H2O_HTTP2_ERROR_COMPRESSION, align 4
  store i32 %109, i32* %8, align 4
  br label %318

110:                                              ; preds = %102
  %111 = load i64, i64* %22, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %129, %110
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ugt i64 %122, %125
  br label %127

127:                                              ; preds = %119, %114
  %128 = phi i1 [ false, %114 ], [ %126, %119 ]
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %131 = call i32 @header_table_evict_one(%struct.TYPE_19__* %130)
  br label %114

132:                                              ; preds = %127
  br label %28

133:                                              ; preds = %94
  br label %134

134:                                              ; preds = %133, %70
  br label %135

135:                                              ; preds = %134, %47
  %136 = load i64, i64* %19, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %203

138:                                              ; preds = %135
  %139 = load i64, i64* %19, align 8
  %140 = load i64, i64* @HEADER_TABLE_OFFSET, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %138
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** @h2o_hpack_static_table, align 8
  %144 = load i64, i64* %19, align 8
  %145 = sub nsw i64 %144, 1
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %149, %struct.TYPE_18__** %17, align 8
  %150 = load i32, i32* %20, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %142
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** @h2o_hpack_static_table, align 8
  %154 = load i64, i64* %19, align 8
  %155 = sub nsw i64 %154, 1
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = bitcast i32* %157 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %158, %struct.TYPE_18__** %18, align 8
  br label %159

159:                                              ; preds = %152, %142
  br label %202

160:                                              ; preds = %138
  %161 = load i64, i64* %19, align 8
  %162 = load i64, i64* @HEADER_TABLE_OFFSET, align 8
  %163 = sub nsw i64 %161, %162
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp slt i64 %163, %166
  br i1 %167, label %168, label %199

168:                                              ; preds = %160
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %170 = load i64, i64* %19, align 8
  %171 = load i64, i64* @HEADER_TABLE_OFFSET, align 8
  %172 = sub nsw i64 %170, %171
  %173 = call %struct.st_h2o_hpack_header_table_entry_t* @h2o_hpack_header_table_get(%struct.TYPE_19__* %169, i64 %172)
  store %struct.st_h2o_hpack_header_table_entry_t* %173, %struct.st_h2o_hpack_header_table_entry_t** %23, align 8
  %174 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %23, align 8
  %175 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i8**, i8*** %15, align 8
  store i8* %176, i8** %177, align 8
  %178 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %23, align 8
  %179 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %178, i32 0, i32 2
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  store %struct.TYPE_18__* %180, %struct.TYPE_18__** %17, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %182 = call i32 @h2o_iovec_is_token(%struct.TYPE_18__* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %168
  %185 = load i32*, i32** %9, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %187 = call i32 @h2o_mem_link_shared(i32* %185, %struct.TYPE_18__* %186)
  br label %188

188:                                              ; preds = %184, %168
  %189 = load i32, i32* %20, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %23, align 8
  %193 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %192, i32 0, i32 1
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %193, align 8
  store %struct.TYPE_18__* %194, %struct.TYPE_18__** %18, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %197 = call i32 @h2o_mem_link_shared(i32* %195, %struct.TYPE_18__* %196)
  br label %198

198:                                              ; preds = %191, %188
  br label %201

199:                                              ; preds = %160
  %200 = load i32, i32* @H2O_HTTP2_ERROR_COMPRESSION, align 4
  store i32 %200, i32* %8, align 4
  br label %318

201:                                              ; preds = %198
  br label %202

202:                                              ; preds = %201, %159
  br label %238

203:                                              ; preds = %135
  %204 = load i32*, i32** %9, align 8
  %205 = load i32**, i32*** %13, align 8
  %206 = load i32*, i32** %14, align 8
  %207 = load i8**, i8*** %15, align 8
  %208 = call %struct.TYPE_18__* @decode_string(i32* %204, i32** %205, i32* %206, i32 1, i8** %207)
  store %struct.TYPE_18__* %208, %struct.TYPE_18__** %17, align 8
  %209 = icmp eq %struct.TYPE_18__* %208, null
  br i1 %209, label %210, label %219

210:                                              ; preds = %203
  %211 = load i8**, i8*** %15, align 8
  %212 = load i8*, i8** %211, align 8
  %213 = load i8*, i8** @h2o_hpack_err_found_upper_case_in_header_name, align 8
  %214 = icmp eq i8* %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %216, i32* %8, align 4
  br label %318

217:                                              ; preds = %210
  %218 = load i32, i32* @H2O_HTTP2_ERROR_COMPRESSION, align 4
  store i32 %218, i32* %8, align 4
  br label %318

219:                                              ; preds = %203
  %220 = load i8**, i8*** %15, align 8
  %221 = load i8*, i8** %220, align 8
  %222 = icmp eq i8* %221, null
  br i1 %222, label %223, label %237

223:                                              ; preds = %219
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call %struct.TYPE_17__* @h2o_lookup_token(i32 %226, i64 %229)
  store %struct.TYPE_17__* %230, %struct.TYPE_17__** %24, align 8
  %231 = icmp ne %struct.TYPE_17__* %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %223
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = bitcast i32* %234 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %235, %struct.TYPE_18__** %17, align 8
  br label %236

236:                                              ; preds = %232, %223
  br label %237

237:                                              ; preds = %236, %219
  br label %238

238:                                              ; preds = %237, %202
  %239 = load i32, i32* %20, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %251, label %241

241:                                              ; preds = %238
  %242 = load i32*, i32** %9, align 8
  %243 = load i32**, i32*** %13, align 8
  %244 = load i32*, i32** %14, align 8
  %245 = load i8**, i8*** %15, align 8
  %246 = call %struct.TYPE_18__* @decode_string(i32* %242, i32** %243, i32* %244, i32 0, i8** %245)
  store %struct.TYPE_18__* %246, %struct.TYPE_18__** %18, align 8
  %247 = icmp eq %struct.TYPE_18__* %246, null
  br i1 %247, label %248, label %250

248:                                              ; preds = %241
  %249 = load i32, i32* @H2O_HTTP2_ERROR_COMPRESSION, align 4
  store i32 %249, i32* %8, align 4
  br label %318

250:                                              ; preds = %241
  br label %251

251:                                              ; preds = %250, %238
  %252 = load i32, i32* %21, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %303

254:                                              ; preds = %251
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = add nsw i64 %258, %261
  %263 = load i64, i64* @HEADER_TABLE_ENTRY_SIZE_OFFSET, align 8
  %264 = add nsw i64 %262, %263
  %265 = load i32, i32* @SIZE_MAX, align 4
  %266 = call %struct.st_h2o_hpack_header_table_entry_t* @header_table_add(%struct.TYPE_19__* %255, i64 %264, i32 %265)
  store %struct.st_h2o_hpack_header_table_entry_t* %266, %struct.st_h2o_hpack_header_table_entry_t** %25, align 8
  %267 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %25, align 8
  %268 = icmp ne %struct.st_h2o_hpack_header_table_entry_t* %267, null
  br i1 %268, label %269, label %302

269:                                              ; preds = %254
  %270 = load i8**, i8*** %15, align 8
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %25, align 8
  %273 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %272, i32 0, i32 0
  store i8* %271, i8** %273, align 8
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %275 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %25, align 8
  %276 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %275, i32 0, i32 2
  store %struct.TYPE_18__* %274, %struct.TYPE_18__** %276, align 8
  %277 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %25, align 8
  %278 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %277, i32 0, i32 2
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %278, align 8
  %280 = call i32 @h2o_iovec_is_token(%struct.TYPE_18__* %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %287, label %282

282:                                              ; preds = %269
  %283 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %25, align 8
  %284 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %283, i32 0, i32 2
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %284, align 8
  %286 = call i32 @h2o_mem_addref_shared(%struct.TYPE_18__* %285)
  br label %287

287:                                              ; preds = %282, %269
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %289 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %25, align 8
  %290 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %289, i32 0, i32 1
  store %struct.TYPE_18__* %288, %struct.TYPE_18__** %290, align 8
  %291 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %25, align 8
  %292 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %291, i32 0, i32 1
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = call i32 @value_is_part_of_static_table(%struct.TYPE_18__* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %301, label %296

296:                                              ; preds = %287
  %297 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %25, align 8
  %298 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %297, i32 0, i32 1
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %298, align 8
  %300 = call i32 @h2o_mem_addref_shared(%struct.TYPE_18__* %299)
  br label %301

301:                                              ; preds = %296, %287
  br label %302

302:                                              ; preds = %301, %254
  br label %303

303:                                              ; preds = %302, %251
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %305 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %11, align 8
  store %struct.TYPE_18__* %304, %struct.TYPE_18__** %305, align 8
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %308 = bitcast %struct.TYPE_18__* %306 to i8*
  %309 = bitcast %struct.TYPE_18__* %307 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %308, i8* align 8 %309, i64 16, i1 false)
  %310 = load i8**, i8*** %15, align 8
  %311 = load i8*, i8** %310, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %313, label %315

313:                                              ; preds = %303
  %314 = load i32, i32* @H2O_HTTP2_ERROR_INVALID_HEADER_CHAR, align 4
  br label %316

315:                                              ; preds = %303
  br label %316

316:                                              ; preds = %315, %313
  %317 = phi i32 [ %314, %313 ], [ 0, %315 ]
  store i32 %317, i32* %8, align 4
  br label %318

318:                                              ; preds = %316, %248, %217, %215, %199, %108, %100, %91, %67, %45, %33
  %319 = load i32, i32* %8, align 4
  ret i32 %319
}

declare dso_local i64 @h2o_hpack_decode_int(i32**, i32*, i32) #1

declare dso_local i32 @header_table_evict_one(%struct.TYPE_19__*) #1

declare dso_local %struct.st_h2o_hpack_header_table_entry_t* @h2o_hpack_header_table_get(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @h2o_iovec_is_token(%struct.TYPE_18__*) #1

declare dso_local i32 @h2o_mem_link_shared(i32*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @decode_string(i32*, i32**, i32*, i32, i8**) #1

declare dso_local %struct.TYPE_17__* @h2o_lookup_token(i32, i64) #1

declare dso_local %struct.st_h2o_hpack_header_table_entry_t* @header_table_add(%struct.TYPE_19__*, i64, i32) #1

declare dso_local i32 @h2o_mem_addref_shared(%struct.TYPE_18__*) #1

declare dso_local i32 @value_is_part_of_static_table(%struct.TYPE_18__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
