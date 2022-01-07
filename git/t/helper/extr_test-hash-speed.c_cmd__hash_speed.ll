; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-hash-speed.c_cmd__hash_speed.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-hash-speed.c_cmd__hash_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_hash_algo = type { i8* }

@GIT_MAX_RAWSZ = common dso_local global i32 0, align 4
@__const.cmd__hash_speed.bufsizes = private unnamed_addr constant [5 x i32] [i32 64, i32 256, i32 1024, i32 8192, i32 16384], align 16
@GIT_HASH_NALGOS = common dso_local global i32 0, align 4
@hash_algos = common dso_local global %struct.git_hash_algo* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"usage: test-tool hash-speed algo_name\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"algo: %s\0A\00", align 1
@CLOCKS_PER_SEC = common dso_local global double 0.000000e+00, align 8
@NUM_SECONDS = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"size %u: %lu iters; %lu KiB; %0.2f KiB/s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__hash_speed(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca [5 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.git_hash_algo*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %18 = load i32, i32* @GIT_MAX_RAWSZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = bitcast [5 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([5 x i32]* @__const.cmd__hash_speed.bufsizes to i8*), i64 20, i1 false)
  store %struct.git_hash_algo* null, %struct.git_hash_algo** %14, align 8
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %52

25:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @GIT_HASH_NALGOS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i8**, i8*** %4, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.git_hash_algo*, %struct.git_hash_algo** @hash_algos, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.git_hash_algo, %struct.git_hash_algo* %34, i64 %36
  %38 = getelementptr inbounds %struct.git_hash_algo, %struct.git_hash_algo* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcmp(i8* %33, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %30
  %43 = load %struct.git_hash_algo*, %struct.git_hash_algo** @hash_algos, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.git_hash_algo, %struct.git_hash_algo* %43, i64 %45
  store %struct.git_hash_algo* %46, %struct.git_hash_algo** %14, align 8
  br label %51

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %26

51:                                               ; preds = %42, %26
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.git_hash_algo*, %struct.git_hash_algo** %14, align 8
  %54 = icmp ne %struct.git_hash_algo* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call i32 @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = call double (...) @clock()
  store double %58, double* %8, align 8
  %59 = load %struct.git_hash_algo*, %struct.git_hash_algo** %14, align 8
  %60 = getelementptr inbounds %struct.git_hash_algo, %struct.git_hash_algo* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %131, %57
  %64 = load i32, i32* %12, align 4
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %66 = call i32 @ARRAY_SIZE(i32* %65)
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %134

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @xcalloc(i32 1, i32 %72)
  store i8* %73, i8** %13, align 8
  %74 = call double (...) @clock()
  %75 = load double, double* %8, align 8
  %76 = fsub double %74, %75
  store double %76, double* %10, align 8
  store double %76, double* %9, align 8
  store i64 0, i64* %15, align 8
  br label %77

77:                                               ; preds = %101, %68
  %78 = load double, double* %10, align 8
  %79 = load double, double* %9, align 8
  %80 = fsub double %78, %79
  %81 = load double, double* @CLOCKS_PER_SEC, align 8
  %82 = fdiv double %80, %81
  %83 = load double, double* @NUM_SECONDS, align 8
  %84 = fcmp olt double %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %77
  %86 = load %struct.git_hash_algo*, %struct.git_hash_algo** %14, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @compute_hash(%struct.git_hash_algo* %86, i32* %5, i8* %21, i8* %87, i32 %91)
  %93 = load i64, i64* %15, align 8
  %94 = and i64 %93, 127
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %85
  %97 = call double (...) @clock()
  %98 = load double, double* %8, align 8
  %99 = fsub double %97, %98
  store double %99, double* %10, align 8
  br label %100

100:                                              ; preds = %96, %85
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %15, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %15, align 8
  br label %77

104:                                              ; preds = %77
  %105 = load i64, i64* %15, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = zext i32 %109 to i64
  %111 = mul i64 %105, %110
  store i64 %111, i64* %16, align 8
  %112 = load i64, i64* %16, align 8
  %113 = uitofp i64 %112 to double
  %114 = load double, double* %10, align 8
  %115 = load double, double* %9, align 8
  %116 = fsub double %114, %115
  %117 = fmul double 1.024000e+03, %116
  %118 = load double, double* @CLOCKS_PER_SEC, align 8
  %119 = fdiv double %117, %118
  %120 = fdiv double %113, %119
  store double %120, double* %17, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* %16, align 8
  %127 = load double, double* %17, align 8
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %124, i64 %125, i64 %126, double %127)
  %129 = load i8*, i8** %13, align 8
  %130 = call i32 @free(i8* %129)
  br label %131

131:                                              ; preds = %104
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %63

134:                                              ; preds = %63
  %135 = call i32 @exit(i32 0) #5
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strcmp(i8*, i8*) #3

declare dso_local i32 @die(i8*) #3

declare dso_local double @clock(...) #3

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @ARRAY_SIZE(i32*) #3

declare dso_local i8* @xcalloc(i32, i32) #3

declare dso_local i32 @compute_hash(%struct.git_hash_algo*, i32*, i8*, i8*, i32) #3

declare dso_local i32 @free(i8*) #3

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
