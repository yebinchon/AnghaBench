; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_alg_test_skcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_alg_test_skcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg_test_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cipher_test_suite }
%struct.cipher_test_suite = type { i64 }
%struct.crypto_skcipher = type { i32 }
%struct.skcipher_request = type { i32 }
%struct.cipher_test_sglists = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"alg: skcipher: empty test suite for %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"alg: skcipher: failed to allocate transform for %s: %ld\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"alg: skcipher: failed to allocate request for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"alg: skcipher: failed to allocate test buffers for %s\0A\00", align 1
@ENCRYPT = common dso_local global i32 0, align 4
@DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alg_test_desc*, i8*, i32, i32)* @alg_test_skcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alg_test_skcipher(%struct.alg_test_desc* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.alg_test_desc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cipher_test_suite*, align 8
  %11 = alloca %struct.crypto_skcipher*, align 8
  %12 = alloca %struct.skcipher_request*, align 8
  %13 = alloca %struct.cipher_test_sglists*, align 8
  %14 = alloca i32, align 4
  store %struct.alg_test_desc* %0, %struct.alg_test_desc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %16 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.cipher_test_suite* %17, %struct.cipher_test_suite** %10, align 8
  store %struct.skcipher_request* null, %struct.skcipher_request** %12, align 8
  store %struct.cipher_test_sglists* null, %struct.cipher_test_sglists** %13, align 8
  %18 = load %struct.cipher_test_suite*, %struct.cipher_test_suite** %10, align 8
  %19 = getelementptr inbounds %struct.cipher_test_suite, %struct.cipher_test_suite* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %98

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.crypto_skcipher* @crypto_alloc_skcipher(i8* %28, i32 %29, i32 %30)
  store %struct.crypto_skcipher* %31, %struct.crypto_skcipher** %11, align 8
  %32 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %11, align 8
  %33 = call i64 @IS_ERR(%struct.crypto_skcipher* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %11, align 8
  %38 = call i32 @PTR_ERR(%struct.crypto_skcipher* %37)
  %39 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %38)
  %40 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %11, align 8
  %41 = call i32 @PTR_ERR(%struct.crypto_skcipher* %40)
  store i32 %41, i32* %5, align 4
  br label %98

42:                                               ; preds = %27
  %43 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %11, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher* %43, i32 %44)
  store %struct.skcipher_request* %45, %struct.skcipher_request** %12, align 8
  %46 = load %struct.skcipher_request*, %struct.skcipher_request** %12, align 8
  %47 = icmp ne %struct.skcipher_request* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %14, align 4
  br label %90

53:                                               ; preds = %42
  %54 = call %struct.cipher_test_sglists* (...) @alloc_cipher_test_sglists()
  store %struct.cipher_test_sglists* %54, %struct.cipher_test_sglists** %13, align 8
  %55 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %13, align 8
  %56 = icmp ne %struct.cipher_test_sglists* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %14, align 4
  br label %90

62:                                               ; preds = %53
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @ENCRYPT, align 4
  %65 = load %struct.cipher_test_suite*, %struct.cipher_test_suite** %10, align 8
  %66 = load %struct.skcipher_request*, %struct.skcipher_request** %12, align 8
  %67 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %13, align 8
  %68 = call i32 @test_skcipher(i8* %63, i32 %64, %struct.cipher_test_suite* %65, %struct.skcipher_request* %66, %struct.cipher_test_sglists* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %90

72:                                               ; preds = %62
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* @DECRYPT, align 4
  %75 = load %struct.cipher_test_suite*, %struct.cipher_test_suite** %10, align 8
  %76 = load %struct.skcipher_request*, %struct.skcipher_request** %12, align 8
  %77 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %13, align 8
  %78 = call i32 @test_skcipher(i8* %73, i32 %74, %struct.cipher_test_suite* %75, %struct.skcipher_request* %76, %struct.cipher_test_sglists* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %90

82:                                               ; preds = %72
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %85 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.skcipher_request*, %struct.skcipher_request** %12, align 8
  %88 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %13, align 8
  %89 = call i32 @test_skcipher_vs_generic_impl(i8* %83, i32 %86, %struct.skcipher_request* %87, %struct.cipher_test_sglists* %88)
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %82, %81, %71, %57, %48
  %91 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %13, align 8
  %92 = call i32 @free_cipher_test_sglists(%struct.cipher_test_sglists* %91)
  %93 = load %struct.skcipher_request*, %struct.skcipher_request** %12, align 8
  %94 = call i32 @skcipher_request_free(%struct.skcipher_request* %93)
  %95 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %11, align 8
  %96 = call i32 @crypto_free_skcipher(%struct.crypto_skcipher* %95)
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %90, %35, %22
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local %struct.crypto_skcipher* @crypto_alloc_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #1

declare dso_local %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher*, i32) #1

declare dso_local %struct.cipher_test_sglists* @alloc_cipher_test_sglists(...) #1

declare dso_local i32 @test_skcipher(i8*, i32, %struct.cipher_test_suite*, %struct.skcipher_request*, %struct.cipher_test_sglists*) #1

declare dso_local i32 @test_skcipher_vs_generic_impl(i8*, i32, %struct.skcipher_request*, %struct.cipher_test_sglists*) #1

declare dso_local i32 @free_cipher_test_sglists(%struct.cipher_test_sglists*) #1

declare dso_local i32 @skcipher_request_free(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_free_skcipher(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
