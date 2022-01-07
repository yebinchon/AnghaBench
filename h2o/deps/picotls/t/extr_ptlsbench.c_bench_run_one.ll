; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_ptlsbench.c_bench_run_one.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_ptlsbench.c_bench_run_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BENCH_BATCH = common dso_local global i32 0, align 4
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@PTLS_MAX_DIGEST_SIZE = common dso_local global i64 0, align 8
@PTLS_ALERT_DECRYPT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64, i64*, i64*, i64*)* @bench_run_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bench_run_one(i32* %0, i32* %1, i64 %2, i64 %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca [4 x i64], align 16
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  store i32 0, i32* %15, align 4
  store i64* null, i64** %16, align 8
  %33 = load i32, i32* @BENCH_BATCH, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %17, align 8
  %36 = alloca i64*, i64 %34, align 16
  store i64 %34, i64* %18, align 8
  store i64* null, i64** %19, align 8
  %37 = load i64*, i64** %12, align 8
  store i64 0, i64* %37, align 8
  %38 = load i64*, i64** %13, align 8
  store i64 0, i64* %38, align 8
  %39 = load i64*, i64** %14, align 8
  store i64 0, i64* %39, align 8
  %40 = bitcast i64** %36 to i64*
  %41 = mul nuw i64 8, %34
  %42 = call i32 @memset(i64* %40, i32 0, i64 %41)
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %44 = call i32 @memset(i64* %43, i32 0, i64 32)
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @malloc(i64 %45)
  %47 = inttoptr i64 %46 to i64*
  store i64* %47, i64** %16, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @malloc(i64 %48)
  %50 = inttoptr i64 %49 to i64*
  store i64* %50, i64** %19, align 8
  %51 = load i64*, i64** %16, align 8
  %52 = icmp eq i64* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %7
  %54 = load i64*, i64** %19, align 8
  %55 = icmp eq i64* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53, %7
  %57 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %56, %53
  store i64 0, i64* %21, align 8
  br label %59

59:                                               ; preds = %84, %58
  %60 = load i32, i32* %15, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i64, i64* %21, align 8
  %64 = load i32, i32* @BENCH_BATCH, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br label %67

67:                                               ; preds = %62, %59
  %68 = phi i1 [ false, %59 ], [ %66, %62 ]
  br i1 %68, label %69, label %87

69:                                               ; preds = %67
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @PTLS_MAX_DIGEST_SIZE, align 8
  %72 = add i64 %70, %71
  %73 = call i64 @malloc(i64 %72)
  %74 = inttoptr i64 %73 to i64*
  %75 = load i64, i64* %21, align 8
  %76 = getelementptr inbounds i64*, i64** %36, i64 %75
  store i64* %74, i64** %76, align 8
  %77 = load i64, i64* %21, align 8
  %78 = getelementptr inbounds i64*, i64** %36, i64 %77
  %79 = load i64*, i64** %78, align 8
  %80 = icmp eq i64* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %81, %69
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %21, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %21, align 8
  br label %59

87:                                               ; preds = %67
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %213

90:                                               ; preds = %87
  %91 = load i64*, i64** %16, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @memset(i64* %91, i32 0, i64 %92)
  store i64 0, i64* %22, align 8
  br label %94

94:                                               ; preds = %195, %90
  %95 = load i64, i64* %22, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %212

98:                                               ; preds = %94
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %22, align 8
  %101 = sub i64 %99, %100
  %102 = load i32, i32* @BENCH_BATCH, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ugt i64 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* @BENCH_BATCH, align 4
  %107 = sext i32 %106 to i64
  br label %112

108:                                              ; preds = %98
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %22, align 8
  %111 = sub i64 %109, %110
  br label %112

112:                                              ; preds = %108, %105
  %113 = phi i64 [ %107, %105 ], [ %111, %108 ]
  store i64 %113, i64* %25, align 8
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %115 = load i64, i64* %114, align 16
  store i64 %115, i64* %26, align 8
  %116 = call i64 (...) @bench_time()
  store i64 %116, i64* %27, align 8
  store i64 0, i64* %30, align 8
  br label %117

117:                                              ; preds = %155, %112
  %118 = load i64, i64* %30, align 8
  %119 = load i64, i64* %25, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %158

121:                                              ; preds = %117
  %122 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %123 = load i64, i64* %122, align 16
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 16
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %127 = load i64, i64* %126, align 16
  %128 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %129 = call i32 @ptls_aead_encrypt_init(i32* %125, i64 %127, i64* %128, i32 32)
  %130 = load i32*, i32** %8, align 8
  %131 = load i64, i64* %30, align 8
  %132 = getelementptr inbounds i64*, i64** %36, i64 %131
  %133 = load i64*, i64** %132, align 8
  %134 = load i64*, i64** %16, align 8
  %135 = load i64, i64* %11, align 8
  %136 = call i64 @ptls_aead_encrypt_update(i32* %130, i64* %133, i64* %134, i64 %135)
  store i64 %136, i64* %23, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = load i64, i64* %30, align 8
  %139 = getelementptr inbounds i64*, i64** %36, i64 %138
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* %23, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = call i64 @ptls_aead_encrypt_final(i32* %137, i64* %142)
  %144 = load i64, i64* %23, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %23, align 8
  %146 = load i64, i64* %30, align 8
  %147 = getelementptr inbounds i64*, i64** %36, i64 %146
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* %11, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** %14, align 8
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, %151
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %121
  %156 = load i64, i64* %30, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %30, align 8
  br label %117

158:                                              ; preds = %117
  %159 = call i64 (...) @bench_time()
  store i64 %159, i64* %28, align 8
  %160 = load i64, i64* %26, align 8
  %161 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  store i64 %160, i64* %161, align 16
  store i64 0, i64* %31, align 8
  br label %162

162:                                              ; preds = %192, %158
  %163 = load i64, i64* %31, align 8
  %164 = load i64, i64* %25, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %166, label %195

166:                                              ; preds = %162
  %167 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %168 = load i64, i64* %167, align 16
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %167, align 16
  %170 = load i32*, i32** %9, align 8
  %171 = load i64*, i64** %19, align 8
  %172 = load i64, i64* %31, align 8
  %173 = getelementptr inbounds i64*, i64** %36, i64 %172
  %174 = load i64*, i64** %173, align 8
  %175 = load i64, i64* %23, align 8
  %176 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %177 = load i64, i64* %176, align 16
  %178 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %179 = call i64 @ptls_aead_decrypt(i32* %170, i64* %171, i64* %174, i64 %175, i64 %177, i64* %178, i32 32)
  store i64 %179, i64* %24, align 8
  %180 = load i64, i64* %24, align 8
  %181 = load i64, i64* %11, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %166
  %184 = load i32, i32* @PTLS_ALERT_DECRYPT_ERROR, align 4
  store i32 %184, i32* %15, align 4
  br label %195

185:                                              ; preds = %166
  %186 = load i64*, i64** %19, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %14, align 8
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, %188
  store i64 %191, i64* %189, align 8
  br label %192

192:                                              ; preds = %185
  %193 = load i64, i64* %31, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %31, align 8
  br label %162

195:                                              ; preds = %183, %162
  %196 = call i64 (...) @bench_time()
  store i64 %196, i64* %29, align 8
  %197 = load i64, i64* %28, align 8
  %198 = load i64, i64* %27, align 8
  %199 = sub nsw i64 %197, %198
  %200 = load i64*, i64** %12, align 8
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, %199
  store i64 %202, i64* %200, align 8
  %203 = load i64, i64* %29, align 8
  %204 = load i64, i64* %28, align 8
  %205 = sub nsw i64 %203, %204
  %206 = load i64*, i64** %13, align 8
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, %205
  store i64 %208, i64* %206, align 8
  %209 = load i64, i64* %25, align 8
  %210 = load i64, i64* %22, align 8
  %211 = add i64 %210, %209
  store i64 %211, i64* %22, align 8
  br label %94

212:                                              ; preds = %94
  br label %213

213:                                              ; preds = %212, %87
  %214 = load i64*, i64** %16, align 8
  %215 = icmp ne i64* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i64*, i64** %16, align 8
  %218 = call i32 @free(i64* %217)
  br label %219

219:                                              ; preds = %216, %213
  store i64 0, i64* %32, align 8
  br label %220

220:                                              ; preds = %236, %219
  %221 = load i64, i64* %32, align 8
  %222 = load i32, i32* @BENCH_BATCH, align 4
  %223 = sext i32 %222 to i64
  %224 = icmp ult i64 %221, %223
  br i1 %224, label %225, label %239

225:                                              ; preds = %220
  %226 = load i64, i64* %32, align 8
  %227 = getelementptr inbounds i64*, i64** %36, i64 %226
  %228 = load i64*, i64** %227, align 8
  %229 = icmp ne i64* %228, null
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = load i64, i64* %32, align 8
  %232 = getelementptr inbounds i64*, i64** %36, i64 %231
  %233 = load i64*, i64** %232, align 8
  %234 = call i32 @free(i64* %233)
  br label %235

235:                                              ; preds = %230, %225
  br label %236

236:                                              ; preds = %235
  %237 = load i64, i64* %32, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %32, align 8
  br label %220

239:                                              ; preds = %220
  %240 = load i64*, i64** %19, align 8
  %241 = icmp ne i64* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i64*, i64** %19, align 8
  %244 = call i32 @free(i64* %243)
  br label %245

245:                                              ; preds = %242, %239
  %246 = load i32, i32* %15, align 4
  %247 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %247)
  ret i32 %246
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i64) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i64 @bench_time(...) #2

declare dso_local i32 @ptls_aead_encrypt_init(i32*, i64, i64*, i32) #2

declare dso_local i64 @ptls_aead_encrypt_update(i32*, i64*, i64*, i64) #2

declare dso_local i64 @ptls_aead_encrypt_final(i32*, i64*) #2

declare dso_local i64 @ptls_aead_decrypt(i32*, i64*, i64*, i64, i64, i64*, i32) #2

declare dso_local i32 @free(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
