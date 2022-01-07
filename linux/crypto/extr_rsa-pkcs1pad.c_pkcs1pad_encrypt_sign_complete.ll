; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_encrypt_sign_complete.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_encrypt_sign_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32, i32 }
%struct.crypto_akcipher = type { i32 }
%struct.pkcs1pad_ctx = type { i32 }
%struct.pkcs1pad_request = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*, i32)* @pkcs1pad_encrypt_sign_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs1pad_encrypt_sign_complete(%struct.akcipher_request* %0, i32 %1) #0 {
  %3 = alloca %struct.akcipher_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_akcipher*, align 8
  %6 = alloca %struct.pkcs1pad_ctx*, align 8
  %7 = alloca %struct.pkcs1pad_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.akcipher_request* %0, %struct.akcipher_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %12 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %11)
  store %struct.crypto_akcipher* %12, %struct.crypto_akcipher** %5, align 8
  %13 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %5, align 8
  %14 = call %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %13)
  store %struct.pkcs1pad_ctx* %14, %struct.pkcs1pad_ctx** %6, align 8
  %15 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %16 = call %struct.pkcs1pad_request* @akcipher_request_ctx(%struct.akcipher_request* %15)
  store %struct.pkcs1pad_request* %16, %struct.pkcs1pad_request** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %80

20:                                               ; preds = %2
  %21 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %7, align 8
  %22 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sub i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %80

37:                                               ; preds = %20
  %38 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32* @kzalloc(i32 %40, i32 %41)
  store i32* %42, i32** %10, align 8
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  br label %80

48:                                               ; preds = %37
  %49 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %50 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %53 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @sg_nents_for_len(i32 %54, i32 %55)
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @sg_copy_to_buffer(i32 %51, i32 %56, i32* %60, i32 %61)
  %63 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %64 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %67 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %6, align 8
  %70 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @sg_nents_for_len(i32 %68, i32 %71)
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @sg_copy_from_buffer(i32 %65, i32 %72, i32* %73, i32 %76)
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @kzfree(i32* %78)
  br label %80

80:                                               ; preds = %48, %47, %36, %19
  %81 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %6, align 8
  %82 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %85 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %7, align 8
  %87 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @kfree(i32 %88)
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local %struct.pkcs1pad_request* @akcipher_request_ctx(%struct.akcipher_request*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @sg_nents_for_len(i32, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
