; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_pippenger_batch.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_pippenger_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secp256k1_pippenger_state = type { i32*, %struct.secp256k1_pippenger_point_state* }
%struct.secp256k1_pippenger_point_state = type { i64 }

@secp256k1_ge_const_g = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i32 (i32*, i32*, i64, i8*)*, i8*, i64, i64)* @secp256k1_ecmult_pippenger_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_ecmult_pippenger_batch(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 (i32*, i32*, i64, i8*)* %5, i8* %6, i64 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32 (i32*, i32*, i64, i8*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.secp256k1_pippenger_state*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 (i32*, i32*, i64, i8*)* %5, i32 (i32*, i32*, i64, i8*)** %16, align 8
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i64 @secp256k1_scratch_checkpoint(i32* %31, i32* %32)
  store i64 %33, i64* %20, align 8
  %34 = load i64, i64* %18, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %21, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @secp256k1_gej_set_infinity(i32* %37)
  %39 = load i32*, i32** %15, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %9
  %42 = load i64, i64* %18, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %244

45:                                               ; preds = %41, %9
  %46 = load i64, i64* %18, align 8
  %47 = call i32 @secp256k1_pippenger_bucket_window(i64 %46)
  store i32 %47, i32* %30, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i64, i64* %21, align 8
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i64 @secp256k1_scratch_alloc(i32* %48, i32* %49, i32 %52)
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %22, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i64, i64* %21, align 8
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i64 @secp256k1_scratch_alloc(i32* %55, i32* %56, i32 %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %23, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i64 @secp256k1_scratch_alloc(i32* %62, i32* %63, i32 16)
  %65 = inttoptr i64 %64 to %struct.secp256k1_pippenger_state*
  store %struct.secp256k1_pippenger_state* %65, %struct.secp256k1_pippenger_state** %25, align 8
  %66 = load i32*, i32** %22, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %45
  %69 = load i32*, i32** %23, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load %struct.secp256k1_pippenger_state*, %struct.secp256k1_pippenger_state** %25, align 8
  %73 = icmp eq %struct.secp256k1_pippenger_state* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71, %68, %45
  %75 = load i32*, i32** %11, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = load i64, i64* %20, align 8
  %78 = call i32 @secp256k1_scratch_apply_checkpoint(i32* %75, i32* %76, i64 %77)
  store i32 0, i32* %10, align 4
  br label %244

79:                                               ; preds = %71
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i64, i64* %21, align 8
  %83 = mul i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call i64 @secp256k1_scratch_alloc(i32* %80, i32* %81, i32 %84)
  %86 = inttoptr i64 %85 to %struct.secp256k1_pippenger_point_state*
  %87 = load %struct.secp256k1_pippenger_state*, %struct.secp256k1_pippenger_state** %25, align 8
  %88 = getelementptr inbounds %struct.secp256k1_pippenger_state, %struct.secp256k1_pippenger_state* %87, i32 0, i32 1
  store %struct.secp256k1_pippenger_point_state* %86, %struct.secp256k1_pippenger_point_state** %88, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i64, i64* %21, align 8
  %92 = load i32, i32* %30, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @WNAF_SIZE(i32 %93)
  %95 = sext i32 %94 to i64
  %96 = mul i64 %91, %95
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i64 @secp256k1_scratch_alloc(i32* %89, i32* %90, i32 %98)
  %100 = inttoptr i64 %99 to i32*
  %101 = load %struct.secp256k1_pippenger_state*, %struct.secp256k1_pippenger_state** %25, align 8
  %102 = getelementptr inbounds %struct.secp256k1_pippenger_state, %struct.secp256k1_pippenger_state* %101, i32 0, i32 0
  store i32* %100, i32** %102, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %30, align 4
  %106 = shl i32 1, %105
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i64 @secp256k1_scratch_alloc(i32* %103, i32* %104, i32 %109)
  %111 = inttoptr i64 %110 to i32*
  store i32* %111, i32** %24, align 8
  %112 = load %struct.secp256k1_pippenger_state*, %struct.secp256k1_pippenger_state** %25, align 8
  %113 = getelementptr inbounds %struct.secp256k1_pippenger_state, %struct.secp256k1_pippenger_state* %112, i32 0, i32 1
  %114 = load %struct.secp256k1_pippenger_point_state*, %struct.secp256k1_pippenger_point_state** %113, align 8
  %115 = icmp eq %struct.secp256k1_pippenger_point_state* %114, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %79
  %117 = load %struct.secp256k1_pippenger_state*, %struct.secp256k1_pippenger_state** %25, align 8
  %118 = getelementptr inbounds %struct.secp256k1_pippenger_state, %struct.secp256k1_pippenger_state* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = load i32*, i32** %24, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %121, %116, %79
  %125 = load i32*, i32** %11, align 8
  %126 = load i32*, i32** %13, align 8
  %127 = load i64, i64* %20, align 8
  %128 = call i32 @secp256k1_scratch_apply_checkpoint(i32* %125, i32* %126, i64 %127)
  store i32 0, i32* %10, align 4
  br label %244

129:                                              ; preds = %121
  %130 = load i32*, i32** %15, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load i32*, i32** %15, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %23, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @secp256k1_ge_const_g, align 4
  %138 = load i32*, i32** %22, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %137, i32* %139, align 4
  %140 = load i64, i64* %26, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %26, align 8
  br label %142

142:                                              ; preds = %132, %129
  br label %143

143:                                              ; preds = %166, %142
  %144 = load i64, i64* %27, align 8
  %145 = load i64, i64* %18, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %171

147:                                              ; preds = %143
  %148 = load i32 (i32*, i32*, i64, i8*)*, i32 (i32*, i32*, i64, i8*)** %16, align 8
  %149 = load i32*, i32** %23, align 8
  %150 = load i64, i64* %26, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32*, i32** %22, align 8
  %153 = load i64, i64* %26, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i64, i64* %27, align 8
  %156 = load i64, i64* %19, align 8
  %157 = add i64 %155, %156
  %158 = load i8*, i8** %17, align 8
  %159 = call i32 %148(i32* %151, i32* %154, i64 %157, i8* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %147
  %162 = load i32*, i32** %11, align 8
  %163 = load i32*, i32** %13, align 8
  %164 = load i64, i64* %20, align 8
  %165 = call i32 @secp256k1_scratch_apply_checkpoint(i32* %162, i32* %163, i64 %164)
  store i32 0, i32* %10, align 4
  br label %244

166:                                              ; preds = %147
  %167 = load i64, i64* %26, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %26, align 8
  %169 = load i64, i64* %27, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %27, align 8
  br label %143

171:                                              ; preds = %143
  %172 = load i32*, i32** %24, align 8
  %173 = load i32, i32* %30, align 4
  %174 = load %struct.secp256k1_pippenger_state*, %struct.secp256k1_pippenger_state** %25, align 8
  %175 = load i32*, i32** %14, align 8
  %176 = load i32*, i32** %23, align 8
  %177 = load i32*, i32** %22, align 8
  %178 = load i64, i64* %26, align 8
  %179 = call i32 @secp256k1_ecmult_pippenger_wnaf(i32* %172, i32 %173, %struct.secp256k1_pippenger_state* %174, i32* %175, i32* %176, i32* %177, i64 %178)
  store i32 0, i32* %28, align 4
  br label %180

180:                                              ; preds = %221, %171
  %181 = load i32, i32* %28, align 4
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* %26, align 8
  %184 = icmp ult i64 %182, %183
  br i1 %184, label %185, label %224

185:                                              ; preds = %180
  %186 = load i32*, i32** %23, align 8
  %187 = load i32, i32* %28, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = call i32 @secp256k1_scalar_clear(i32* %189)
  %191 = load %struct.secp256k1_pippenger_state*, %struct.secp256k1_pippenger_state** %25, align 8
  %192 = getelementptr inbounds %struct.secp256k1_pippenger_state, %struct.secp256k1_pippenger_state* %191, i32 0, i32 1
  %193 = load %struct.secp256k1_pippenger_point_state*, %struct.secp256k1_pippenger_point_state** %192, align 8
  %194 = load i32, i32* %28, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.secp256k1_pippenger_point_state, %struct.secp256k1_pippenger_point_state* %193, i64 %195
  %197 = getelementptr inbounds %struct.secp256k1_pippenger_point_state, %struct.secp256k1_pippenger_point_state* %196, i32 0, i32 0
  store i64 0, i64* %197, align 8
  store i32 0, i32* %29, align 4
  br label %198

198:                                              ; preds = %217, %185
  %199 = load i32, i32* %29, align 4
  %200 = load i32, i32* %30, align 4
  %201 = add nsw i32 %200, 1
  %202 = call i32 @WNAF_SIZE(i32 %201)
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %198
  %205 = load %struct.secp256k1_pippenger_state*, %struct.secp256k1_pippenger_state** %25, align 8
  %206 = getelementptr inbounds %struct.secp256k1_pippenger_state, %struct.secp256k1_pippenger_state* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %28, align 4
  %209 = load i32, i32* %30, align 4
  %210 = add nsw i32 %209, 1
  %211 = call i32 @WNAF_SIZE(i32 %210)
  %212 = mul nsw i32 %208, %211
  %213 = load i32, i32* %29, align 4
  %214 = add nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %207, i64 %215
  store i32 0, i32* %216, align 4
  br label %217

217:                                              ; preds = %204
  %218 = load i32, i32* %29, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %29, align 4
  br label %198

220:                                              ; preds = %198
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %28, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %28, align 4
  br label %180

224:                                              ; preds = %180
  store i32 0, i32* %28, align 4
  br label %225

225:                                              ; preds = %236, %224
  %226 = load i32, i32* %28, align 4
  %227 = load i32, i32* %30, align 4
  %228 = shl i32 1, %227
  %229 = icmp slt i32 %226, %228
  br i1 %229, label %230, label %239

230:                                              ; preds = %225
  %231 = load i32*, i32** %24, align 8
  %232 = load i32, i32* %28, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = call i32 @secp256k1_gej_clear(i32* %234)
  br label %236

236:                                              ; preds = %230
  %237 = load i32, i32* %28, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %28, align 4
  br label %225

239:                                              ; preds = %225
  %240 = load i32*, i32** %11, align 8
  %241 = load i32*, i32** %13, align 8
  %242 = load i64, i64* %20, align 8
  %243 = call i32 @secp256k1_scratch_apply_checkpoint(i32* %240, i32* %241, i64 %242)
  store i32 1, i32* %10, align 4
  br label %244

244:                                              ; preds = %239, %161, %124, %74, %44
  %245 = load i32, i32* %10, align 4
  ret i32 %245
}

declare dso_local i64 @secp256k1_scratch_checkpoint(i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_set_infinity(i32*) #1

declare dso_local i32 @secp256k1_pippenger_bucket_window(i64) #1

declare dso_local i64 @secp256k1_scratch_alloc(i32*, i32*, i32) #1

declare dso_local i32 @secp256k1_scratch_apply_checkpoint(i32*, i32*, i64) #1

declare dso_local i32 @WNAF_SIZE(i32) #1

declare dso_local i32 @secp256k1_ecmult_pippenger_wnaf(i32*, i32, %struct.secp256k1_pippenger_state*, i32*, i32*, i32*, i64) #1

declare dso_local i32 @secp256k1_scalar_clear(i32*) #1

declare dso_local i32 @secp256k1_gej_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
