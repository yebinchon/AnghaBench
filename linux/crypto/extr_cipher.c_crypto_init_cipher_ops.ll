; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cipher.c_crypto_init_cipher_ops.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cipher.c_crypto_init_cipher_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__*, %struct.cipher_tfm }
%struct.TYPE_2__ = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32 }
%struct.cipher_tfm = type { i32, i32, i32 }

@setkey = common dso_local global i32 0, align 4
@cipher_encrypt_unaligned = common dso_local global i32 0, align 4
@cipher_decrypt_unaligned = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_init_cipher_ops(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.cipher_tfm*, align 8
  %4 = alloca %struct.cipher_alg*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %6 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %5, i32 0, i32 1
  store %struct.cipher_tfm* %6, %struct.cipher_tfm** %3, align 8
  %7 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %8 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.cipher_alg* %10, %struct.cipher_alg** %4, align 8
  %11 = load i32, i32* @setkey, align 4
  %12 = load %struct.cipher_tfm*, %struct.cipher_tfm** %3, align 8
  %13 = getelementptr inbounds %struct.cipher_tfm, %struct.cipher_tfm* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %15 = call i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @cipher_encrypt_unaligned, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.cipher_alg*, %struct.cipher_alg** %4, align 8
  %21 = getelementptr inbounds %struct.cipher_alg, %struct.cipher_alg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  br label %23

23:                                               ; preds = %19, %17
  %24 = phi i32 [ %18, %17 ], [ %22, %19 ]
  %25 = load %struct.cipher_tfm*, %struct.cipher_tfm** %3, align 8
  %26 = getelementptr inbounds %struct.cipher_tfm, %struct.cipher_tfm* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %28 = call i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @cipher_decrypt_unaligned, align 4
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.cipher_alg*, %struct.cipher_alg** %4, align 8
  %34 = getelementptr inbounds %struct.cipher_alg, %struct.cipher_alg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %31, %30 ], [ %35, %32 ]
  %38 = load %struct.cipher_tfm*, %struct.cipher_tfm** %3, align 8
  %39 = getelementptr inbounds %struct.cipher_tfm, %struct.cipher_tfm* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret i32 0
}

declare dso_local i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
