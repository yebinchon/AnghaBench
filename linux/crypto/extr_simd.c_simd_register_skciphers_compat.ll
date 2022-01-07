; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_simd.c_simd_register_skciphers_compat.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_simd.c_simd_register_skciphers_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_alg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.simd_skcipher_alg = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"__\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simd_register_skciphers_compat(%struct.skcipher_alg* %0, i32 %1, %struct.simd_skcipher_alg** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.skcipher_alg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.simd_skcipher_alg**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.simd_skcipher_alg*, align 8
  store %struct.skcipher_alg* %0, %struct.skcipher_alg** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.simd_skcipher_alg** %2, %struct.simd_skcipher_alg*** %7, align 8
  %14 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @crypto_register_skciphers(%struct.skcipher_alg* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %94

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %84, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %87

26:                                               ; preds = %22
  %27 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %27, i64 %29
  %31 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %36, i64 %38
  %40 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strncmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %45, i64 %47
  %49 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  store i8* %52, i8** %10, align 8
  %53 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %53, i64 %55
  %57 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8* %60, i8** %11, align 8
  %61 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %61, i64 %63
  %65 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call %struct.simd_skcipher_alg* @simd_skcipher_create_compat(i8* %68, i8* %69, i8* %70)
  store %struct.simd_skcipher_alg* %71, %struct.simd_skcipher_alg** %13, align 8
  %72 = load %struct.simd_skcipher_alg*, %struct.simd_skcipher_alg** %13, align 8
  %73 = call i32 @PTR_ERR(%struct.simd_skcipher_alg* %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.simd_skcipher_alg*, %struct.simd_skcipher_alg** %13, align 8
  %75 = call i64 @IS_ERR(%struct.simd_skcipher_alg* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %26
  br label %88

78:                                               ; preds = %26
  %79 = load %struct.simd_skcipher_alg*, %struct.simd_skcipher_alg** %13, align 8
  %80 = load %struct.simd_skcipher_alg**, %struct.simd_skcipher_alg*** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.simd_skcipher_alg*, %struct.simd_skcipher_alg** %80, i64 %82
  store %struct.simd_skcipher_alg* %79, %struct.simd_skcipher_alg** %83, align 8
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %22

87:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %94

88:                                               ; preds = %77
  %89 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.simd_skcipher_alg**, %struct.simd_skcipher_alg*** %7, align 8
  %92 = call i32 @simd_unregister_skciphers(%struct.skcipher_alg* %89, i32 %90, %struct.simd_skcipher_alg** %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %87, %19
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @crypto_register_skciphers(%struct.skcipher_alg*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.simd_skcipher_alg* @simd_skcipher_create_compat(i8*, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.simd_skcipher_alg*) #1

declare dso_local i64 @IS_ERR(%struct.simd_skcipher_alg*) #1

declare dso_local i32 @simd_unregister_skciphers(%struct.skcipher_alg*, i32, %struct.simd_skcipher_alg**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
