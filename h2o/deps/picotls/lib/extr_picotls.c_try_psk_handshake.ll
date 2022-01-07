; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_try_psk_handshake.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_try_psk_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { %struct.TYPE_34__*, %struct.TYPE_42__*, i32*, %struct.TYPE_35__*, %struct.TYPE_33__*, i32* }
%struct.TYPE_34__ = type { %struct.TYPE_40__* }
%struct.TYPE_40__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_42__ = type { i64 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_33__ = type { %struct.TYPE_42__**, i64, %struct.TYPE_31__*, %struct.TYPE_32__* }
%struct.TYPE_31__ = type { i32 (%struct.TYPE_31__*, %struct.TYPE_41__*, i32, %struct.TYPE_30__*, i32)* }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_32__ = type { i64 (%struct.TYPE_32__*)* }
%struct.st_ptls_client_hello_t = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__, i64 }
%struct.TYPE_37__ = type { i64, %struct.st_ptls_client_hello_psk_t* }
%struct.st_ptls_client_hello_psk_t = type { %struct.TYPE_36__, i64, i32 }
%struct.TYPE_36__ = type { i64, i32 }
%struct.TYPE_29__ = type { i64, i32 }

@PTLS_MAX_DIGEST_SIZE = common dso_local global i32 0, align 4
@PTLS_EARLY_DATA_MAX_DELAY = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"res binder\00", align 1
@PTLS_ALERT_DECRYPT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_41__*, i64*, i32*, %struct.st_ptls_client_hello_t*, i64, i32)* @try_psk_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_psk_handshake(%struct.TYPE_41__* %0, i64* %1, i32* %2, %struct.st_ptls_client_hello_t* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_29__, align 8
  %8 = alloca %struct.TYPE_41__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.st_ptls_client_hello_t*, align 8
  %12 = alloca %struct.TYPE_30__, align 8
  %13 = alloca %struct.TYPE_29__, align 8
  %14 = alloca %struct.TYPE_29__, align 8
  %15 = alloca %struct.TYPE_29__, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca [256 x i32], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.st_ptls_client_hello_psk_t*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_42__**, align 8
  %30 = bitcast %struct.TYPE_29__* %7 to { i64, i32 }*
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 0
  store i64 %4, i64* %31, align 8
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 1
  store i32 %5, i32* %32, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.st_ptls_client_hello_t* %3, %struct.st_ptls_client_hello_t** %11, align 8
  %33 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 0
  %39 = load i64 (%struct.TYPE_32__*)*, i64 (%struct.TYPE_32__*)** %38, align 8
  %40 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %43, align 8
  %45 = call i64 %39(%struct.TYPE_32__* %44)
  store i64 %45, i64* %17, align 8
  %46 = load i32, i32* @PTLS_MAX_DIGEST_SIZE, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %22, align 8
  %49 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %23, align 8
  %50 = load i32, i32* @PTLS_MAX_DIGEST_SIZE, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %24, align 8
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 0
  %54 = call i32 @ptls_buffer_init(%struct.TYPE_30__* %12, i32* %53, i32 1024)
  %55 = load i64*, i64** %9, align 8
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %289, %6
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %11, align 8
  %60 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %58, %63
  br i1 %64, label %65, label %293

65:                                               ; preds = %56
  %66 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %11, align 8
  %67 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %68, i32 0, i32 1
  %70 = load %struct.st_ptls_client_hello_psk_t*, %struct.st_ptls_client_hello_psk_t** %69, align 8
  %71 = load i64*, i64** %9, align 8
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.st_ptls_client_hello_psk_t, %struct.st_ptls_client_hello_psk_t* %70, i64 %72
  store %struct.st_ptls_client_hello_psk_t* %73, %struct.st_ptls_client_hello_psk_t** %26, align 8
  store i32 1, i32* %27, align 4
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_31__*, %struct.TYPE_41__*, i32, %struct.TYPE_30__*, i32)*, i32 (%struct.TYPE_31__*, %struct.TYPE_41__*, i32, %struct.TYPE_30__*, i32)** %80, align 8
  %82 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %85, align 8
  %87 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %88 = load %struct.st_ptls_client_hello_psk_t*, %struct.st_ptls_client_hello_psk_t** %26, align 8
  %89 = getelementptr inbounds %struct.st_ptls_client_hello_psk_t, %struct.st_ptls_client_hello_psk_t* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 %81(%struct.TYPE_31__* %86, %struct.TYPE_41__* %87, i32 0, %struct.TYPE_30__* %12, i32 %90)
  switch i32 %91, label %94 [
    i32 0, label %92
    i32 128, label %93
  ]

92:                                               ; preds = %65
  br label %95

93:                                               ; preds = %65
  store i32 0, i32* %27, align 4
  br label %95

94:                                               ; preds = %65
  br label %289

