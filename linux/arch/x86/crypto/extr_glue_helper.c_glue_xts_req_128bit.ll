; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_glue_helper.c_glue_xts_req_128bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_glue_helper.c_glue_xts_req_128bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_glue_ctx = type { i32 }
%struct.skcipher_request = type { i32, i32*, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.skcipher_walk = type { i32, i32 }
%struct.crypto_skcipher = type { i32 }

@XTS_BLOCK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glue_xts_req_128bit(%struct.common_glue_ctx* %0, %struct.skcipher_request* %1, i32 (i8*, i32, i32)* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.common_glue_ctx*, align 8
  %9 = alloca %struct.skcipher_request*, align 8
  %10 = alloca i32 (i8*, i32, i32)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.skcipher_request, align 8
  %17 = alloca %struct.skcipher_walk, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.crypto_skcipher*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.scatterlist*, align 8
  %26 = alloca %struct.scatterlist*, align 8
  %27 = alloca [2 x %struct.scatterlist], align 4
  %28 = alloca [2 x %struct.scatterlist], align 4
  %29 = alloca [2 x i32], align 4
  store %struct.common_glue_ctx* %0, %struct.common_glue_ctx** %8, align 8
  store %struct.skcipher_request* %1, %struct.skcipher_request** %9, align 8
  store i32 (i8*, i32, i32)* %2, i32 (i8*, i32, i32)** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %30 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %31 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %34 = urem i32 %32, %33
  store i32 %34, i32* %14, align 4
  store i32 16, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %35 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %36 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %6
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %230

43:                                               ; preds = %6
  %44 = load i32, i32* %14, align 4
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  %48 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %49 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %48)
  store %struct.crypto_skcipher* %49, %struct.crypto_skcipher** %22, align 8
  %50 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %51 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %54 = urem i32 %52, %53
  %55 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %56 = add i32 %54, %55
  store i32 %56, i32* %20, align 4
  %57 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %22, align 8
  %58 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %16, %struct.crypto_skcipher* %57)
  %59 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %22, align 8
  %60 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %59)
  %61 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %16, i32 %60, i32* null, i32* null)
  %62 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %63 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %62, i32 0, i32 3
  %64 = load %struct.scatterlist*, %struct.scatterlist** %63, align 8
  %65 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %66 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %65, i32 0, i32 2
  %67 = load %struct.scatterlist*, %struct.scatterlist** %66, align 8
  %68 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %69 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sub i32 %70, %71
  %73 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %74 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %16, %struct.scatterlist* %64, %struct.scatterlist* %67, i32 %72, i32* %75)
  store %struct.skcipher_request* %16, %struct.skcipher_request** %9, align 8
  br label %77

77:                                               ; preds = %47, %43
  %78 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %79 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %17, %struct.skcipher_request* %78, i32 0)
  store i32 %79, i32* %21, align 4
  %80 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %17, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %21, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %21, align 4
  store i32 %85, i32* %7, align 4
  br label %230

86:                                               ; preds = %77
  %87 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %8, align 8
  %88 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp ult i32 %91, 16
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %19, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi i32 [ 16, %93 ], [ %95, %94 ]
  %98 = call i32 @glue_fpu_begin(i32 16, i32 %89, %struct.skcipher_walk* %17, i32 %90, i32 %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %10, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %17, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %17, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 %99(i8* %100, i32 %102, i32 %104)
  br label %106

106:                                              ; preds = %109, %96
  %107 = load i32, i32* %19, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %8, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @__glue_xts_req_128bit(%struct.common_glue_ctx* %110, i8* %111, %struct.skcipher_walk* %17)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %17, i32 %113)
  store i32 %114, i32* %21, align 4
  %115 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %17, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %19, align 4
  br label %106

117:                                              ; preds = %106
  %118 = load i32, i32* %14, align 4
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %225

