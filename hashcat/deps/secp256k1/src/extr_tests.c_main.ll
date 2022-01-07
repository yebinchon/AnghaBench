; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_main.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%2hx\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [83 x i8] c"WARNING: could not read 16 bytes from /dev/urandom; falling back to insecure PRNG\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"test count = %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [80 x i8] c"random seed = %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\0A\00", align 1
@SECP256K1_CONTEXT_SIGN = common dso_local global i32 0, align 4
@SECP256K1_CONTEXT_VERIFY = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [79 x i8] c"random run = %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"no problems found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = bitcast [16 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false)
  %14 = bitcast [32 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false)
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strtol(i8* %20, i32* null, i32 0)
  store i32 %21, i32* @count, align 4
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %63

25:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %57, %25
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %38, %32, %29
  %45 = phi i1 [ false, %32 ], [ false, %29 ], [ %43, %38 ]
  br i1 %45, label %46, label %62

46:                                               ; preds = %44
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @sscanf(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i16* %10)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i16, i16* %10, align 2
  %52 = trunc i16 %51 to i8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %54
  store i8 %52, i8* %55, align 1
  br label %57

56:                                               ; preds = %46
  br label %62

57:                                               ; preds = %50
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8* %59, i8** %9, align 8
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %29

62:                                               ; preds = %56, %44
  br label %150

63:                                               ; preds = %22
  %64 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = bitcast [16 x i8]* %6 to i8**
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @fread(i8** %68, i32 1, i32 16, i32* %69)
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %71, 16
  br i1 %72, label %73, label %143

73:                                               ; preds = %67, %63
  %74 = call zeroext i8 @time(i32* null)
  %75 = zext i8 %74 to i32
  %76 = mul nsw i32 %75, 57
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %12, align 1
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i8, i8* %12, align 1
  %81 = zext i8 %80 to i32
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %83 = load i8, i8* %82, align 16
  %84 = zext i8 %83 to i32
  %85 = xor i32 %84, %81
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %82, align 16
  %87 = load i8, i8* %12, align 1
  %88 = zext i8 %87 to i32
  %89 = ashr i32 %88, 8
  %90 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = xor i32 %92, %89
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %90, align 1
  %95 = load i8, i8* %12, align 1
  %96 = zext i8 %95 to i32
  %97 = ashr i32 %96, 16
  %98 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  %99 = load i8, i8* %98, align 2
  %100 = zext i8 %99 to i32
  %101 = xor i32 %100, %97
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %98, align 2
  %103 = load i8, i8* %12, align 1
  %104 = zext i8 %103 to i32
  %105 = ashr i32 %104, 24
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 3
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = xor i32 %108, %105
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %106, align 1
  %111 = load i8, i8* %12, align 1
  %112 = zext i8 %111 to i32
  %113 = ashr i32 %112, 32
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 4
  %115 = load i8, i8* %114, align 4
  %116 = zext i8 %115 to i32
  %117 = xor i32 %116, %113
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %114, align 4
  %119 = load i8, i8* %12, align 1
  %120 = zext i8 %119 to i32
  %121 = ashr i32 %120, 40
  %122 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 5
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = xor i32 %124, %121
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %122, align 1
  %127 = load i8, i8* %12, align 1
  %128 = zext i8 %127 to i32
  %129 = ashr i32 %128, 48
  %130 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 6
  %131 = load i8, i8* %130, align 2
  %132 = zext i8 %131 to i32
  %133 = xor i32 %132, %129
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %130, align 2
  %135 = load i8, i8* %12, align 1
  %136 = zext i8 %135 to i32
  %137 = ashr i32 %136, 56
  %138 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 7
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = xor i32 %140, %137
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %138, align 1
  br label %143

143:                                              ; preds = %73, %67
  %144 = load i32*, i32** %11, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @fclose(i32* %147)
  br label %149

149:                                              ; preds = %146, %143
  br label %150

