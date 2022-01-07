; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_internal.c_main.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_internal.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"scalar_add\00", align 1
@bench_scalar_add = common dso_local global i32 0, align 4
@bench_setup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"negate\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"scalar_negate\00", align 1
@bench_scalar_negate = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"sqr\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"scalar_sqr\00", align 1
@bench_scalar_sqr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"scalar_mul\00", align 1
@bench_scalar_mul = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"inverse\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"scalar_inverse\00", align 1
@bench_scalar_inverse = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"scalar_inverse_var\00", align 1
@bench_scalar_inverse_var = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"normalize\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"field_normalize\00", align 1
@bench_field_normalize = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"field_normalize_weak\00", align 1
@bench_field_normalize_weak = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"field_sqr\00", align 1
@bench_field_sqr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"field_mul\00", align 1
@bench_field_mul = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [14 x i8] c"field_inverse\00", align 1
@bench_field_inverse = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"field_inverse_var\00", align 1
@bench_field_inverse_var = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"field_sqrt\00", align 1
@bench_field_sqrt = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"group_double_var\00", align 1
@bench_group_double_var = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"group_add_var\00", align 1
@bench_group_add_var = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [17 x i8] c"group_add_affine\00", align 1
@bench_group_add_affine = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [21 x i8] c"group_add_affine_var\00", align 1
@bench_group_add_affine_var = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"jacobi\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"group_jacobi_var\00", align 1
@bench_group_jacobi_var = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"ecmult\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"wnaf\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"wnaf_const\00", align 1
@bench_wnaf_const = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [12 x i8] c"ecmult_wnaf\00", align 1
@bench_ecmult_wnaf = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"hash_sha256\00", align 1
@bench_sha256 = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"hmac\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"hash_hmac_sha256\00", align 1
@bench_hmac_sha256 = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [8 x i8] c"rng6979\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"hash_rfc6979_hmac_sha256\00", align 1
@bench_rfc6979_hmac_sha256 = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"context_verify\00", align 1
@bench_context_verify = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"context_sign\00", align 1
@bench_context_sign = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"num_jacobi\00", align 1
@bench_num_jacobi = common dso_local global i32 0, align 4
@bench_scalar_split = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = call i64 @have_flag(i32 %7, i8** %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i64 @have_flag(i32 %12, i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @bench_scalar_add, align 4
  %18 = load i32, i32* @bench_setup, align 4
  %19 = call i32 @run_benchmark(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %18, i32* null, i32* %6, i32 10, i32 2000000)
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i64 @have_flag(i32 %21, i8** %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i64 @have_flag(i32 %26, i8** %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @bench_scalar_negate, align 4
  %32 = load i32, i32* @bench_setup, align 4
  %33 = call i32 @run_benchmark(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 %32, i32* null, i32* %6, i32 10, i32 2000000)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = call i64 @have_flag(i32 %35, i8** %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = call i64 @have_flag(i32 %40, i8** %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @bench_scalar_sqr, align 4
  %46 = load i32, i32* @bench_setup, align 4
  %47 = call i32 @run_benchmark(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %45, i32 %46, i32* null, i32* %6, i32 10, i32 200000)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %4, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = call i64 @have_flag(i32 %49, i8** %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = call i64 @have_flag(i32 %54, i8** %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @bench_scalar_mul, align 4
  %60 = load i32, i32* @bench_setup, align 4
  %61 = call i32 @run_benchmark(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %59, i32 %60, i32* null, i32* %6, i32 10, i32 200000)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %4, align 4
  %64 = load i8**, i8*** %5, align 8
  %65 = call i64 @have_flag(i32 %63, i8** %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = call i64 @have_flag(i32 %68, i8** %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67, %62
  %73 = load i32, i32* @bench_scalar_inverse, align 4
  %74 = load i32, i32* @bench_setup, align 4
  %75 = call i32 @run_benchmark(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %73, i32 %74, i32* null, i32* %6, i32 10, i32 2000)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %4, align 4
  %78 = load i8**, i8*** %5, align 8
  %79 = call i64 @have_flag(i32 %77, i8** %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  %83 = load i8**, i8*** %5, align 8
  %84 = call i64 @have_flag(i32 %82, i8** %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81, %76
  %87 = load i32, i32* @bench_scalar_inverse_var, align 4
  %88 = load i32, i32* @bench_setup, align 4
  %89 = call i32 @run_benchmark(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %87, i32 %88, i32* null, i32* %6, i32 10, i32 2000)
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %4, align 4
  %92 = load i8**, i8*** %5, align 8
  %93 = call i64 @have_flag(i32 %91, i8** %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %4, align 4
  %97 = load i8**, i8*** %5, align 8
  %98 = call i64 @have_flag(i32 %96, i8** %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95, %90
  %101 = load i32, i32* @bench_field_normalize, align 4
  %102 = load i32, i32* @bench_setup, align 4
  %103 = call i32 @run_benchmark(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %101, i32 %102, i32* null, i32* %6, i32 10, i32 2000000)
  br label %104

104:                                              ; preds = %100, %95
  %105 = load i32, i32* %4, align 4
  %106 = load i8**, i8*** %5, align 8
  %107 = call i64 @have_flag(i32 %105, i8** %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %4, align 4
  %111 = load i8**, i8*** %5, align 8
  %112 = call i64 @have_flag(i32 %110, i8** %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109, %104
  %115 = load i32, i32* @bench_field_normalize_weak, align 4
  %116 = load i32, i32* @bench_setup, align 4
  %117 = call i32 @run_benchmark(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %115, i32 %116, i32* null, i32* %6, i32 10, i32 2000000)
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i32, i32* %4, align 4
  %120 = load i8**, i8*** %5, align 8
  %121 = call i64 @have_flag(i32 %119, i8** %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %4, align 4
  %125 = load i8**, i8*** %5, align 8
  %126 = call i64 @have_flag(i32 %124, i8** %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123, %118
  %129 = load i32, i32* @bench_field_sqr, align 4
  %130 = load i32, i32* @bench_setup, align 4
  %131 = call i32 @run_benchmark(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %129, i32 %130, i32* null, i32* %6, i32 10, i32 200000)
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %4, align 4
  %134 = load i8**, i8*** %5, align 8
  %135 = call i64 @have_flag(i32 %133, i8** %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %4, align 4
  %139 = load i8**, i8*** %5, align 8
  %140 = call i64 @have_flag(i32 %138, i8** %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137, %132
  %143 = load i32, i32* @bench_field_mul, align 4
  %144 = load i32, i32* @bench_setup, align 4
  %145 = call i32 @run_benchmark(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %143, i32 %144, i32* null, i32* %6, i32 10, i32 200000)
  br label %146

146:                                              ; preds = %142, %137
  %147 = load i32, i32* %4, align 4
  %148 = load i8**, i8*** %5, align 8
  %149 = call i64 @have_flag(i32 %147, i8** %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %4, align 4
  %153 = load i8**, i8*** %5, align 8
  %154 = call i64 @have_flag(i32 %152, i8** %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151, %146
  %157 = load i32, i32* @bench_field_inverse, align 4
  %158 = load i32, i32* @bench_setup, align 4
  %159 = call i32 @run_benchmark(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %157, i32 %158, i32* null, i32* %6, i32 10, i32 20000)
  br label %160

160:                                              ; preds = %156, %151
  %161 = load i32, i32* %4, align 4
  %162 = load i8**, i8*** %5, align 8
  %163 = call i64 @have_flag(i32 %161, i8** %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = load i32, i32* %4, align 4
  %167 = load i8**, i8*** %5, align 8
  %168 = call i64 @have_flag(i32 %166, i8** %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165, %160
  %171 = load i32, i32* @bench_field_inverse_var, align 4
  %172 = load i32, i32* @bench_setup, align 4
  %173 = call i32 @run_benchmark(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %171, i32 %172, i32* null, i32* %6, i32 10, i32 20000)
  br label %174

174:                                              ; preds = %170, %165
  %175 = load i32, i32* %4, align 4
  %176 = load i8**, i8*** %5, align 8
  %177 = call i64 @have_flag(i32 %175, i8** %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %174
  %180 = load i32, i32* %4, align 4
  %181 = load i8**, i8*** %5, align 8
  %182 = call i64 @have_flag(i32 %180, i8** %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179, %174
  %185 = load i32, i32* @bench_field_sqrt, align 4
  %186 = load i32, i32* @bench_setup, align 4
  %187 = call i32 @run_benchmark(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %185, i32 %186, i32* null, i32* %6, i32 10, i32 20000)
  br label %188

188:                                              ; preds = %184, %179
  %189 = load i32, i32* %4, align 4
  %190 = load i8**, i8*** %5, align 8
  %191 = call i64 @have_flag(i32 %189, i8** %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load i32, i32* %4, align 4
  %195 = load i8**, i8*** %5, align 8
  %196 = call i64 @have_flag(i32 %194, i8** %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193, %188
  %199 = load i32, i32* @bench_group_double_var, align 4
  %200 = load i32, i32* @bench_setup, align 4
  %201 = call i32 @run_benchmark(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 %199, i32 %200, i32* null, i32* %6, i32 10, i32 200000)
  br label %202

202:                                              ; preds = %198, %193
  %203 = load i32, i32* %4, align 4
  %204 = load i8**, i8*** %5, align 8
  %205 = call i64 @have_flag(i32 %203, i8** %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %202
  %208 = load i32, i32* %4, align 4
  %209 = load i8**, i8*** %5, align 8
  %210 = call i64 @have_flag(i32 %208, i8** %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207, %202
  %213 = load i32, i32* @bench_group_add_var, align 4
  %214 = load i32, i32* @bench_setup, align 4
  %215 = call i32 @run_benchmark(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 %213, i32 %214, i32* null, i32* %6, i32 10, i32 200000)
  br label %216

216:                                              ; preds = %212, %207
  %217 = load i32, i32* %4, align 4
  %218 = load i8**, i8*** %5, align 8
  %219 = call i64 @have_flag(i32 %217, i8** %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %216
  %222 = load i32, i32* %4, align 4
  %223 = load i8**, i8*** %5, align 8
  %224 = call i64 @have_flag(i32 %222, i8** %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %221, %216
  %227 = load i32, i32* @bench_group_add_affine, align 4
  %228 = load i32, i32* @bench_setup, align 4
  %229 = call i32 @run_benchmark(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i32 %227, i32 %228, i32* null, i32* %6, i32 10, i32 200000)
  br label %230

230:                                              ; preds = %226, %221
  %231 = load i32, i32* %4, align 4
  %232 = load i8**, i8*** %5, align 8
  %233 = call i64 @have_flag(i32 %231, i8** %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %230
  %236 = load i32, i32* %4, align 4
  %237 = load i8**, i8*** %5, align 8
  %238 = call i64 @have_flag(i32 %236, i8** %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %235, %230
  %241 = load i32, i32* @bench_group_add_affine_var, align 4
  %242 = load i32, i32* @bench_setup, align 4
  %243 = call i32 @run_benchmark(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i32 %241, i32 %242, i32* null, i32* %6, i32 10, i32 200000)
  br label %244

244:                                              ; preds = %240, %235
  %245 = load i32, i32* %4, align 4
  %246 = load i8**, i8*** %5, align 8
  %247 = call i64 @have_flag(i32 %245, i8** %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %244
  %250 = load i32, i32* %4, align 4
  %251 = load i8**, i8*** %5, align 8
  %252 = call i64 @have_flag(i32 %250, i8** %251, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %249, %244
  %255 = load i32, i32* @bench_group_jacobi_var, align 4
  %256 = load i32, i32* @bench_setup, align 4
  %257 = call i32 @run_benchmark(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i32 %255, i32 %256, i32* null, i32* %6, i32 10, i32 20000)
  br label %258

258:                                              ; preds = %254, %249
  %259 = load i32, i32* %4, align 4
  %260 = load i8**, i8*** %5, align 8
  %261 = call i64 @have_flag(i32 %259, i8** %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %258
  %264 = load i32, i32* %4, align 4
  %265 = load i8**, i8*** %5, align 8
  %266 = call i64 @have_flag(i32 %264, i8** %265, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %263, %258
  %269 = load i32, i32* @bench_wnaf_const, align 4
  %270 = load i32, i32* @bench_setup, align 4
  %271 = call i32 @run_benchmark(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i32 %269, i32 %270, i32* null, i32* %6, i32 10, i32 20000)
  br label %272

272:                                              ; preds = %268, %263
  %273 = load i32, i32* %4, align 4
  %274 = load i8**, i8*** %5, align 8
  %275 = call i64 @have_flag(i32 %273, i8** %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %272
  %278 = load i32, i32* %4, align 4
  %279 = load i8**, i8*** %5, align 8
  %280 = call i64 @have_flag(i32 %278, i8** %279, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %277, %272
  %283 = load i32, i32* @bench_ecmult_wnaf, align 4
  %284 = load i32, i32* @bench_setup, align 4
  %285 = call i32 @run_benchmark(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 %283, i32 %284, i32* null, i32* %6, i32 10, i32 20000)
  br label %286

286:                                              ; preds = %282, %277
  %287 = load i32, i32* %4, align 4
  %288 = load i8**, i8*** %5, align 8
  %289 = call i64 @have_flag(i32 %287, i8** %288, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %286
  %292 = load i32, i32* %4, align 4
  %293 = load i8**, i8*** %5, align 8
  %294 = call i64 @have_flag(i32 %292, i8** %293, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0))
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %291, %286
  %297 = load i32, i32* @bench_sha256, align 4
  %298 = load i32, i32* @bench_setup, align 4
  %299 = call i32 @run_benchmark(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 %297, i32 %298, i32* null, i32* %6, i32 10, i32 20000)
  br label %300

300:                                              ; preds = %296, %291
  %301 = load i32, i32* %4, align 4
  %302 = load i8**, i8*** %5, align 8
  %303 = call i64 @have_flag(i32 %301, i8** %302, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %310, label %305

305:                                              ; preds = %300
  %306 = load i32, i32* %4, align 4
  %307 = load i8**, i8*** %5, align 8
  %308 = call i64 @have_flag(i32 %306, i8** %307, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0))
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %305, %300
  %311 = load i32, i32* @bench_hmac_sha256, align 4
  %312 = load i32, i32* @bench_setup, align 4
  %313 = call i32 @run_benchmark(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i32 %311, i32 %312, i32* null, i32* %6, i32 10, i32 20000)
  br label %314

314:                                              ; preds = %310, %305
  %315 = load i32, i32* %4, align 4
  %316 = load i8**, i8*** %5, align 8
  %317 = call i64 @have_flag(i32 %315, i8** %316, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %324, label %319

319:                                              ; preds = %314
  %320 = load i32, i32* %4, align 4
  %321 = load i8**, i8*** %5, align 8
  %322 = call i64 @have_flag(i32 %320, i8** %321, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0))
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %319, %314
  %325 = load i32, i32* @bench_rfc6979_hmac_sha256, align 4
  %326 = load i32, i32* @bench_setup, align 4
  %327 = call i32 @run_benchmark(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0), i32 %325, i32 %326, i32* null, i32* %6, i32 10, i32 20000)
  br label %328

328:                                              ; preds = %324, %319
  %329 = load i32, i32* %4, align 4
  %330 = load i8**, i8*** %5, align 8
  %331 = call i64 @have_flag(i32 %329, i8** %330, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0))
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %338, label %333

333:                                              ; preds = %328
  %334 = load i32, i32* %4, align 4
  %335 = load i8**, i8*** %5, align 8
  %336 = call i64 @have_flag(i32 %334, i8** %335, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0))
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %333, %328
  %339 = load i32, i32* @bench_context_verify, align 4
  %340 = load i32, i32* @bench_setup, align 4
  %341 = call i32 @run_benchmark(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0), i32 %339, i32 %340, i32* null, i32* %6, i32 10, i32 20)
  br label %342

342:                                              ; preds = %338, %333
  %343 = load i32, i32* %4, align 4
  %344 = load i8**, i8*** %5, align 8
  %345 = call i64 @have_flag(i32 %343, i8** %344, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0))
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %352, label %347

347:                                              ; preds = %342
  %348 = load i32, i32* %4, align 4
  %349 = load i8**, i8*** %5, align 8
  %350 = call i64 @have_flag(i32 %348, i8** %349, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0))
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %347, %342
  %353 = load i32, i32* @bench_context_sign, align 4
  %354 = load i32, i32* @bench_setup, align 4
  %355 = call i32 @run_benchmark(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), i32 %353, i32 %354, i32* null, i32* %6, i32 10, i32 200)
  br label %356

356:                                              ; preds = %352, %347
  %357 = load i32, i32* %4, align 4
  %358 = load i8**, i8*** %5, align 8
  %359 = call i64 @have_flag(i32 %357, i8** %358, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0))
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %366, label %361

361:                                              ; preds = %356
  %362 = load i32, i32* %4, align 4
  %363 = load i8**, i8*** %5, align 8
  %364 = call i64 @have_flag(i32 %362, i8** %363, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %361, %356
  %367 = load i32, i32* @bench_num_jacobi, align 4
  %368 = load i32, i32* @bench_setup, align 4
  %369 = call i32 @run_benchmark(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0), i32 %367, i32 %368, i32* null, i32* %6, i32 10, i32 200000)
  br label %370

370:                                              ; preds = %366, %361
  ret i32 0
}

declare dso_local i64 @have_flag(i32, i8**, i8*) #1

declare dso_local i32 @run_benchmark(i8*, i32, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
