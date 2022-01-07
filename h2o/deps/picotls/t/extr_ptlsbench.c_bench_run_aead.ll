; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_ptlsbench.c_bench_run_aead.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_ptlsbench.c_bench_run_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTLS_MAX_SECRET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"openssl\00", align 1
@OPENSSL_VERSION_NUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%d.%d.%d%c\00", align 1
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"%s, %s, %d, %s, %d, %s, %s, %s, %d, %d, %d, %d, %.2f, %.2f\0A\00", align 1
@BENCH_MODE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i8*, i8*, i32*, i32*, i64, i64, i64*)* @bench_run_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bench_run_aead(i8* %0, i8* %1, i32 %2, i64 %3, i8* %4, i8* %5, i32* %6, i32* %7, i64 %8, i64 %9, i64* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca [128 x i8], align 16
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8, align 1
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i64 %3, i64* %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i64 %8, i64* %20, align 8
  store i64 %9, i64* %21, align 8
  store i64* %10, i64** %22, align 8
  store i32 0, i32* %23, align 4
  %37 = load i32, i32* @PTLS_MAX_SECRET_SIZE, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %24, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %25, align 8
  store i64 0, i64* %28, align 8
  store i64 0, i64* %29, align 8
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %30, i64 0, i64 0
  store i8 0, i8* %41, align 16
  %42 = load i8*, i8** %16, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %11
  %46 = load i32, i32* @OPENSSL_VERSION_NUMBER, align 4
  store i32 %46, i32* %31, align 4
  %47 = load i32, i32* %31, align 4
  %48 = ashr i32 %47, 28
  store i32 %48, i32* %32, align 4
  %49 = load i32, i32* %31, align 4
  %50 = ashr i32 %49, 20
  %51 = and i32 %50, 255
  store i32 %51, i32* %33, align 4
  %52 = load i32, i32* %31, align 4
  %53 = ashr i32 %52, 12
  %54 = and i32 %53, 255
  store i32 %54, i32* %34, align 4
  %55 = load i32, i32* %31, align 4
  %56 = ashr i32 %55, 4
  %57 = and i32 %56, 255
  store i32 %57, i32* %35, align 4
  %58 = load i32, i32* %35, align 4
  %59 = add nsw i32 96, %58
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %36, align 1
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %30, i64 0, i64 0
  %62 = load i32, i32* %32, align 4
  %63 = load i32, i32* %33, align 4
  %64 = load i32, i32* %34, align 4
  %65 = load i8, i8* %36, align 1
  %66 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63, i32 %64, i8 signext %65)
  br label %67

67:                                               ; preds = %45, %11
  %68 = load i64, i64* %15, align 8
  %69 = load i64*, i64** %22, align 8
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %68
  store i64 %71, i64* %69, align 8
  %72 = mul nuw i64 4, %38
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memset(i32* %40, i8 signext 122, i32 %73)
  %75 = load i32*, i32** %18, align 8
  %76 = load i32*, i32** %19, align 8
  %77 = call i32* @ptls_aead_new(i32* %75, i32* %76, i32 1, i32* %40, i32* null)
  store i32* %77, i32** %26, align 8
  %78 = load i32*, i32** %18, align 8
  %79 = load i32*, i32** %19, align 8
  %80 = call i32* @ptls_aead_new(i32* %78, i32* %79, i32 0, i32* %40, i32* null)
  store i32* %80, i32** %27, align 8
  %81 = load i32*, i32** %26, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %67
  %84 = load i32*, i32** %27, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83, %67
  %87 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %87, i32* %23, align 4
  br label %123

88:                                               ; preds = %83
  %89 = load i32*, i32** %26, align 8
  %90 = load i32*, i32** %27, align 8
  %91 = load i64, i64* %20, align 8
  %92 = load i64, i64* %21, align 8
  %93 = load i64*, i64** %22, align 8
  %94 = call i32 @bench_run_one(i32* %89, i32* %90, i64 %91, i64 %92, i64* %28, i64* %29, i64* %93)
  store i32 %94, i32* %23, align 4
  %95 = load i32, i32* %23, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %88
  %98 = load i8*, i8** %12, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** @BENCH_MODE, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load i8*, i8** %16, align 8
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %30, i64 0, i64 0
  %104 = load i8*, i8** %17, align 8
  %105 = load i64, i64* %20, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i64, i64* %21, align 8
  %108 = trunc i64 %107 to i32
  %109 = load i64, i64* %28, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i64, i64* %29, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i64, i64* %28, align 8
  %114 = load i64, i64* %21, align 8
  %115 = load i64, i64* %20, align 8
  %116 = call double @bench_mbps(i64 %113, i64 %114, i64 %115)
  %117 = load i64, i64* %29, align 8
  %118 = load i64, i64* %21, align 8
  %119 = load i64, i64* %20, align 8
  %120 = call double @bench_mbps(i64 %117, i64 %118, i64 %119)
  %121 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %98, i8* %99, i32 64, i8* %100, i32 %101, i8* %102, i8* %103, i8* %104, i32 %106, i32 %108, i32 %110, i32 %112, double %116, double %120)
  br label %122

122:                                              ; preds = %97, %88
  br label %123

123:                                              ; preds = %122, %86
  %124 = load i32*, i32** %26, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32*, i32** %26, align 8
  %128 = call i32 @ptls_aead_free(i32* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32*, i32** %27, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32*, i32** %27, align 8
  %134 = call i32 @ptls_aead_free(i32* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %23, align 4
  %137 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %137)
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i8 signext) #2

declare dso_local i32 @memset(i32*, i8 signext, i32) #2

declare dso_local i32* @ptls_aead_new(i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @bench_run_one(i32*, i32*, i64, i64, i64*, i64*, i64*) #2

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, double, double) #2

declare dso_local double @bench_mbps(i64, i64, i64) #2

declare dso_local i32 @ptls_aead_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