150:                                              ; preds = %149, %62
  %151 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %152 = call i32 @secp256k1_rand_seed(i8* %151)
  %153 = load i32, i32* @count, align 4
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %153)
  %155 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %156 = load i8, i8* %155, align 16
  %157 = zext i8 %156 to i32
  %158 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  %162 = load i8, i8* %161, align 2
  %163 = zext i8 %162 to i32
  %164 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 3
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 4
  %168 = load i8, i8* %167, align 4
  %169 = zext i8 %168 to i32
  %170 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 5
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 6
  %174 = load i8, i8* %173, align 2
  %175 = zext i8 %174 to i32
  %176 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 7
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 8
  %180 = load i8, i8* %179, align 8
  %181 = zext i8 %180 to i32
  %182 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 9
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 10
  %186 = load i8, i8* %185, align 2
  %187 = zext i8 %186 to i32
  %188 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 11
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 12
  %192 = load i8, i8* %191, align 4
  %193 = zext i8 %192 to i32
  %194 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 13
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 14
  %198 = load i8, i8* %197, align 2
  %199 = zext i8 %198 to i32
  %200 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 15
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0), i32 %157, i32 %160, i32 %163, i32 %166, i32 %169, i32 %172, i32 %175, i32 %178, i32 %181, i32 %184, i32 %187, i32 %190, i32 %193, i32 %196, i32 %199, i32 %202)
  %204 = call i32 @run_context_tests(i32 0)
  %205 = call i32 @run_context_tests(i32 1)
  %206 = call i32 (...) @run_scratch_tests()
  %207 = load i32, i32* @SECP256K1_CONTEXT_SIGN, align 4
  %208 = load i32, i32* @SECP256K1_CONTEXT_VERIFY, align 4
  %209 = or i32 %207, %208
  %210 = call i32 @secp256k1_context_create(i32 %209)
  store i32 %210, i32* @ctx, align 4
  %211 = call i64 @secp256k1_rand_bits(i32 1)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %150
  %214 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %215 = call i32 @secp256k1_rand256(i8* %214)
  %216 = load i32, i32* @ctx, align 4
  %217 = call i64 @secp256k1_rand_bits(i32 1)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  br label %222

221:                                              ; preds = %213
  br label %222

222:                                              ; preds = %221, %219
  %223 = phi i8* [ %220, %219 ], [ null, %221 ]
  %224 = call i32 @secp256k1_context_randomize(i32 %216, i8* %223)
  %225 = call i32 @CHECK(i32 %224)
  br label %226

226:                                              ; preds = %222, %150
  %227 = call i32 (...) @run_rand_bits()
  %228 = call i32 (...) @run_rand_int()
  %229 = call i32 (...) @run_sha256_tests()
  %230 = call i32 (...) @run_hmac_sha256_tests()
  %231 = call i32 (...) @run_rfc6979_hmac_sha256_tests()
  %232 = call i32 (...) @run_num_smalltests()
  %233 = call i32 (...) @run_scalar_tests()
  %234 = call i32 (...) @run_field_inv()
  %235 = call i32 (...) @run_field_inv_var()
  %236 = call i32 (...) @run_field_inv_all_var()
  %237 = call i32 (...) @run_field_misc()
  %238 = call i32 (...) @run_field_convert()
  %239 = call i32 (...) @run_sqr()
  %240 = call i32 (...) @run_sqrt()
  %241 = call i32 (...) @run_ge()
  %242 = call i32 (...) @run_group_decompress()
  %243 = call i32 (...) @run_wnaf()
  %244 = call i32 (...) @run_point_times_order()
  %245 = call i32 (...) @run_ecmult_chain()
  %246 = call i32 (...) @run_ecmult_constants()
  %247 = call i32 (...) @run_ecmult_gen_blind()
  %248 = call i32 (...) @run_ecmult_const_tests()
  %249 = call i32 (...) @run_ecmult_multi_tests()
  %250 = call i32 (...) @run_ec_combine()
  %251 = call i32 (...) @run_ec_pubkey_parse_test()
  %252 = call i32 (...) @run_eckey_edge_case_test()
  %253 = call i32 (...) @run_random_pubkeys()
  %254 = call i32 (...) @run_ecdsa_der_parse()
  %255 = call i32 (...) @run_ecdsa_sign_verify()
  %256 = call i32 (...) @run_ecdsa_end_to_end()
  %257 = call i32 (...) @run_ecdsa_edge_cases()
  %258 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %259 = call i32 @secp256k1_rand256(i8* %258)
  %260 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %261 = load i8, i8* %260, align 16
  %262 = zext i8 %261 to i32
  %263 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 1
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 2
  %267 = load i8, i8* %266, align 2
  %268 = zext i8 %267 to i32
  %269 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 3
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 4
  %273 = load i8, i8* %272, align 4
  %274 = zext i8 %273 to i32
  %275 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 5
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 6
  %279 = load i8, i8* %278, align 2
  %280 = zext i8 %279 to i32
  %281 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 7
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 8
  %285 = load i8, i8* %284, align 8
  %286 = zext i8 %285 to i32
  %287 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 9
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 10
  %291 = load i8, i8* %290, align 2
  %292 = zext i8 %291 to i32
  %293 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 11
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 12
  %297 = load i8, i8* %296, align 4
  %298 = zext i8 %297 to i32
  %299 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 13
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  %302 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 14
  %303 = load i8, i8* %302, align 2
  %304 = zext i8 %303 to i32
  %305 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 15
  %306 = load i8, i8* %305, align 1
  %307 = zext i8 %306 to i32
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i32 %262, i32 %265, i32 %268, i32 %271, i32 %274, i32 %277, i32 %280, i32 %283, i32 %286, i32 %289, i32 %292, i32 %295, i32 %298, i32 %301, i32 %304, i32 %307)
  %309 = load i32, i32* @ctx, align 4
  %310 = call i32 @secp256k1_context_destroy(i32 %309)
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i16*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fread(i8**, i32, i32, i32*) #2

