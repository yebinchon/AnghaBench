; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_encrypt_sign_complete_cb.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_encrypt_sign_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32, i32, %struct.akcipher_request* }
%struct.akcipher_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.crypto_async_request*, i32)*, %struct.akcipher_request* }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @pkcs1pad_encrypt_sign_complete_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkcs1pad_encrypt_sign_complete_cb(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.akcipher_request*, align 8
  %6 = alloca %struct.crypto_async_request, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %8 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %7, i32 0, i32 2
  %9 = load %struct.akcipher_request*, %struct.akcipher_request** %8, align 8
  store %struct.akcipher_request* %9, %struct.akcipher_request** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EINPROGRESS, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.akcipher_request*, %struct.akcipher_request** %5, align 8
  %17 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.akcipher_request*, %struct.akcipher_request** %18, align 8
  %20 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %6, i32 0, i32 2
  store %struct.akcipher_request* %19, %struct.akcipher_request** %20, align 8
  %21 = load %struct.akcipher_request*, %struct.akcipher_request** %5, align 8
  %22 = call i32 @crypto_akcipher_reqtfm(%struct.akcipher_request* %21)
  %23 = call i32 @crypto_akcipher_tfm(i32 %22)
  %24 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %26 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load %struct.akcipher_request*, %struct.akcipher_request** %5, align 8
  %30 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %31, align 8
  %33 = load %struct.akcipher_request*, %struct.akcipher_request** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @pkcs1pad_encrypt_sign_complete(%struct.akcipher_request* %33, i32 %34)
  %36 = call i32 %32(%struct.crypto_async_request* %6, i32 %35)
  br label %37

37:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @crypto_akcipher_tfm(i32) #1

declare dso_local i32 @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local i32 @pkcs1pad_encrypt_sign_complete(%struct.akcipher_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
