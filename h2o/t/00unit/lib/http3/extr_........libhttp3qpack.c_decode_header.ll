; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_decode_header.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_decode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.st_h2o_qpack_decode_header_ctx_t = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_14__ }
%struct.TYPE_11__ = type { i32 }
%struct.st_h2o_qpack_header_t = type { %struct.TYPE_14__*, i32, i32 }

@H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_14__**, %struct.TYPE_14__*, i32**, i32*, i8**)* @decode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_header(i32* %0, i8* %1, %struct.TYPE_14__** %2, %struct.TYPE_14__* %3, i32** %4, i32* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_14__**, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.st_h2o_qpack_decode_header_ctx_t*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca %struct.st_h2o_qpack_header_t*, align 8
  %19 = alloca %struct.TYPE_14__, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca %struct.TYPE_14__, align 8
  %22 = alloca %struct.TYPE_14__, align 8
  %23 = alloca %struct.st_h2o_qpack_header_t*, align 8
  %24 = alloca %struct.TYPE_14__, align 8
  %25 = alloca %struct.TYPE_14__, align 8
  %26 = alloca %struct.TYPE_14__, align 8
  %27 = alloca %struct.TYPE_14__, align 8
  %28 = alloca %struct.st_h2o_qpack_header_t*, align 8
  %29 = alloca %struct.TYPE_14__, align 8
  %30 = alloca %struct.st_h2o_qpack_header_t*, align 8
  %31 = alloca %struct.TYPE_14__, align 8
  %32 = alloca %struct.TYPE_14__, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to %struct.st_h2o_qpack_decode_header_ctx_t*
  store %struct.st_h2o_qpack_decode_header_ctx_t* %34, %struct.st_h2o_qpack_decode_header_ctx_t** %16, align 8
  %35 = load i32**, i32*** %13, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 4
  switch i32 %38, label %256 [
    i32 12, label %39
    i32 13, label %39
    i32 14, label %39
    i32 15, label %39
    i32 8, label %58
    i32 9, label %58
    i32 10, label %58
    i32 11, label %58
    i32 5, label %91
    i32 7, label %91
    i32 4, label %121
    i32 6, label %121
    i32 2, label %159
    i32 3, label %159
    i32 1, label %185
    i32 0, label %218
  ]

39:                                               ; preds = %7, %7, %7, %7
  %40 = load i32**, i32*** %13, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i8**, i8*** %15, align 8
  %43 = call %struct.TYPE_13__* @resolve_static(i32** %40, i32* %41, i32 6, i8** %42)
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %17, align 8
  %44 = icmp eq %struct.TYPE_13__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %257

46:                                               ; preds = %39
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = bitcast i32* %50 to %struct.TYPE_14__*
  %52 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = bitcast %struct.TYPE_14__* %53 to i8*
  %57 = bitcast %struct.TYPE_14__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  br label %256

58:                                               ; preds = %7, %7, %7, %7
  %59 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %16, align 8
  %60 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %16, align 8
  %64 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32**, i32*** %13, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i8**, i8*** %15, align 8
  %69 = call %struct.st_h2o_qpack_header_t* @resolve_dynamic(i32* %62, i32 %65, i32** %66, i32* %67, i32 6, i8** %68)
  store %struct.st_h2o_qpack_header_t* %69, %struct.st_h2o_qpack_header_t** %18, align 8
  %70 = icmp eq %struct.st_h2o_qpack_header_t* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %257

72:                                               ; preds = %58
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %18, align 8
  %75 = call i32 @h2o_mem_link_shared(i32* %73, %struct.st_h2o_qpack_header_t* %74)
  %76 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %18, align 8
  %77 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %79, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %81 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %18, align 8
  %82 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %18, align 8
  %85 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32* @h2o_iovec_init(i32 %83, i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i32* %87, i32** %88, align 8
  %89 = bitcast %struct.TYPE_14__* %80 to i8*
  %90 = bitcast %struct.TYPE_14__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 8, i1 false)
  br label %256

91:                                               ; preds = %7, %7
  %92 = load i32**, i32*** %13, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = load i8**, i8*** %15, align 8
  %95 = call %struct.TYPE_13__* @resolve_static(i32** %92, i32* %93, i32 4, i8** %94)
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %20, align 8
  %96 = icmp eq %struct.TYPE_13__* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %257

98:                                               ; preds = %91
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = bitcast i32* %102 to %struct.TYPE_14__*
  %104 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %104, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i32**, i32*** %13, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = load i8**, i8*** %15, align 8
  %110 = call i32* @decode_header_value_literal(i32* %106, i32** %107, i32* %108, i8** %109)
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  store i32* %110, i32** %111, align 8
  %112 = bitcast %struct.TYPE_14__* %105 to i8*
  %113 = bitcast %struct.TYPE_14__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 8, i1 false)
  %114 = bitcast %struct.TYPE_14__* %21 to i8*
  %115 = bitcast %struct.TYPE_14__* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 8, i1 false)
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %98
  br label %257