declare dso_local zeroext i8 @time(i32*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @secp256k1_rand_seed(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @run_context_tests(i32) #2

declare dso_local i32 @run_scratch_tests(...) #2

declare dso_local i32 @secp256k1_context_create(i32) #2

declare dso_local i64 @secp256k1_rand_bits(i32) #2

declare dso_local i32 @secp256k1_rand256(i8*) #2

declare dso_local i32 @CHECK(i32) #2

declare dso_local i32 @secp256k1_context_randomize(i32, i8*) #2

declare dso_local i32 @run_rand_bits(...) #2

declare dso_local i32 @run_rand_int(...) #2

declare dso_local i32 @run_sha256_tests(...) #2

declare dso_local i32 @run_hmac_sha256_tests(...) #2

declare dso_local i32 @run_rfc6979_hmac_sha256_tests(...) #2

declare dso_local i32 @run_num_smalltests(...) #2

declare dso_local i32 @run_scalar_tests(...) #2

declare dso_local i32 @run_field_inv(...) #2

declare dso_local i32 @run_field_inv_var(...) #2

declare dso_local i32 @run_field_inv_all_var(...) #2

declare dso_local i32 @run_field_misc(...) #2

declare dso_local i32 @run_field_convert(...) #2

declare dso_local i32 @run_sqr(...) #2

declare dso_local i32 @run_sqrt(...) #2

declare dso_local i32 @run_ge(...) #2

declare dso_local i32 @run_group_decompress(...) #2

declare dso_local i32 @run_wnaf(...) #2

declare dso_local i32 @run_point_times_order(...) #2

declare dso_local i32 @run_ecmult_chain(...) #2

declare dso_local i32 @run_ecmult_constants(...) #2

declare dso_local i32 @run_ecmult_gen_blind(...) #2

declare dso_local i32 @run_ecmult_const_tests(...) #2

declare dso_local i32 @run_ecmult_multi_tests(...) #2

declare dso_local i32 @run_ec_combine(...) #2

declare dso_local i32 @run_ec_pubkey_parse_test(...) #2

declare dso_local i32 @run_eckey_edge_case_test(...) #2

declare dso_local i32 @run_random_pubkeys(...) #2

declare dso_local i32 @run_ecdsa_der_parse(...) #2

declare dso_local i32 @run_ecdsa_sign_verify(...) #2

declare dso_local i32 @run_ecdsa_end_to_end(...) #2

declare dso_local i32 @run_ecdsa_edge_cases(...) #2

declare dso_local i32 @secp256k1_context_destroy(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
