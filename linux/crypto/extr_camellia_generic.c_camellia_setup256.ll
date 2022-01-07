; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_camellia_generic.c_camellia_setup256.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_camellia_generic.c_camellia_setup256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAMELLIA_SIGMA1L = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA1R = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA2L = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA2R = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA3L = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA3R = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA4L = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA4R = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA5L = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA5R = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA6L = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA6R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @camellia_setup256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camellia_setup256(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [34 x i32], align 16
  %20 = alloca [34 x i32], align 16
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @get_unaligned_be32(i8* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  %25 = call i32 @get_unaligned_be32(i8* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 8
  %28 = call i32 @get_unaligned_be32(i8* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 12
  %31 = call i32 @get_unaligned_be32(i8* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 16
  %34 = call i32 @get_unaligned_be32(i8* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 20
  %37 = call i32 @get_unaligned_be32(i8* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 24
  %40 = call i32 @get_unaligned_be32(i8* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 28
  %43 = call i32 @get_unaligned_be32(i8* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 0
  store i32 %44, i32* %45, align 16
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 0
  store i32 %46, i32* %47, align 16
  %48 = load i32, i32* %7, align 4
  %49 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @ROLDQo32(i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 45)
  %59 = load i32, i32* %5, align 4
  %60 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 12
  store i32 %59, i32* %60, align 16
  %61 = load i32, i32* %6, align 4
  %62 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 12
  store i32 %61, i32* %62, align 16
  %63 = load i32, i32* %7, align 4
  %64 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 13
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 13
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @ROLDQ(i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 15)
  %74 = load i32, i32* %5, align 4
  %75 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 16
  store i32 %74, i32* %75, align 16
  %76 = load i32, i32* %6, align 4
  %77 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 16
  store i32 %76, i32* %77, align 16
  %78 = load i32, i32* %7, align 4
  %79 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 17
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 17
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @ROLDQ(i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 17)
  %89 = load i32, i32* %5, align 4
  %90 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 22
  store i32 %89, i32* %90, align 8
  %91 = load i32, i32* %6, align 4
  %92 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 22
  store i32 %91, i32* %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 23
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %8, align 4
  %96 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 23
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @ROLDQo32(i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 34)
  %104 = load i32, i32* %5, align 4
  %105 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 30
  store i32 %104, i32* %105, align 8
  %106 = load i32, i32* %6, align 4
  %107 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 30
  store i32 %106, i32* %107, align 8
  %108 = load i32, i32* %7, align 4
  %109 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 31
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %8, align 4
  %111 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 31
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @ROLDQ(i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 15)
  %119 = load i32, i32* %9, align 4
  %120 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 4
  store i32 %119, i32* %120, align 16
  %121 = load i32, i32* %10, align 4
  %122 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 4
  store i32 %121, i32* %122, align 16
  %123 = load i32, i32* %11, align 4
  %124 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 5
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %12, align 4
  %126 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 5
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %18, align 4
  %133 = call i32 @ROLDQ(i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 15)
  %134 = load i32, i32* %9, align 4
  %135 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 8
  store i32 %134, i32* %135, align 16
  %136 = load i32, i32* %10, align 4
  %137 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 8
  store i32 %136, i32* %137, align 16
  %138 = load i32, i32* %11, align 4
  %139 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 9
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* %12, align 4
  %141 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 9
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %18, align 4
  %148 = call i32 @ROLDQ(i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 30)
  %149 = load i32, i32* %9, align 4
  %150 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 18
  store i32 %149, i32* %150, align 8
  %151 = load i32, i32* %10, align 4
  %152 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 18
  store i32 %151, i32* %152, align 8
  %153 = load i32, i32* %11, align 4
  %154 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 19
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* %12, align 4
  %156 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 19
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %18, align 4
  %163 = call i32 @ROLDQo32(i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 34)
  %164 = load i32, i32* %9, align 4
  %165 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 26
  store i32 %164, i32* %165, align 8
  %166 = load i32, i32* %10, align 4
  %167 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 26
  store i32 %166, i32* %167, align 8
  %168 = load i32, i32* %11, align 4
  %169 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 27
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* %12, align 4
  %171 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 27
  store i32 %170, i32* %171, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %18, align 4
  %178 = call i32 @ROLDQo32(i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 34)
  %179 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 0
  %180 = load i32, i32* %179, align 16
  %181 = load i32, i32* %9, align 4
  %182 = xor i32 %180, %181
  store i32 %182, i32* %5, align 4
  %183 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 0
  %184 = load i32, i32* %183, align 16
  %185 = load i32, i32* %10, align 4
  %186 = xor i32 %184, %185
  store i32 %186, i32* %6, align 4
  %187 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %11, align 4
  %190 = xor i32 %188, %189
  store i32 %190, i32* %7, align 4
  %191 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %12, align 4
  %194 = xor i32 %192, %193
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @CAMELLIA_SIGMA1L, align 4
  %198 = load i32, i32* @CAMELLIA_SIGMA1R, align 4
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %16, align 4
  %205 = call i32 @CAMELLIA_F(i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %7, align 4
  %208 = xor i32 %207, %206
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %8, align 4
  %211 = xor i32 %210, %209
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @CAMELLIA_SIGMA2L, align 4
  %215 = load i32, i32* @CAMELLIA_SIGMA2R, align 4
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %16, align 4
  %222 = call i32 @CAMELLIA_F(i32 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221)
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %5, align 4
  %225 = xor i32 %224, %223
  store i32 %225, i32* %5, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* %6, align 4
  %228 = xor i32 %227, %226
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @CAMELLIA_SIGMA3L, align 4
  %232 = load i32, i32* @CAMELLIA_SIGMA3R, align 4
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* %14, align 4
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %16, align 4
  %239 = call i32 @CAMELLIA_F(i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238)
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %11, align 4
  %242 = xor i32 %240, %241
  %243 = load i32, i32* %7, align 4
  %244 = xor i32 %243, %242
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %18, align 4
  %246 = load i32, i32* %12, align 4
  %247 = xor i32 %245, %246
  %248 = load i32, i32* %8, align 4
  %249 = xor i32 %248, %247
  store i32 %249, i32* %8, align 4
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* @CAMELLIA_SIGMA4L, align 4
  %253 = load i32, i32* @CAMELLIA_SIGMA4R, align 4
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* %14, align 4
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %16, align 4
  %260 = call i32 @CAMELLIA_F(i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259)
  %261 = load i32, i32* %17, align 4
  %262 = load i32, i32* %5, align 4
  %263 = xor i32 %262, %261
  store i32 %263, i32* %5, align 4
  %264 = load i32, i32* %18, align 4
  %265 = load i32, i32* %6, align 4
  %266 = xor i32 %265, %264
  store i32 %266, i32* %6, align 4
  %267 = load i32, i32* %5, align 4
  %268 = load i32, i32* %9, align 4
  %269 = xor i32 %268, %267
  store i32 %269, i32* %9, align 4
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* %10, align 4
  %272 = xor i32 %271, %270
  store i32 %272, i32* %10, align 4
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* %11, align 4
  %275 = xor i32 %274, %273
  store i32 %275, i32* %11, align 4
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* %12, align 4
  %278 = xor i32 %277, %276
  store i32 %278, i32* %12, align 4
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* %10, align 4
  %281 = load i32, i32* @CAMELLIA_SIGMA5L, align 4
  %282 = load i32, i32* @CAMELLIA_SIGMA5R, align 4
  %283 = load i32, i32* %17, align 4
  %284 = load i32, i32* %18, align 4
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* %16, align 4
  %289 = call i32 @CAMELLIA_F(i32 %279, i32 %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287, i32 %288)
  %290 = load i32, i32* %17, align 4
  %291 = load i32, i32* %11, align 4
  %292 = xor i32 %291, %290
  store i32 %292, i32* %11, align 4
  %293 = load i32, i32* %18, align 4
  %294 = load i32, i32* %12, align 4
  %295 = xor i32 %294, %293
  store i32 %295, i32* %12, align 4
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* %12, align 4
  %298 = load i32, i32* @CAMELLIA_SIGMA6L, align 4
  %299 = load i32, i32* @CAMELLIA_SIGMA6R, align 4
  %300 = load i32, i32* %17, align 4
  %301 = load i32, i32* %18, align 4
  %302 = load i32, i32* %13, align 4
  %303 = load i32, i32* %14, align 4
  %304 = load i32, i32* %15, align 4
  %305 = load i32, i32* %16, align 4
  %306 = call i32 @CAMELLIA_F(i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304, i32 %305)
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* %9, align 4
  %309 = xor i32 %308, %307
  store i32 %309, i32* %9, align 4
  %310 = load i32, i32* %18, align 4
  %311 = load i32, i32* %10, align 4
  %312 = xor i32 %311, %310
  store i32 %312, i32* %10, align 4
  %313 = load i32, i32* %5, align 4
  %314 = load i32, i32* %6, align 4
  %315 = load i32, i32* %7, align 4
  %316 = load i32, i32* %8, align 4
  %317 = load i32, i32* %17, align 4
  %318 = load i32, i32* %18, align 4
  %319 = call i32 @ROLDQ(i32 %313, i32 %314, i32 %315, i32 %316, i32 %317, i32 %318, i32 15)
  %320 = load i32, i32* %5, align 4
  %321 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 6
  store i32 %320, i32* %321, align 8
  %322 = load i32, i32* %6, align 4
  %323 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 6
  store i32 %322, i32* %323, align 8
  %324 = load i32, i32* %7, align 4
  %325 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 7
  store i32 %324, i32* %325, align 4
  %326 = load i32, i32* %8, align 4
  %327 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 7
  store i32 %326, i32* %327, align 4
  %328 = load i32, i32* %5, align 4
  %329 = load i32, i32* %6, align 4
  %330 = load i32, i32* %7, align 4
  %331 = load i32, i32* %8, align 4
  %332 = load i32, i32* %17, align 4
  %333 = load i32, i32* %18, align 4
  %334 = call i32 @ROLDQ(i32 %328, i32 %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 30)
  %335 = load i32, i32* %5, align 4
  %336 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 14
  store i32 %335, i32* %336, align 8
  %337 = load i32, i32* %6, align 4
  %338 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 14
  store i32 %337, i32* %338, align 8
  %339 = load i32, i32* %7, align 4
  %340 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 15
  store i32 %339, i32* %340, align 4
  %341 = load i32, i32* %8, align 4
  %342 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 15
  store i32 %341, i32* %342, align 4
  %343 = load i32, i32* %6, align 4
  %344 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 24
  store i32 %343, i32* %344, align 16
  %345 = load i32, i32* %7, align 4
  %346 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 24
  store i32 %345, i32* %346, align 16
  %347 = load i32, i32* %8, align 4
  %348 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 25
  store i32 %347, i32* %348, align 4
  %349 = load i32, i32* %5, align 4
  %350 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 25
  store i32 %349, i32* %350, align 4
  %351 = load i32, i32* %5, align 4
  %352 = load i32, i32* %6, align 4
  %353 = load i32, i32* %7, align 4
  %354 = load i32, i32* %8, align 4
  %355 = load i32, i32* %17, align 4
  %356 = load i32, i32* %18, align 4
  %357 = call i32 @ROLDQo32(i32 %351, i32 %352, i32 %353, i32 %354, i32 %355, i32 %356, i32 49)
  %358 = load i32, i32* %5, align 4
  %359 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 28
  store i32 %358, i32* %359, align 16
  %360 = load i32, i32* %6, align 4
  %361 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 28
  store i32 %360, i32* %361, align 16
  %362 = load i32, i32* %7, align 4
  %363 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 29
  store i32 %362, i32* %363, align 4
  %364 = load i32, i32* %8, align 4
  %365 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 29
  store i32 %364, i32* %365, align 4
  %366 = load i32, i32* %9, align 4
  %367 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 2
  store i32 %366, i32* %367, align 8
  %368 = load i32, i32* %10, align 4
  %369 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 2
  store i32 %368, i32* %369, align 8
  %370 = load i32, i32* %11, align 4
  %371 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 3
  store i32 %370, i32* %371, align 4
  %372 = load i32, i32* %12, align 4
  %373 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 3
  store i32 %372, i32* %373, align 4
  %374 = load i32, i32* %9, align 4
  %375 = load i32, i32* %10, align 4
  %376 = load i32, i32* %11, align 4
  %377 = load i32, i32* %12, align 4
  %378 = load i32, i32* %17, align 4
  %379 = load i32, i32* %18, align 4
  %380 = call i32 @ROLDQ(i32 %374, i32 %375, i32 %376, i32 %377, i32 %378, i32 %379, i32 30)
  %381 = load i32, i32* %9, align 4
  %382 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 10
  store i32 %381, i32* %382, align 8
  %383 = load i32, i32* %10, align 4
  %384 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 10
  store i32 %383, i32* %384, align 8
  %385 = load i32, i32* %11, align 4
  %386 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 11
  store i32 %385, i32* %386, align 4
  %387 = load i32, i32* %12, align 4
  %388 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 11
  store i32 %387, i32* %388, align 4
  %389 = load i32, i32* %9, align 4
  %390 = load i32, i32* %10, align 4
  %391 = load i32, i32* %11, align 4
  %392 = load i32, i32* %12, align 4
  %393 = load i32, i32* %17, align 4
  %394 = load i32, i32* %18, align 4
  %395 = call i32 @ROLDQ(i32 %389, i32 %390, i32 %391, i32 %392, i32 %393, i32 %394, i32 30)
  %396 = load i32, i32* %9, align 4
  %397 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 20
  store i32 %396, i32* %397, align 16
  %398 = load i32, i32* %10, align 4
  %399 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 20
  store i32 %398, i32* %399, align 16
  %400 = load i32, i32* %11, align 4
  %401 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 21
  store i32 %400, i32* %401, align 4
  %402 = load i32, i32* %12, align 4
  %403 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 21
  store i32 %402, i32* %403, align 4
  %404 = load i32, i32* %9, align 4
  %405 = load i32, i32* %10, align 4
  %406 = load i32, i32* %11, align 4
  %407 = load i32, i32* %12, align 4
  %408 = load i32, i32* %17, align 4
  %409 = load i32, i32* %18, align 4
  %410 = call i32 @ROLDQo32(i32 %404, i32 %405, i32 %406, i32 %407, i32 %408, i32 %409, i32 51)
  %411 = load i32, i32* %9, align 4
  %412 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 32
  store i32 %411, i32* %412, align 16
  %413 = load i32, i32* %10, align 4
  %414 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 32
  store i32 %413, i32* %414, align 16
  %415 = load i32, i32* %11, align 4
  %416 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 33
  store i32 %415, i32* %416, align 4
  %417 = load i32, i32* %12, align 4
  %418 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 33
  store i32 %417, i32* %418, align 4
  %419 = load i32*, i32** %4, align 8
  %420 = getelementptr inbounds [34 x i32], [34 x i32]* %19, i64 0, i64 0
  %421 = getelementptr inbounds [34 x i32], [34 x i32]* %20, i64 0, i64 0
  %422 = call i32 @camellia_setup_tail(i32* %419, i32* %420, i32* %421, i32 32)
  ret void
}

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i32 @ROLDQo32(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ROLDQ(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CAMELLIA_F(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @camellia_setup_tail(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