120:                                              ; preds = %98
  br label %256

121:                                              ; preds = %7, %7
  %122 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %16, align 8
  %123 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %122, i32 0, i32 1
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %16, align 8
  %127 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32**, i32*** %13, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = load i8**, i8*** %15, align 8
  %132 = call %struct.st_h2o_qpack_header_t* @resolve_dynamic(i32* %125, i32 %128, i32** %129, i32* %130, i32 4, i8** %131)
  store %struct.st_h2o_qpack_header_t* %132, %struct.st_h2o_qpack_header_t** %23, align 8
  %133 = icmp eq %struct.st_h2o_qpack_header_t* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %121
  br label %257

135:                                              ; preds = %121
  %136 = load i32*, i32** %9, align 8
  %137 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %23, align 8
  %138 = call i32 @h2o_mem_link_shared(i32* %136, %struct.st_h2o_qpack_header_t* %137)
  %139 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %23, align 8
  %140 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %139, i32 0, i32 0
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_14__* %141, %struct.TYPE_14__** %142, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = load i32**, i32*** %13, align 8
  %146 = load i32*, i32** %14, align 8
  %147 = load i8**, i8*** %15, align 8
  %148 = call i32* @decode_header_value_literal(i32* %144, i32** %145, i32* %146, i8** %147)
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store i32* %148, i32** %149, align 8
  %150 = bitcast %struct.TYPE_14__* %143 to i8*
  %151 = bitcast %struct.TYPE_14__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 8, i1 false)
  %152 = bitcast %struct.TYPE_14__* %24 to i8*
  %153 = bitcast %struct.TYPE_14__* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 8, i1 false)
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %135
  br label %257

158:                                              ; preds = %135
  br label %256

159:                                              ; preds = %7, %7
  %160 = load i32*, i32** %9, align 8
  %161 = load i32**, i32*** %13, align 8
  %162 = load i32*, i32** %14, align 8
  %163 = load i8**, i8*** %15, align 8
  %164 = call %struct.TYPE_14__* @decode_header_name_literal(i32* %160, i32** %161, i32* %162, i32 3, i8** %163)
  %165 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_14__* %164, %struct.TYPE_14__** %165, align 8
  %166 = icmp eq %struct.TYPE_14__* %164, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %257

168:                                              ; preds = %159
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = load i32**, i32*** %13, align 8
  %172 = load i32*, i32** %14, align 8
  %173 = load i8**, i8*** %15, align 8
  %174 = call i32* @decode_header_value_literal(i32* %170, i32** %171, i32* %172, i8** %173)
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i32* %174, i32** %175, align 8
  %176 = bitcast %struct.TYPE_14__* %169 to i8*
  %177 = bitcast %struct.TYPE_14__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %176, i8* align 8 %177, i64 8, i1 false)
  %178 = bitcast %struct.TYPE_14__* %26 to i8*
  %179 = bitcast %struct.TYPE_14__* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 8 %179, i64 8, i1 false)
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %168
  br label %257

184:                                              ; preds = %168
  br label %256

185:                                              ; preds = %7
  %186 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %16, align 8
  %187 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %186, i32 0, i32 1
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %16, align 8
  %191 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32**, i32*** %13, align 8
  %194 = load i32*, i32** %14, align 8
  %195 = load i8**, i8*** %15, align 8
  %196 = call %struct.st_h2o_qpack_header_t* @resolve_dynamic_postbase(i32* %189, i32 %192, i32** %193, i32* %194, i32 4, i8** %195)
  store %struct.st_h2o_qpack_header_t* %196, %struct.st_h2o_qpack_header_t** %28, align 8
  %197 = icmp eq %struct.st_h2o_qpack_header_t* %196, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %185
  br label %257

