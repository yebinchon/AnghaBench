; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-ce-glue.c_ce_aes_expandkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-ce-glue.c_ce_aes_expandkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aes_ctx = type { i32, i32*, i64 }
%struct.aes_block = type { i32 }

@ce_aes_expandkey.rcon = internal constant [10 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54], align 16
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aes_ctx*, i32*, i32)* @ce_aes_expandkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce_aes_expandkey(%struct.crypto_aes_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aes_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aes_block*, align 8
  %10 = alloca %struct.aes_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.crypto_aes_ctx* %0, %struct.crypto_aes_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = udiv i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @AES_KEYSIZE_128, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @AES_KEYSIZE_192, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @AES_KEYSIZE_256, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %253

33:                                               ; preds = %26, %22, %3
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %54, %33
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = call i32 @get_unaligned_le32(i32* %46)
  %48 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %37

57:                                               ; preds = %37
  %58 = call i32 (...) @kernel_neon_begin()
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %201, %57
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %61, 40
  br i1 %62, label %63, label %204

63:                                               ; preds = %59
  %64 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %8, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  store i32* %71, i32** %13, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32* %75, i32** %14, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ce_aes_sub(i32 %81)
  %83 = call i32 @ror32(i32 %82, i32 8)
  %84 = load i32*, i32** %14, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %14, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %88, %91
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [10 x i32], [10 x i32]* @ce_aes_expandkey.rcon, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %92, %96
  %98 = load i32*, i32** %14, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %14, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %13, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %102, %105
  %107 = load i32*, i32** %14, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 %106, i32* %108, align 4
  %109 = load i32*, i32** %14, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %13, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %111, %114
  %116 = load i32*, i32** %14, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** %14, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %13, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %120, %123
  %125 = load i32*, i32** %14, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @AES_KEYSIZE_192, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %153

130:                                              ; preds = %63
  %131 = load i32, i32* %11, align 4
  %132 = icmp sge i32 %131, 7
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %204

134:                                              ; preds = %130
  %135 = load i32*, i32** %14, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  %140 = load i32, i32* %139, align 4
  %141 = xor i32 %137, %140
  %142 = load i32*, i32** %14, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  store i32 %141, i32* %143, align 4
  %144 = load i32*, i32** %14, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %13, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 5
  %149 = load i32, i32* %148, align 4
  %150 = xor i32 %146, %149
  %151 = load i32*, i32** %14, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 5
  store i32 %150, i32* %152, align 4
  br label %200

153:                                              ; preds = %63
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @AES_KEYSIZE_256, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %199

157:                                              ; preds = %153
  %158 = load i32, i32* %11, align 4
  %159 = icmp sge i32 %158, 6
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %204

161:                                              ; preds = %157
  %162 = load i32*, i32** %14, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ce_aes_sub(i32 %164)
  %166 = load i32*, i32** %13, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 4
  %168 = load i32, i32* %167, align 4
  %169 = xor i32 %165, %168
  %170 = load i32*, i32** %14, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 4
  store i32 %169, i32* %171, align 4
  %172 = load i32*, i32** %14, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 4
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %13, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 5
  %177 = load i32, i32* %176, align 4
  %178 = xor i32 %174, %177
  %179 = load i32*, i32** %14, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 5
  store i32 %178, i32* %180, align 4
  %181 = load i32*, i32** %14, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 5
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %13, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 6
  %186 = load i32, i32* %185, align 4
  %187 = xor i32 %183, %186
  %188 = load i32*, i32** %14, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 6
  store i32 %187, i32* %189, align 4
  %190 = load i32*, i32** %14, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 6
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %13, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 7
  %195 = load i32, i32* %194, align 4
  %196 = xor i32 %192, %195
  %197 = load i32*, i32** %14, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 7
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %161, %153
  br label %200

200:                                              ; preds = %199, %134
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %59

204:                                              ; preds = %160, %133, %59
  %205 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %206 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = bitcast i32* %207 to %struct.aes_block*
  store %struct.aes_block* %208, %struct.aes_block** %9, align 8
  %209 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %210 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = inttoptr i64 %211 to %struct.aes_block*
  store %struct.aes_block* %212, %struct.aes_block** %10, align 8
  %213 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %214 = call i32 @num_rounds(%struct.crypto_aes_ctx* %213)
  store i32 %214, i32* %12, align 4
  %215 = load %struct.aes_block*, %struct.aes_block** %10, align 8
  %216 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %215, i64 0
  %217 = load %struct.aes_block*, %struct.aes_block** %9, align 8
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %217, i64 %219
  %221 = bitcast %struct.aes_block* %216 to i8*
  %222 = bitcast %struct.aes_block* %220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %221, i8* align 4 %222, i64 4, i1 false)
  store i32 1, i32* %11, align 4
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %12, align 4
  br label %225

225:                                              ; preds = %238, %204
  %226 = load i32, i32* %12, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %243

228:                                              ; preds = %225
  %229 = load %struct.aes_block*, %struct.aes_block** %10, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %229, i64 %231
  %233 = load %struct.aes_block*, %struct.aes_block** %9, align 8
  %234 = load i32, i32* %12, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %233, i64 %235
  %237 = call i32 @ce_aes_invert(%struct.aes_block* %232, %struct.aes_block* %236)
  br label %238

238:                                              ; preds = %228
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* %12, align 4
  br label %225

243:                                              ; preds = %225
  %244 = load %struct.aes_block*, %struct.aes_block** %10, align 8
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %244, i64 %246
  %248 = load %struct.aes_block*, %struct.aes_block** %9, align 8
  %249 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %248, i64 0
  %250 = bitcast %struct.aes_block* %247 to i8*
  %251 = bitcast %struct.aes_block* %249 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %250, i8* align 4 %251, i64 4, i1 false)
  %252 = call i32 (...) @kernel_neon_end()
  store i32 0, i32* %4, align 4
  br label %253

253:                                              ; preds = %243, %30
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @ror32(i32, i32) #1

declare dso_local i32 @ce_aes_sub(i32) #1

declare dso_local i32 @num_rounds(%struct.crypto_aes_ctx*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ce_aes_invert(%struct.aes_block*, %struct.aes_block*) #1

declare dso_local i32 @kernel_neon_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
