; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_strauss_wnaf.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_strauss_wnaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32*, i32* }
%struct.secp256k1_strauss_state = type { i32*, %struct.TYPE_20__*, i32*, i32, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32, i32, i32*, i32, i32*, i32, i32*, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }

@WINDOW_A = common dso_local global i32 0, align 4
@WINDOW_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.secp256k1_strauss_state*, %struct.TYPE_21__*, i32, %struct.TYPE_21__*, i32*, i32*)* @secp256k1_ecmult_strauss_wnaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_ecmult_strauss_wnaf(%struct.TYPE_22__* %0, %struct.secp256k1_strauss_state* %1, %struct.TYPE_21__* %2, i32 %3, %struct.TYPE_21__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.secp256k1_strauss_state*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [256 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_21__, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store %struct.secp256k1_strauss_state* %1, %struct.secp256k1_strauss_state** %9, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %25

25:                                               ; preds = %97, %7
  %26 = load i32, i32* %21, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %100

29:                                               ; preds = %25
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %21, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i64 @secp256k1_scalar_is_zero(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %38 = load i32, i32* %21, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i64 %39
  %41 = call i64 @secp256k1_gej_is_infinity(%struct.TYPE_21__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36, %29
  br label %97

44:                                               ; preds = %36
  %45 = load i32, i32* %21, align 4
  %46 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %47 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %46, i32 0, i32 1
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = load i32, i32* %22, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 8
  %53 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %54 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %53, i32 0, i32 1
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %54, align 8
  %56 = load i32, i32* %22, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %21, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* @WINDOW_A, align 4
  %66 = call i8* @secp256k1_ecmult_wnaf(i32* %60, i32 256, i32* %64, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %69 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %68, i32 0, i32 1
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = load i32, i32* %22, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 5
  store i32 %67, i32* %74, align 8
  %75 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %76 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %75, i32 0, i32 1
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = load i32, i32* %22, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %20, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %44
  %86 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %87 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %86, i32 0, i32 1
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = load i32, i32* %22, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %20, align 4
  br label %94

94:                                               ; preds = %85, %44
  %95 = load i32, i32* %22, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %22, align 4
  br label %97

97:                                               ; preds = %94, %43
  %98 = load i32, i32* %21, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %21, align 4
  br label %25

100:                                              ; preds = %25
  %101 = load i32, i32* %22, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %227

103:                                              ; preds = %100
  %104 = load i32, i32* @WINDOW_A, align 4
  %105 = call i32 @ECMULT_TABLE_SIZE(i32 %104)
  %106 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %107 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %106, i32 0, i32 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  %109 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %110 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %113 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %114 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %113, i32 0, i32 1
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i64 %119
  %121 = call i32 @secp256k1_ecmult_odd_multiples_table(i32 %105, %struct.TYPE_19__* %108, i32 %111, %struct.TYPE_21__* %120)
  store i32 1, i32* %21, align 4
  br label %122

122:                                              ; preds = %209, %103
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %22, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %212

126:                                              ; preds = %122
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %128 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %129 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %128, i32 0, i32 1
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %129, align 8
  %131 = load i32, i32* %21, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i64 %136
  %138 = bitcast %struct.TYPE_21__* %23 to i8*
  %139 = bitcast %struct.TYPE_21__* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 4 %139, i64 8, i1 false)
  %140 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %141 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %140, i32 0, i32 4
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %141, align 8
  %143 = load i32, i32* %21, align 4
  %144 = sub nsw i32 %143, 1
  %145 = load i32, i32* @WINDOW_A, align 4
  %146 = call i32 @ECMULT_TABLE_SIZE(i32 %145)
  %147 = mul nsw i32 %144, %146
  %148 = load i32, i32* @WINDOW_A, align 4
  %149 = call i32 @ECMULT_TABLE_SIZE(i32 %148)
  %150 = add nsw i32 %147, %149
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = call i32 @secp256k1_gej_rescale(%struct.TYPE_21__* %23, i32* %154)
  %156 = load i32, i32* @WINDOW_A, align 4
  %157 = call i32 @ECMULT_TABLE_SIZE(i32 %156)
  %158 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %159 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %158, i32 0, i32 4
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %159, align 8
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* @WINDOW_A, align 4
  %163 = call i32 @ECMULT_TABLE_SIZE(i32 %162)
  %164 = mul nsw i32 %161, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i64 %165
  %167 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %168 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* @WINDOW_A, align 4
  %172 = call i32 @ECMULT_TABLE_SIZE(i32 %171)
  %173 = mul nsw i32 %170, %172
  %174 = add nsw i32 %169, %173
  %175 = call i32 @secp256k1_ecmult_odd_multiples_table(i32 %157, %struct.TYPE_19__* %166, i32 %174, %struct.TYPE_21__* %23)
  %176 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %177 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* @WINDOW_A, align 4
  %181 = call i32 @ECMULT_TABLE_SIZE(i32 %180)
  %182 = mul nsw i32 %179, %181
  %183 = add nsw i32 %178, %182
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i32*
  %186 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %187 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %21, align 4
  %190 = load i32, i32* @WINDOW_A, align 4
  %191 = call i32 @ECMULT_TABLE_SIZE(i32 %190)
  %192 = mul nsw i32 %189, %191
  %193 = add nsw i32 %188, %192
  %194 = sext i32 %193 to i64
  %195 = inttoptr i64 %194 to i32*
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %197 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %198 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %197, i32 0, i32 1
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %198, align 8
  %200 = load i32, i32* %21, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = call i32 @secp256k1_fe_mul(i32* %185, i32* %195, i32* %207)
  br label %209

209:                                              ; preds = %126
  %210 = load i32, i32* %21, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %21, align 4
  br label %122

212:                                              ; preds = %122
  %213 = load i32, i32* @WINDOW_A, align 4
  %214 = call i32 @ECMULT_TABLE_SIZE(i32 %213)
  %215 = load i32, i32* %22, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %218 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %221 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %220, i32 0, i32 4
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %221, align 8
  %223 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %224 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @secp256k1_ge_globalz_set_table_gej(i32 %216, i32* %219, i32* %16, %struct.TYPE_19__* %222, i32 %225)
  br label %229

227:                                              ; preds = %100
  %228 = call i32 @secp256k1_fe_set_int(i32* %16, i32 1)
  br label %229

229:                                              ; preds = %227, %212
  %230 = load i32*, i32** %14, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %244

232:                                              ; preds = %229
  %233 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 0
  %234 = load i32*, i32** %14, align 8
  %235 = load i32, i32* @WINDOW_G, align 4
  %236 = call i8* @secp256k1_ecmult_wnaf(i32* %233, i32 256, i32* %234, i32 %235)
  %237 = ptrtoint i8* %236 to i32
  store i32 %237, i32* %18, align 4
  %238 = load i32, i32* %18, align 4
  %239 = load i32, i32* %20, align 4
  %240 = icmp sgt i32 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %232
  %242 = load i32, i32* %18, align 4
  store i32 %242, i32* %20, align 4
  br label %243

243:                                              ; preds = %241, %232
  br label %244

244:                                              ; preds = %243, %229
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %246 = call i32 @secp256k1_gej_set_infinity(%struct.TYPE_21__* %245)
  %247 = load i32, i32* %20, align 4
  %248 = sub nsw i32 %247, 1
  store i32 %248, i32* %19, align 4
  br label %249

249:                                              ; preds = %327, %244
  %250 = load i32, i32* %19, align 4
  %251 = icmp sge i32 %250, 0
  br i1 %251, label %252, label %330

252:                                              ; preds = %249
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %255 = call i32 @secp256k1_gej_double_var(%struct.TYPE_21__* %253, %struct.TYPE_21__* %254, i32* null)
  store i32 0, i32* %21, align 4
  br label %256

256:                                              ; preds = %302, %252
  %257 = load i32, i32* %21, align 4
  %258 = load i32, i32* %22, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %305

260:                                              ; preds = %256
  %261 = load i32, i32* %19, align 4
  %262 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %263 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %262, i32 0, i32 1
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %263, align 8
  %265 = load i32, i32* %21, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = icmp slt i32 %261, %269
  br i1 %270, label %271, label %301

271:                                              ; preds = %260
  %272 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %273 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %272, i32 0, i32 1
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %273, align 8
  %275 = load i32, i32* %21, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 6
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %19, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %24, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %301

285:                                              ; preds = %271
  %286 = load %struct.secp256k1_strauss_state*, %struct.secp256k1_strauss_state** %9, align 8
  %287 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %21, align 4
  %290 = load i32, i32* @WINDOW_A, align 4
  %291 = call i32 @ECMULT_TABLE_SIZE(i32 %290)
  %292 = mul nsw i32 %289, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %288, i64 %293
  %295 = load i32, i32* %24, align 4
  %296 = load i32, i32* @WINDOW_A, align 4
  %297 = call i32 @ECMULT_TABLE_GET_GE(i32* %15, i32* %294, i32 %295, i32 %296)
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %300 = call i32 @secp256k1_gej_add_ge_var(%struct.TYPE_21__* %298, %struct.TYPE_21__* %299, i32* %15, i32* null)
  br label %301

301:                                              ; preds = %285, %271, %260
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %21, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %21, align 4
  br label %256

305:                                              ; preds = %256
  %306 = load i32, i32* %19, align 4
  %307 = load i32, i32* %18, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %326

309:                                              ; preds = %305
  %310 = load i32, i32* %19, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %311
  %313 = load i32, i32* %312, align 4
  store i32 %313, i32* %24, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %326

315:                                              ; preds = %309
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %24, align 4
  %321 = load i32, i32* @WINDOW_G, align 4
  %322 = call i32 @ECMULT_TABLE_GET_GE_STORAGE(i32* %15, i32 %319, i32 %320, i32 %321)
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %325 = call i32 @secp256k1_gej_add_zinv_var(%struct.TYPE_21__* %323, %struct.TYPE_21__* %324, i32* %15, i32* %16)
  br label %326

326:                                              ; preds = %315, %309, %305
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %19, align 4
  %329 = add nsw i32 %328, -1
  store i32 %329, i32* %19, align 4
  br label %249

330:                                              ; preds = %249
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %341, label %335

335:                                              ; preds = %330
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %338, i32 0, i32 0
  %340 = call i32 @secp256k1_fe_mul(i32* %337, i32* %339, i32* %16)
  br label %341

341:                                              ; preds = %335, %330
  ret void
}

declare dso_local i64 @secp256k1_scalar_is_zero(i32*) #1

declare dso_local i64 @secp256k1_gej_is_infinity(%struct.TYPE_21__*) #1

declare dso_local i8* @secp256k1_ecmult_wnaf(i32*, i32, i32*, i32) #1

declare dso_local i32 @secp256k1_ecmult_odd_multiples_table(i32, %struct.TYPE_19__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @ECMULT_TABLE_SIZE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @secp256k1_gej_rescale(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @secp256k1_fe_mul(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_ge_globalz_set_table_gej(i32, i32*, i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @secp256k1_fe_set_int(i32*, i32) #1

declare dso_local i32 @secp256k1_gej_set_infinity(%struct.TYPE_21__*) #1

declare dso_local i32 @secp256k1_gej_double_var(%struct.TYPE_21__*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @ECMULT_TABLE_GET_GE(i32*, i32*, i32, i32) #1

declare dso_local i32 @secp256k1_gej_add_ge_var(%struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @ECMULT_TABLE_GET_GE_STORAGE(i32*, i32, i32, i32) #1

declare dso_local i32 @secp256k1_gej_add_zinv_var(%struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