95:                                               ; preds = %93, %92
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %99, %101
  %103 = call i64 @decode_session_identifier(i64* %16, %struct.TYPE_29__* %13, i64* %18, %struct.TYPE_29__* %14, i64* %19, i64* %20, %struct.TYPE_29__* %15, i64 %97, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %289

106:                                              ; preds = %95
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* %16, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %289

111:                                              ; preds = %106
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* %16, align 8
  %114 = sub nsw i64 %112, %113
  %115 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = mul nsw i64 %119, 1000
  %121 = icmp sgt i64 %114, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  br label %289

123:                                              ; preds = %111
  %124 = load i32*, i32** %10, align 8
  store i32 0, i32* %124, align 4
  %125 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %11, align 8
  %126 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %123
  %131 = load i32, i32* %27, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %130
  %134 = load i64, i64* %17, align 8
  %135 = load i64, i64* %16, align 8
  %136 = sub nsw i64 %134, %135
  %137 = load %struct.st_ptls_client_hello_psk_t*, %struct.st_ptls_client_hello_psk_t** %26, align 8
  %138 = getelementptr inbounds %struct.st_ptls_client_hello_psk_t, %struct.st_ptls_client_hello_psk_t* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %18, align 8
  %141 = sub nsw i64 %139, %140
  %142 = sub nsw i64 %136, %141
  store i64 %142, i64* %28, align 8
  %143 = load i64, i64* %28, align 8
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %133
  %146 = load i64, i64* %28, align 8
  %147 = sub nsw i64 0, %146
  store i64 %147, i64* %28, align 8
  br label %148

148:                                              ; preds = %145, %133
  %149 = load i64, i64* %28, align 8
  %150 = load i64, i64* @PTLS_EARLY_DATA_MAX_DELAY, align 8
  %151 = icmp sle i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32*, i32** %10, align 8
  store i32 1, i32* %153, align 4
  br label %154

154:                                              ; preds = %152, %148
  br label %155

155:                                              ; preds = %154, %130, %123
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %178

159:                                              ; preds = %155
  %160 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %160, i32 0, i32 5
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %289

165:                                              ; preds = %159
  %166 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = bitcast %struct.TYPE_29__* %14 to { i64, i32 }*
  %170 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %169, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @vec_is_string(i64 %171, i32 %173, i32* %168)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %165
  br label %289

177:                                              ; preds = %165
  br label %185

178:                                              ; preds = %155
  %179 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %179, i32 0, i32 5
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %289

184:                                              ; preds = %178
  br label %185

185:                                              ; preds = %184, %177
  %186 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %186, i32 0, i32 4
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %189, align 8
  store %struct.TYPE_42__** %190, %struct.TYPE_42__*** %29, align 8
  br label %191

191:                                              ; preds = %205, %185
  %192 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %29, align 8
  %193 = load %struct.TYPE_42__*, %struct.TYPE_42__** %192, align 8
  %194 = icmp ne %struct.TYPE_42__* %193, null
  br i1 %194, label %195, label %202

195:                                              ; preds = %191
  %196 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %29, align 8
  %197 = load %struct.TYPE_42__*, %struct.TYPE_42__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %19, align 8
  %201 = icmp ne i64 %199, %200
  br label %202

202:                                              ; preds = %195, %191
  %203 = phi i1 [ false, %191 ], [ %201, %195 ]
  br i1 %203, label %204, label %208

204:                                              ; preds = %202
  br label %205

205:                                              ; preds = %204
  %206 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %29, align 8
  %207 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %206, i32 1
  store %struct.TYPE_42__** %207, %struct.TYPE_42__*** %29, align 8
  br label %191

208:                                              ; preds = %202
  %209 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %29, align 8
  %210 = load %struct.TYPE_42__*, %struct.TYPE_42__** %209, align 8
  %211 = icmp eq %struct.TYPE_42__* %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  br label %289

213:                                              ; preds = %208
  %214 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %29, align 8
  %215 = load %struct.TYPE_42__*, %struct.TYPE_42__** %214, align 8
  %216 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %216, i32 0, i32 1
  store %struct.TYPE_42__* %215, %struct.TYPE_42__** %217, align 8
  %218 = load i64, i64* %20, align 8
  %219 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_35__*, %struct.TYPE_35__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %218, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %213
  br label %289

226:                                              ; preds = %213
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %249

230:                                              ; preds = %226
  %231 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = icmp eq i32* %233, null
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %289

236:                                              ; preds = %230
  %237 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = bitcast %struct.TYPE_29__* %15 to { i64, i32 }*
  %241 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %240, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @vec_is_string(i64 %242, i32 %244, i32* %239)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %236
  br label %289

248:                                              ; preds = %236
  br label %249

249:                                              ; preds = %248, %226
  %250 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_34__*, %struct.TYPE_34__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_40__*, %struct.TYPE_40__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_39__*, %struct.TYPE_39__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %251, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %249
  br label %289

264:                                              ; preds = %249
  %265 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %11, align 8
  %266 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %267, i32 0, i32 1
  %269 = load %struct.st_ptls_client_hello_psk_t*, %struct.st_ptls_client_hello_psk_t** %268, align 8
  %270 = load i64*, i64** %9, align 8
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.st_ptls_client_hello_psk_t, %struct.st_ptls_client_hello_psk_t* %269, i64 %271
  %273 = getelementptr inbounds %struct.st_ptls_client_hello_psk_t, %struct.st_ptls_client_hello_psk_t* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_34__*, %struct.TYPE_34__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_40__*, %struct.TYPE_40__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %280, i64 0
  %282 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_39__*, %struct.TYPE_39__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %275, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %264
  br label %289

288:                                              ; preds = %264
  br label %299

289:                                              ; preds = %287, %263, %247, %235, %225, %212, %183, %176, %164, %122, %110, %105, %94
  %290 = load i64*, i64** %9, align 8
  %291 = load i64, i64* %290, align 8
  %292 = add i64 %291, 1
  store i64 %292, i64* %290, align 8
  br label %56

293:                                              ; preds = %56
  %294 = load i64, i64* @SIZE_MAX, align 8
  %295 = load i64*, i64** %9, align 8
  store i64 %294, i64* %295, align 8
  %296 = load i32*, i32** %10, align 8
  store i32 0, i32* %296, align 4
  %297 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %297, i32 0, i32 1
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %298, align 8
  store i32 0, i32* %25, align 4
  br label %360

299:                                              ; preds = %288
  %300 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** %301, align 8
  %303 = bitcast %struct.TYPE_29__* %13 to { i64, i32 }*
  %304 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %303, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @key_schedule_extract(%struct.TYPE_34__* %302, i64 %305, i32 %307)
  store i32 %308, i32* %25, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %299
  br label %360

311:                                              ; preds = %299
  %312 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_34__*, %struct.TYPE_34__** %313, align 8
  %315 = call i32 @derive_secret(%struct.TYPE_34__* %314, i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %315, i32* %25, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %311
  br label %360

318:                                              ; preds = %311
  %319 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_34__*, %struct.TYPE_34__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = call i32 @ptls__key_schedule_update_hash(%struct.TYPE_34__* %321, i32 %323, i64 %325)
  %327 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %327, i32 0, i32 0
  %329 = load %struct.TYPE_34__*, %struct.TYPE_34__** %328, align 8
  %330 = call i32 @calc_verify_data(i32* %52, %struct.TYPE_34__* %329, i32* %49)
  store i32 %330, i32* %25, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %318
  br label %360

333:                                              ; preds = %318
  %334 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %11, align 8
  %335 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %336, i32 0, i32 1
  %338 = load %struct.st_ptls_client_hello_psk_t*, %struct.st_ptls_client_hello_psk_t** %337, align 8
  %339 = load i64*, i64** %9, align 8
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds %struct.st_ptls_client_hello_psk_t, %struct.st_ptls_client_hello_psk_t* %338, i64 %340
  %342 = getelementptr inbounds %struct.st_ptls_client_hello_psk_t, %struct.st_ptls_client_hello_psk_t* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_34__*, %struct.TYPE_34__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_40__*, %struct.TYPE_40__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %349, i64 0
  %351 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_39__*, %struct.TYPE_39__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = call i32 @ptls_mem_equal(i32 %344, i32* %52, i64 %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %333
  %358 = load i32, i32* @PTLS_ALERT_DECRYPT_ERROR, align 4
  store i32 %358, i32* %25, align 4
  br label %360

359:                                              ; preds = %333
  store i32 0, i32* %25, align 4
  br label %360

360:                                              ; preds = %359, %357, %332, %317, %310, %293
  %361 = call i32 @ptls_buffer_dispose(%struct.TYPE_30__* %12)
  %362 = mul nuw i64 4, %47
  %363 = trunc i64 %362 to i32
  %364 = call i32 @ptls_clear_memory(i32* %49, i32 %363)
  %365 = mul nuw i64 4, %51
  %366 = trunc i64 %365 to i32
  %367 = call i32 @ptls_clear_memory(i32* %52, i32 %366)
  %368 = load i32, i32* %25, align 4
  %369 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %369)
  ret i32 %368
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_30__*, i32*, i32) #2

declare dso_local i64 @decode_session_identifier(i64*, %struct.TYPE_29__*, i64*, %struct.TYPE_29__*, i64*, i64*, %struct.TYPE_29__*, i64, i64) #2

declare dso_local i32 @vec_is_string(i64, i32, i32*) #2

declare dso_local i32 @key_schedule_extract(%struct.TYPE_34__*, i64, i32) #2

declare dso_local i32 @derive_secret(%struct.TYPE_34__*, i32*, i8*) #2

declare dso_local i32 @ptls__key_schedule_update_hash(%struct.TYPE_34__*, i32, i64) #2

declare dso_local i32 @calc_verify_data(i32*, %struct.TYPE_34__*, i32*) #2

declare dso_local i32 @ptls_mem_equal(i32, i32*, i64) #2

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_30__*) #2

declare dso_local i32 @ptls_clear_memory(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
