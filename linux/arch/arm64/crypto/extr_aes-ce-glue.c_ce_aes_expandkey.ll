; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-ce-glue.c_ce_aes_expandkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-ce-glue.c_ce_aes_expandkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aes_ctx = type { i32, i32*, i64 }
%struct.aes_block = type { i32 }

@ce_aes_expandkey.rcon = internal constant [10 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54], align 16
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ce_aes_expandkey(%struct.crypto_aes_ctx* %0, i32* %1, i32 %2) #0 {
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
  br label %248

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

59:                                               ; preds = %196, %57
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %61, 40
  br i1 %62, label %63, label %199

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
  %82 = call i32 @__aes_ce_sub(i32 %81)
  %83 = call i32 @ror32(i32 %82, i32 8)
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* @ce_aes_expandkey.rcon, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %83, %87
  %89 = load i32*, i32** %13, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %88, %91
  %93 = load i32*, i32** %14, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %97, %100
  %102 = load i32*, i32** %14, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %14, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %106, %109
  %111 = load i32*, i32** %14, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  store i32 %110, i32* %112, align 4
  %113 = load i32*, i32** %14, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %13, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = xor i32 %115, %118
  %120 = load i32*, i32** %14, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @AES_KEYSIZE_192, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %63
  %126 = load i32, i32* %11, align 4
  %127 = icmp sge i32 %126, 7
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %199

129:                                              ; preds = %125
  %130 = load i32*, i32** %14, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 4
  %135 = load i32, i32* %134, align 4
  %136 = xor i32 %132, %135
  %137 = load i32*, i32** %14, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  store i32 %136, i32* %138, align 4
  %139 = load i32*, i32** %14, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %13, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 5
  %144 = load i32, i32* %143, align 4
  %145 = xor i32 %141, %144
  %146 = load i32*, i32** %14, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 5
  store i32 %145, i32* %147, align 4
  br label %195

148:                                              ; preds = %63
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @AES_KEYSIZE_256, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %194

152:                                              ; preds = %148
  %153 = load i32, i32* %11, align 4
  %154 = icmp sge i32 %153, 6
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %199

156:                                              ; preds = %152
  %157 = load i32*, i32** %14, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @__aes_ce_sub(i32 %159)
  %161 = load i32*, i32** %13, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 4
  %163 = load i32, i32* %162, align 4
  %164 = xor i32 %160, %163
  %165 = load i32*, i32** %14, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 4
  store i32 %164, i32* %166, align 4
  %167 = load i32*, i32** %14, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 4
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %13, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 5
  %172 = load i32, i32* %171, align 4
  %173 = xor i32 %169, %172
  %174 = load i32*, i32** %14, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 5
  store i32 %173, i32* %175, align 4
  %176 = load i32*, i32** %14, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 5
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %13, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 6
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %178, %181
  %183 = load i32*, i32** %14, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 6
  store i32 %182, i32* %184, align 4
  %185 = load i32*, i32** %14, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 6
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %13, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 7
  %190 = load i32, i32* %189, align 4
  %191 = xor i32 %187, %190
  %192 = load i32*, i32** %14, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 7
  store i32 %191, i32* %193, align 4
  br label %194

194:                                              ; preds = %156, %148
  br label %195

195:                                              ; preds = %194, %129
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  br label %59

199:                                              ; preds = %155, %128, %59
  %200 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %201 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = bitcast i32* %202 to %struct.aes_block*
  store %struct.aes_block* %203, %struct.aes_block** %9, align 8
  %204 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %205 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to %struct.aes_block*
  store %struct.aes_block* %207, %struct.aes_block** %10, align 8
  %208 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %209 = call i32 @num_rounds(%struct.crypto_aes_ctx* %208)
  store i32 %209, i32* %12, align 4
  %210 = load %struct.aes_block*, %struct.aes_block** %10, align 8
  %211 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %210, i64 0
  %212 = load %struct.aes_block*, %struct.aes_block** %9, align 8
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %212, i64 %214
  %216 = bitcast %struct.aes_block* %211 to i8*
  %217 = bitcast %struct.aes_block* %215 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %216, i8* align 4 %217, i64 4, i1 false)
  store i32 1, i32* %11, align 4
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %233, %199
  %221 = load i32, i32* %12, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %238

223:                                              ; preds = %220
  %224 = load %struct.aes_block*, %struct.aes_block** %10, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %224, i64 %226
  %228 = load %struct.aes_block*, %struct.aes_block** %9, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %228, i64 %230
  %232 = call i32 @__aes_ce_invert(%struct.aes_block* %227, %struct.aes_block* %231)
  br label %233

233:                                              ; preds = %223
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %12, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %12, align 4
  br label %220

238:                                              ; preds = %220
  %239 = load %struct.aes_block*, %struct.aes_block** %10, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %239, i64 %241
  %243 = load %struct.aes_block*, %struct.aes_block** %9, align 8
  %244 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %243, i64 0
  %245 = bitcast %struct.aes_block* %242 to i8*
  %246 = bitcast %struct.aes_block* %244 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %245, i8* align 4 %246, i64 4, i1 false)
  %247 = call i32 (...) @kernel_neon_end()
  store i32 0, i32* %4, align 4
  br label %248

248:                                              ; preds = %238, %30
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @ror32(i32, i32) #1

declare dso_local i32 @__aes_ce_sub(i32) #1

declare dso_local i32 @num_rounds(%struct.crypto_aes_ctx*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__aes_ce_invert(%struct.aes_block*, %struct.aes_block*) #1

declare dso_local i32 @kernel_neon_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