121:                                              ; preds = %117
  %122 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %123 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  store i32* %124, i32** %24, align 8
  %125 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %27, i64 0, i64 0
  %126 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %127 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %126, i32 0, i32 3
  %128 = load %struct.scatterlist*, %struct.scatterlist** %127, align 8
  %129 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %130 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %125, %struct.scatterlist* %128, i32 %131)
  store %struct.scatterlist* %132, %struct.scatterlist** %25, align 8
  store %struct.scatterlist* %132, %struct.scatterlist** %26, align 8
  %133 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %134 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %133, i32 0, i32 2
  %135 = load %struct.scatterlist*, %struct.scatterlist** %134, align 8
  %136 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %137 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %136, i32 0, i32 3
  %138 = load %struct.scatterlist*, %struct.scatterlist** %137, align 8
  %139 = icmp ne %struct.scatterlist* %135, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %121
  %141 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %28, i64 0, i64 0
  %142 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %143 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %142, i32 0, i32 2
  %144 = load %struct.scatterlist*, %struct.scatterlist** %143, align 8
  %145 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %146 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %141, %struct.scatterlist* %144, i32 %147)
  store %struct.scatterlist* %148, %struct.scatterlist** %26, align 8
  br label %149

149:                                              ; preds = %140, %121
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %154 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %155 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %158 = call i32* @memcpy(i32* %153, i32* %156, i32 %157)
  store i32* %158, i32** %23, align 8
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %161 = call i32 @gf128mul_x_ble(i32* %159, i32* %160)
  br label %166

162:                                              ; preds = %149
  %163 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %164 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  store i32* %165, i32** %23, align 8
  br label %166

166:                                              ; preds = %162, %152
  %167 = load %struct.scatterlist*, %struct.scatterlist** %25, align 8
  %168 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %169 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %170 = load i32*, i32** %23, align 8
  %171 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %16, %struct.scatterlist* %167, %struct.scatterlist* %168, i32 %169, i32* %170)
  %172 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %173 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %17, %struct.skcipher_request* %172, i32 0)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %181

176:                                              ; preds = %166
  %177 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %8, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = call i32 @__glue_xts_req_128bit(%struct.common_glue_ctx* %177, i8* %178, %struct.skcipher_walk* %17)
  %180 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %17, i32 %179)
  br label %181

181:                                              ; preds = %176, %175
  %182 = phi i32 [ %173, %175 ], [ %180, %176 ]
  store i32 %182, i32* %21, align 4
  %183 = load i32, i32* %21, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %226

186:                                              ; preds = %181
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %188 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %189 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %190 = call i32 @scatterwalk_map_and_copy(i32* %187, %struct.scatterlist* %188, i32 0, i32 %189, i32 0)
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %196 = sub i32 %194, %195
  %197 = call i32* @memcpy(i32* %192, i32* %193, i32 %196)
  %198 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %199 = load %struct.scatterlist*, %struct.scatterlist** %25, align 8
  %200 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %201 = load i32, i32* %20, align 4
  %202 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %203 = sub i32 %201, %202
  %204 = call i32 @scatterwalk_map_and_copy(i32* %198, %struct.scatterlist* %199, i32 %200, i32 %203, i32 0)
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %206 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %207 = load i32, i32* %20, align 4
  %208 = call i32 @scatterwalk_map_and_copy(i32* %205, %struct.scatterlist* %206, i32 0, i32 %207, i32 1)
  %209 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %210 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %211 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %212 = load i32*, i32** %24, align 8
  %213 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %16, %struct.scatterlist* %209, %struct.scatterlist* %210, i32 %211, i32* %212)
  %214 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %215 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %17, %struct.skcipher_request* %214, i32 0)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %186
  br label %223

218:                                              ; preds = %186
  %219 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %8, align 8
  %220 = load i8*, i8** %12, align 8
  %221 = call i32 @__glue_xts_req_128bit(%struct.common_glue_ctx* %219, i8* %220, %struct.skcipher_walk* %17)
  %222 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %17, i32 %221)
  br label %223

223:                                              ; preds = %218, %217
  %224 = phi i32 [ %215, %217 ], [ %222, %218 ]
  store i32 %224, i32* %21, align 4
  br label %225

225:                                              ; preds = %223, %117
  br label %226

226:                                              ; preds = %225, %185
  %227 = load i32, i32* %18, align 4
  %228 = call i32 @glue_fpu_end(i32 %227)
  %229 = load i32, i32* %21, align 4
  store i32 %229, i32* %7, align 4
  br label %230

230:                                              ; preds = %226, %84, %40
  %231 = load i32, i32* %7, align 4
  ret i32 %231
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, %struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32*, i32*) #1

declare dso_local i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @glue_fpu_begin(i32, i32, %struct.skcipher_walk*, i32, i32) #1

declare dso_local i32 @__glue_xts_req_128bit(%struct.common_glue_ctx*, i8*, %struct.skcipher_walk*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32* @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @gf128mul_x_ble(i32*, i32*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @glue_fpu_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
