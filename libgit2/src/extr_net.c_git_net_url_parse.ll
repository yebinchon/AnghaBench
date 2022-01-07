; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_net.c_git_net_url_parse.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_net.c_git_net_url_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.http_parser_url = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"malformed URL '%s'\00", align 1
@UF_SCHEMA = common dso_local global i32 0, align 4
@UF_HOST = common dso_local global i32 0, align 4
@UF_PORT = common dso_local global i32 0, align 4
@UF_PATH = common dso_local global i32 0, align 4
@UF_QUERY = common dso_local global i32 0, align 4
@UF_USERINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unknown scheme for URL '%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_net_url_parse(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.http_parser_url, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca %struct.TYPE_14__, align 4
  %15 = alloca %struct.TYPE_14__, align 4
  %16 = alloca %struct.TYPE_14__, align 4
  %17 = alloca %struct.TYPE_14__, align 4
  %18 = alloca %struct.TYPE_14__, align 4
  %19 = alloca %struct.TYPE_14__, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  %39 = bitcast %struct.http_parser_url* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %39, i8 0, i64 24, i1 false)
  %40 = bitcast %struct.TYPE_14__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %41 = bitcast %struct.TYPE_14__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %42 = bitcast %struct.TYPE_14__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %43 = bitcast %struct.TYPE_14__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %44 = bitcast %struct.TYPE_14__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %45 = bitcast %struct.TYPE_14__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %46 = bitcast %struct.TYPE_14__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %47 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %47, i32* %20, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i64 @http_parser_parse_url(i8* %48, i32 %50, i32 0, %struct.http_parser_url* %6)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %2
  %54 = load i32, i32* @GIT_ERROR_NET, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @git_error_set(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %55)
  br label %349

57:                                               ; preds = %2
  %58 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @UF_SCHEMA, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @UF_HOST, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @UF_PORT, align 4
  %79 = shl i32 1, %78
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %9, align 4
  %85 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @UF_PATH, align 4
  %88 = shl i32 1, %87
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %10, align 4
  %94 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @UF_QUERY, align 4
  %97 = shl i32 1, %96
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %11, align 4
  %103 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @UF_USERINFO, align 4
  %106 = shl i32 1, %105
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %57
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = load i32, i32* @UF_SCHEMA, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %115, i64 %123
  store i8* %124, i8** %21, align 8
  %125 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 1
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load i32, i32* @UF_SCHEMA, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %22, align 8
  %132 = load i8*, i8** %21, align 8
  %133 = load i64, i64* %22, align 8
  %134 = call i32 @git_buf_put(%struct.TYPE_14__* %13, i8* %132, i64 %133)
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @git__strntolower(i32 %136, i32 %138)
  br label %144

140:                                              ; preds = %57
  %141 = load i32, i32* @GIT_ERROR_NET, align 4
  %142 = load i8*, i8** %5, align 8
  %143 = call i32 @git_error_set(i32 %141, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %142)
  br label %349

144:                                              ; preds = %114
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %144
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 1
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = load i32, i32* @UF_HOST, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %148, i64 %156
  store i8* %157, i8** %23, align 8
  %158 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 1
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = load i32, i32* @UF_HOST, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %24, align 8
  %165 = load i8*, i8** %23, align 8
  %166 = load i64, i64* %24, align 8
  %167 = call i32 @git_buf_decode_percent(%struct.TYPE_14__* %14, i8* %165, i64 %166)
  br label %168

168:                                              ; preds = %147, %144
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %192

171:                                              ; preds = %168
  %172 = load i8*, i8** %5, align 8
  %173 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 1
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = load i32, i32* @UF_PORT, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %172, i64 %180
  store i8* %181, i8** %25, align 8
  %182 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 1
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = load i32, i32* @UF_PORT, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %26, align 8
  %189 = load i8*, i8** %25, align 8
  %190 = load i64, i64* %26, align 8
  %191 = call i32 @git_buf_put(%struct.TYPE_14__* %15, i8* %189, i64 %190)
  br label %205