199:                                              ; preds = %185
  %200 = load i32*, i32** %9, align 8
  %201 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %28, align 8
  %202 = call i32 @h2o_mem_link_shared(i32* %200, %struct.st_h2o_qpack_header_t* %201)
  %203 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %28, align 8
  %204 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %203, i32 0, i32 0
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_14__* %205, %struct.TYPE_14__** %206, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %208 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %28, align 8
  %209 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %28, align 8
  %212 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32* @h2o_iovec_init(i32 %210, i32 %213)
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i32* %214, i32** %215, align 8
  %216 = bitcast %struct.TYPE_14__* %207 to i8*
  %217 = bitcast %struct.TYPE_14__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %216, i8* align 8 %217, i64 8, i1 false)
  br label %256

218:                                              ; preds = %7
  %219 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %16, align 8
  %220 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %219, i32 0, i32 1
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %16, align 8
  %224 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32**, i32*** %13, align 8
  %227 = load i32*, i32** %14, align 8
  %228 = load i8**, i8*** %15, align 8
  %229 = call %struct.st_h2o_qpack_header_t* @resolve_dynamic_postbase(i32* %222, i32 %225, i32** %226, i32* %227, i32 3, i8** %228)
  store %struct.st_h2o_qpack_header_t* %229, %struct.st_h2o_qpack_header_t** %30, align 8
  %230 = icmp eq %struct.st_h2o_qpack_header_t* %229, null
  br i1 %230, label %231, label %232

231:                                              ; preds = %218
  br label %257

232:                                              ; preds = %218
  %233 = load i32*, i32** %9, align 8
  %234 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %30, align 8
  %235 = call i32 @h2o_mem_link_shared(i32* %233, %struct.st_h2o_qpack_header_t* %234)
  %236 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %30, align 8
  %237 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %236, i32 0, i32 0
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %237, align 8
  %239 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_14__* %238, %struct.TYPE_14__** %239, align 8
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %241 = load i32*, i32** %9, align 8
  %242 = load i32**, i32*** %13, align 8
  %243 = load i32*, i32** %14, align 8
  %244 = load i8**, i8*** %15, align 8
  %245 = call i32* @decode_header_value_literal(i32* %241, i32** %242, i32* %243, i8** %244)
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  store i32* %245, i32** %246, align 8
  %247 = bitcast %struct.TYPE_14__* %240 to i8*
  %248 = bitcast %struct.TYPE_14__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %247, i8* align 8 %248, i64 8, i1 false)
  %249 = bitcast %struct.TYPE_14__* %31 to i8*
  %250 = bitcast %struct.TYPE_14__* %240 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %249, i8* align 8 %250, i64 8, i1 false)
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = icmp eq i32* %252, null
  br i1 %253, label %254, label %255

254:                                              ; preds = %232
  br label %257

255:                                              ; preds = %232
  br label %256

256:                                              ; preds = %7, %255, %199, %184, %158, %120, %72, %46
  store i32 0, i32* %8, align 4
  br label %259

257:                                              ; preds = %254, %231, %198, %183, %167, %157, %134, %119, %97, %71, %45
  %258 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %258, i32* %8, align 4
  br label %259

259:                                              ; preds = %257, %256
  %260 = load i32, i32* %8, align 4
  ret i32 %260
}

declare dso_local %struct.TYPE_13__* @resolve_static(i32**, i32*, i32, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.st_h2o_qpack_header_t* @resolve_dynamic(i32*, i32, i32**, i32*, i32, i8**) #1

declare dso_local i32 @h2o_mem_link_shared(i32*, %struct.st_h2o_qpack_header_t*) #1

declare dso_local i32* @h2o_iovec_init(i32, i32) #1

declare dso_local i32* @decode_header_value_literal(i32*, i32**, i32*, i8**) #1

declare dso_local %struct.TYPE_14__* @decode_header_name_literal(i32*, i32**, i32*, i32, i8**) #1

declare dso_local %struct.st_h2o_qpack_header_t* @resolve_dynamic_postbase(i32*, i32, i32**, i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
