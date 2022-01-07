; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_ecmult.c_main.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_ecmult.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32*, i32, i32*, i8* }

@SECP256K1_CONTEXT_SIGN = common dso_local global i32 0, align 4
@SECP256K1_CONTEXT_VERIFY = common dso_local global i32 0, align 4
@POINTS = common dso_local global i32 0, align 4
@STRAUSS_SCRATCH_OBJECTS = common dso_local global i32 0, align 4
@secp256k1_ecmult_multi_var = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"pippenger_wnaf\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Using pippenger_wnaf:\0A\00", align 1
@secp256k1_ecmult_pippenger_batch_single = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"strauss_wnaf\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Using strauss_wnaf:\0A\00", align 1
@secp256k1_ecmult_strauss_batch_single = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Using simple algorithm:\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"%s: unrecognized argument '%s'.\0A\00", align 1
@.str.7 = private unnamed_addr constant [98 x i8] c"Use 'pippenger_wnaf', 'strauss_wnaf', 'simple' or no argument to benchmark a combined algorithm.\0A\00", align 1
@ITERS = common dso_local global i32 0, align 4
@secp256k1_ge_const_g = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @SECP256K1_CONTEXT_SIGN, align 4
  %12 = load i32, i32* @SECP256K1_CONTEXT_VERIFY, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @secp256k1_context_create(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @POINTS, align 4
  %17 = call i32 @secp256k1_strauss_scratch_size(i32 %16)
  %18 = load i32, i32* @STRAUSS_SCRATCH_OBJECTS, align 4
  %19 = mul nsw i32 %18, 16
  %20 = add nsw i32 %17, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32* @secp256k1_scratch_space_create(i32 %23, i64 %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  store i32* %25, i32** %26, align 8
  %27 = load i8*, i8** @secp256k1_ecmult_multi_var, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %78

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = call i64 @have_flag(i32 %32, i8** %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** @secp256k1_ecmult_pippenger_batch_single, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  store i8* %38, i8** %39, align 8
  br label %77

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = call i64 @have_flag(i32 %41, i8** %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i8*, i8** @secp256k1_ecmult_strauss_batch_single, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  store i8* %47, i8** %48, align 8
  br label %76

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = call i64 @have_flag(i32 %50, i8** %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i8*, i8** @secp256k1_ecmult_multi_var, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @secp256k1_scratch_space_destroy(i32 %59, i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  store i32* null, i32** %63, align 8
  br label %75

64:                                               ; preds = %49
  %65 = load i32, i32* @stderr, align 4
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %68, i8* %71)
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %242

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %45
  br label %77

77:                                               ; preds = %76, %36
  br label %78

78:                                               ; preds = %77, %2
  %79 = load i32, i32* @POINTS, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = trunc i64 %81 to i32
  %83 = call i8* @malloc(i32 %82)
  %84 = bitcast i8* %83 to i32*
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  store i32* %84, i32** %85, align 8
  %86 = load i32, i32* @POINTS, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 4, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @malloc(i32 %89)
  %91 = bitcast i8* %90 to i32*
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i32* %91, i32** %92, align 8
  %93 = load i32, i32* @POINTS, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 4, %94
  %96 = trunc i64 %95 to i32
  %97 = call i8* @malloc(i32 %96)
  %98 = bitcast i8* %97 to i32*
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  store i32* %98, i32** %99, align 8
  %100 = load i32, i32* @ITERS, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = mul i64 4, %102
  %104 = trunc i64 %103 to i32
  %105 = call i8* @malloc(i32 %104)
  %106 = bitcast i8* %105 to i32*
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32* %106, i32** %107, align 8
  %108 = load i32, i32* @ITERS, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = mul i64 4, %110
  %112 = trunc i64 %111 to i32
  %113 = call i8* @malloc(i32 %112)
  %114 = bitcast i8* %113 to i32*
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32* %114, i32** %115, align 8
  %116 = load i32, i32* @POINTS, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 4, %117
  %119 = trunc i64 %118 to i32
  %120 = call i8* @malloc(i32 %119)
  %121 = bitcast i8* %120 to i32*
  store i32* %121, i32** %9, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = call i32 @secp256k1_gej_set_ge(i32* %123, i32* @secp256k1_ge_const_g)
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = call i32 @secp256k1_scalar_set_int(i32* %127, i32 1)
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %173, %78
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @POINTS, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %176

133:                                              ; preds = %129
  %134 = load i32, i32* %7, align 4
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i32 @generate_scalar(i32 %134, i32* %139)
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %172

143:                                              ; preds = %133
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32*, i32** %9, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = call i32 @secp256k1_gej_double_var(i32* %147, i32* %152, i32* null)
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = call i32 @secp256k1_scalar_add(i32* %158, i32* %164, i32* %170)
  br label %172

172:                                              ; preds = %143, %133
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  br label %129

176:                                              ; preds = %129
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = load i32, i32* @POINTS, align 4
  %181 = call i32 @secp256k1_ge_set_all_gej_var(i32* %178, i32* %179, i32 %180)
  %182 = load i32*, i32** %9, align 8
  %183 = call i32 @free(i32* %182)
  store i32 1, i32* %7, align 4
  br label %184

184:                                              ; preds = %190, %176
  %185 = load i32, i32* %7, align 4
  %186 = icmp sle i32 %185, 8
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @run_test(%struct.TYPE_3__* %6, i32 %188, i32 1)
  br label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  br label %184

193:                                              ; preds = %184
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %210, %193
  %195 = load i32, i32* %8, align 4
  %196 = icmp sle i32 %195, 11
  br i1 %196, label %197, label %213

197:                                              ; preds = %194
  store i32 9, i32* %7, align 4
  br label %198

198:                                              ; preds = %206, %197
  %199 = load i32, i32* %7, align 4
  %200 = icmp sle i32 %199, 16
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %8, align 4
  %204 = shl i32 %202, %203
  %205 = call i32 @run_test(%struct.TYPE_3__* %6, i32 %204, i32 1)
  br label %206

206:                                              ; preds = %201
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %7, align 4
  br label %198

209:                                              ; preds = %198
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %194

213:                                              ; preds = %194
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %215 = load i32*, i32** %214, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %223

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @secp256k1_scratch_space_destroy(i32 %219, i32* %221)
  br label %223

223:                                              ; preds = %217, %213
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @secp256k1_context_destroy(i32 %225)
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @free(i32* %228)
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @free(i32* %231)
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @free(i32* %234)
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @free(i32* %237)
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @free(i32* %240)
  store i32 0, i32* %3, align 4
  br label %242

242:                                              ; preds = %223, %64
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @secp256k1_context_create(i32) #1

declare dso_local i32 @secp256k1_strauss_scratch_size(i32) #1

declare dso_local i32* @secp256k1_scratch_space_create(i32, i64) #1

declare dso_local i64 @have_flag(i32, i8**, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @secp256k1_scratch_space_destroy(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @secp256k1_gej_set_ge(i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #1

declare dso_local i32 @generate_scalar(i32, i32*) #1

declare dso_local i32 @secp256k1_gej_double_var(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_add(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_ge_set_all_gej_var(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @run_test(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @secp256k1_context_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