192:                                              ; preds = %168
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @default_port_for_scheme(i32 %194)
  store i8* %195, i8** %27, align 8
  %196 = load i8*, i8** %27, align 8
  %197 = icmp eq i8* %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %192
  %199 = load i32, i32* @GIT_ERROR_NET, align 4
  %200 = load i8*, i8** %5, align 8
  %201 = call i32 @git_error_set(i32 %199, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %200)
  br label %349

202:                                              ; preds = %192
  %203 = load i8*, i8** %27, align 8
  %204 = call i32 @git_buf_puts(%struct.TYPE_14__* %15, i8* %203)
  br label %205

205:                                              ; preds = %202, %171
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %229

208:                                              ; preds = %205
  %209 = load i8*, i8** %5, align 8
  %210 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 1
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = load i32, i32* @UF_PATH, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %209, i64 %217
  store i8* %218, i8** %28, align 8
  %219 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 1
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = load i32, i32* @UF_PATH, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %29, align 8
  %226 = load i8*, i8** %28, align 8
  %227 = load i64, i64* %29, align 8
  %228 = call i32 @git_buf_put(%struct.TYPE_14__* %16, i8* %226, i64 %227)
  br label %231

229:                                              ; preds = %205
  %230 = call i32 @git_buf_puts(%struct.TYPE_14__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %231

231:                                              ; preds = %229, %208
  %232 = load i32, i32* %11, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %255

234:                                              ; preds = %231
  %235 = load i8*, i8** %5, align 8
  %236 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 1
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %236, align 8
  %238 = load i32, i32* @UF_QUERY, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %235, i64 %243
  store i8* %244, i8** %30, align 8
  %245 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 1
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %245, align 8
  %247 = load i32, i32* @UF_QUERY, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %31, align 8
  %252 = load i8*, i8** %30, align 8
  %253 = load i64, i64* %31, align 8
  %254 = call i32 @git_buf_decode_percent(%struct.TYPE_14__* %19, i8* %252, i64 %253)
  br label %255

255:                                              ; preds = %234, %231
  %256 = load i32, i32* %12, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %305

258:                                              ; preds = %255
  %259 = load i8*, i8** %5, align 8
  %260 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 1
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %260, align 8
  %262 = load i32, i32* @UF_USERINFO, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %259, i64 %267
  store i8* %268, i8** %32, align 8
  %269 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 1
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %269, align 8
  %271 = load i32, i32* @UF_USERINFO, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %33, align 8
  %276 = load i8*, i8** %32, align 8
  %277 = load i64, i64* %33, align 8
  %278 = call i8* @memchr(i8* %276, i8 signext 58, i64 %277)
  store i8* %278, i8** %34, align 8
  %279 = load i8*, i8** %34, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %300

281:                                              ; preds = %258
  %282 = load i8*, i8** %32, align 8
  store i8* %282, i8** %35, align 8
  %283 = load i8*, i8** %34, align 8
  %284 = load i8*, i8** %32, align 8
  %285 = ptrtoint i8* %283 to i64
  %286 = ptrtoint i8* %284 to i64
  %287 = sub i64 %285, %286
  store i64 %287, i64* %36, align 8
  %288 = load i8*, i8** %34, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 1
  store i8* %289, i8** %37, align 8
  %290 = load i64, i64* %33, align 8
  %291 = load i64, i64* %36, align 8
  %292 = add i64 %291, 1
  %293 = sub i64 %290, %292
  store i64 %293, i64* %38, align 8
  %294 = load i8*, i8** %35, align 8
  %295 = load i64, i64* %36, align 8
  %296 = call i32 @git_buf_decode_percent(%struct.TYPE_14__* %17, i8* %294, i64 %295)
  %297 = load i8*, i8** %37, align 8
  %298 = load i64, i64* %38, align 8
  %299 = call i32 @git_buf_decode_percent(%struct.TYPE_14__* %18, i8* %297, i64 %298)
  br label %304

300:                                              ; preds = %258
  %301 = load i8*, i8** %32, align 8
  %302 = load i64, i64* %33, align 8
  %303 = call i32 @git_buf_decode_percent(%struct.TYPE_14__* %17, i8* %301, i64 %302)
  br label %304

304:                                              ; preds = %300, %281
  br label %305

305:                                              ; preds = %304, %255
  %306 = call i64 @git_buf_oom(%struct.TYPE_14__* %13)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %326, label %308

308:                                              ; preds = %305
  %309 = call i64 @git_buf_oom(%struct.TYPE_14__* %14)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %326, label %311

311:                                              ; preds = %308
  %312 = call i64 @git_buf_oom(%struct.TYPE_14__* %15)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %326, label %314

314:                                              ; preds = %311
  %315 = call i64 @git_buf_oom(%struct.TYPE_14__* %16)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %326, label %317

317:                                              ; preds = %314
  %318 = call i64 @git_buf_oom(%struct.TYPE_14__* %19)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %326, label %320

320:                                              ; preds = %317
  %321 = call i64 @git_buf_oom(%struct.TYPE_14__* %17)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %320
  %324 = call i64 @git_buf_oom(%struct.TYPE_14__* %18)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %323, %320, %317, %314, %311, %308, %305
  store i32 -1, i32* %3, align 4
  br label %358

327:                                              ; preds = %323
  %328 = call i8* @git_buf_detach(%struct.TYPE_14__* %13)
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 6
  store i8* %328, i8** %330, align 8
  %331 = call i8* @git_buf_detach(%struct.TYPE_14__* %14)
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 5
  store i8* %331, i8** %333, align 8
  %334 = call i8* @git_buf_detach(%struct.TYPE_14__* %15)
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 4
  store i8* %334, i8** %336, align 8
  %337 = call i8* @git_buf_detach(%struct.TYPE_14__* %16)
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 3
  store i8* %337, i8** %339, align 8
  %340 = call i8* @git_buf_detach(%struct.TYPE_14__* %19)
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 2
  store i8* %340, i8** %342, align 8
  %343 = call i8* @git_buf_detach(%struct.TYPE_14__* %17)
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 1
  store i8* %343, i8** %345, align 8
  %346 = call i8* @git_buf_detach(%struct.TYPE_14__* %18)
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 0
  store i8* %346, i8** %348, align 8
  store i32 0, i32* %20, align 4
  br label %349

349:                                              ; preds = %327, %198, %140, %53
  %350 = call i32 @git_buf_dispose(%struct.TYPE_14__* %13)
  %351 = call i32 @git_buf_dispose(%struct.TYPE_14__* %14)
  %352 = call i32 @git_buf_dispose(%struct.TYPE_14__* %15)
  %353 = call i32 @git_buf_dispose(%struct.TYPE_14__* %16)
  %354 = call i32 @git_buf_dispose(%struct.TYPE_14__* %19)
  %355 = call i32 @git_buf_dispose(%struct.TYPE_14__* %17)
  %356 = call i32 @git_buf_dispose(%struct.TYPE_14__* %18)
  %357 = load i32, i32* %20, align 4
  store i32 %357, i32* %3, align 4
  br label %358

358:                                              ; preds = %349, %326
  %359 = load i32, i32* %3, align 4
  ret i32 %359
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @http_parser_parse_url(i8*, i32, i32, %struct.http_parser_url*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @git_buf_put(%struct.TYPE_14__*, i8*, i64) #2

declare dso_local i32 @git__strntolower(i32, i32) #2

declare dso_local i32 @git_buf_decode_percent(%struct.TYPE_14__*, i8*, i64) #2

declare dso_local i8* @default_port_for_scheme(i32) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_14__*, i8*) #2

declare dso_local i8* @memchr(i8*, i8 signext, i64) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_14__*) #2

declare dso_local i8* @git_buf_detach(%struct.TYPE_14__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
