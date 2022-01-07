; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_fetch_query_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_fetch_query_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_query_header = type { i32, i32, i32, i8**, i32, i8*, i32, i8*, i8*, i8**, i8* }

@TL_ERROR_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Duplicate flags in header 0x%08x\00", align 1
@TL_QUERY_HEADER_FLAG_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unsupported flags in header 0x%08x\00", align 1
@TL_QUERY_HEADER_FLAG_WAIT_BINLOG = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_KPHP_DELAY = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Number of string forward keys should be in range 0..10. Value %d\00", align 1
@TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"Number of int forward keys should be in range 0..10. Value %d\00", align 1
@TL_QUERY_HEADER_FLAG_STRING_FORWARD = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_INT_FORWARD = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_WAIT_BINLOG_TIME = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_CUSTOM_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_fetch_query_flags(%struct.tl_query_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_query_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tl_query_header* %0, %struct.tl_query_header** %3, align 8
  %8 = call i8* (...) @tl_fetch_int()
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = call i64 (...) @tl_fetch_error()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %309

13:                                               ; preds = %1
  %14 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %15 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i32, i32* @TL_ERROR_HEADER, align 4
  %22 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %23 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @tl_fetch_set_error_format(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %2, align 4
  br label %309

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TL_QUERY_HEADER_FLAG_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* @TL_ERROR_HEADER, align 4
  %36 = load i32, i32* @TL_QUERY_HEADER_FLAG_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @tl_fetch_set_error_format(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 -1, i32* %2, align 4
  br label %309

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %44 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @TL_QUERY_HEADER_FLAG_WAIT_BINLOG, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = call i8* (...) @tl_fetch_long()
  %53 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %54 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %53, i32 0, i32 10
  store i8* %52, i8** %54, align 8
  %55 = call i64 (...) @tl_fetch_error()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 -1, i32* %2, align 4
  br label %309

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @TL_QUERY_HEADER_FLAG_KPHP_DELAY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %59
  %65 = call i8* (...) @tl_fetch_int()
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %68 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = call i64 (...) @tl_fetch_error()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 -1, i32* %2, align 4
  br label %309

72:                                               ; preds = %64
  %73 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %74 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %79 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %82 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 120000
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %87 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %86, i32 0, i32 1
  store i32 120000, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %80
  br label %89

89:                                               ; preds = %88, %59
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %168

94:                                               ; preds = %89
  %95 = call i8* (...) @tl_fetch_int()
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %98 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %100 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %94
  %104 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %105 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 10
  br i1 %107, label %108, label %114

108:                                              ; preds = %103, %94
  %109 = load i32, i32* @TL_ERROR_HEADER, align 4
  %110 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %111 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @tl_fetch_set_error_format(i32 %109, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  store i32 -1, i32* %2, align 4
  br label %309

114:                                              ; preds = %103
  %115 = call i64 (...) @tl_fetch_error()
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 -1, i32* %2, align 4
  br label %309

118:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %164, %118
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %122 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %167

125:                                              ; preds = %119
  %126 = call i32 @tl_fetch_string_len(i32 1000)
  store i32 %126, i32* %6, align 4
  %127 = call i64 (...) @tl_fetch_error()
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 -1, i32* %2, align 4
  br label %309

130:                                              ; preds = %125
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  %133 = call i64 @malloc(i32 %132)
  %134 = inttoptr i64 %133 to i8*
  %135 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %136 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %135, i32 0, i32 3
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  store i8* %134, i8** %140, align 8
  %141 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %142 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %141, i32 0, i32 3
  %143 = load i8**, i8*** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @tl_fetch_string_data(i8* %147, i32 %148)
  %150 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %151 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %150, i32 0, i32 3
  %152 = load i8**, i8*** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  store i8 0, i8* %159, align 1
  %160 = call i64 (...) @tl_fetch_error()
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %130
  store i32 -1, i32* %2, align 4
  br label %309

163:                                              ; preds = %130
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %119

167:                                              ; preds = %119
  br label %168

168:                                              ; preds = %167, %89
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %220

173:                                              ; preds = %168
  %174 = call i8* (...) @tl_fetch_int()
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %177 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 8
  %178 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %179 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %173
  %183 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %184 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = icmp sgt i32 %185, 10
  br i1 %186, label %187, label %193

187:                                              ; preds = %182, %173
  %188 = load i32, i32* @TL_ERROR_HEADER, align 4
  %189 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %190 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @tl_fetch_set_error_format(i32 %188, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %191)
  store i32 -1, i32* %2, align 4
  br label %309

193:                                              ; preds = %182
  %194 = call i64 (...) @tl_fetch_error()
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  store i32 -1, i32* %2, align 4
  br label %309

197:                                              ; preds = %193
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %216, %197
  %199 = load i32, i32* %5, align 4
  %200 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %201 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %219

204:                                              ; preds = %198
  %205 = call i8* (...) @tl_fetch_long()
  %206 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %207 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %206, i32 0, i32 9
  %208 = load i8**, i8*** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  store i8* %205, i8** %211, align 8
  %212 = call i64 (...) @tl_fetch_error()
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %204
  store i32 -1, i32* %2, align 4
  br label %309

215:                                              ; preds = %204
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %5, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %5, align 4
  br label %198

219:                                              ; preds = %198
  br label %220

220:                                              ; preds = %219, %168
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @TL_QUERY_HEADER_FLAG_STRING_FORWARD, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %252

225:                                              ; preds = %220
  %226 = call i32 @tl_fetch_string_len(i32 1000)
  store i32 %226, i32* %7, align 4
  %227 = call i64 (...) @tl_fetch_error()
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  store i32 -1, i32* %2, align 4
  br label %309

230:                                              ; preds = %225
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  %233 = call i64 @malloc(i32 %232)
  %234 = inttoptr i64 %233 to i8*
  %235 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %236 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %235, i32 0, i32 5
  store i8* %234, i8** %236, align 8
  %237 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %238 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %237, i32 0, i32 5
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = call i32 @tl_fetch_string_data(i8* %239, i32 %240)
  %242 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %243 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %242, i32 0, i32 5
  %244 = load i8*, i8** %243, align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  store i8 0, i8* %247, align 1
  %248 = call i64 (...) @tl_fetch_error()
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %230
  store i32 -1, i32* %2, align 4
  br label %309

251:                                              ; preds = %230
  br label %252

252:                                              ; preds = %251, %220
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* @TL_QUERY_HEADER_FLAG_INT_FORWARD, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %252
  %258 = call i8* (...) @tl_fetch_long()
  %259 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %260 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %259, i32 0, i32 8
  store i8* %258, i8** %260, align 8
  %261 = call i64 (...) @tl_fetch_error()
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  store i32 -1, i32* %2, align 4
  br label %309

264:                                              ; preds = %257
  br label %265

265:                                              ; preds = %264, %252
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* @TL_QUERY_HEADER_FLAG_WAIT_BINLOG_TIME, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %265
  %271 = call i8* (...) @tl_fetch_long()
  %272 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %273 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %272, i32 0, i32 7
  store i8* %271, i8** %273, align 8
  %274 = call i64 (...) @tl_fetch_error()
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %270
  store i32 -1, i32* %2, align 4
  br label %309

277:                                              ; preds = %270
  br label %278

278:                                              ; preds = %277, %265
  %279 = load i32, i32* %4, align 4
  %280 = load i32, i32* @TL_QUERY_HEADER_FLAG_CUSTOM_TIMEOUT, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %308

283:                                              ; preds = %278
  %284 = call i8* (...) @tl_fetch_int()
  %285 = ptrtoint i8* %284 to i32
  %286 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %287 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %286, i32 0, i32 6
  store i32 %285, i32* %287, align 8
  %288 = call i64 (...) @tl_fetch_error()
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  store i32 -1, i32* %2, align 4
  br label %309

291:                                              ; preds = %283
  %292 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %293 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %291
  %297 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %298 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %297, i32 0, i32 6
  store i32 0, i32* %298, align 8
  br label %299

299:                                              ; preds = %296, %291
  %300 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %301 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %300, i32 0, i32 6
  %302 = load i32, i32* %301, align 8
  %303 = icmp sgt i32 %302, 120000
  br i1 %303, label %304, label %307

304:                                              ; preds = %299
  %305 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %306 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %305, i32 0, i32 6
  store i32 120000, i32* %306, align 8
  br label %307

307:                                              ; preds = %304, %299
  br label %308

308:                                              ; preds = %307, %278
  store i32 0, i32* %2, align 4
  br label %309

309:                                              ; preds = %308, %290, %276, %263, %250, %229, %214, %196, %187, %162, %129, %117, %108, %71, %57, %34, %20, %12
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local i8* @tl_fetch_int(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32) #1

declare dso_local i8* @tl_fetch_long(...) #1

declare dso_local i32 @tl_fetch_string_len(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @tl_fetch_string_data(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
