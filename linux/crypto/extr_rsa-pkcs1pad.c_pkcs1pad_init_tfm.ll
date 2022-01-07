; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.akcipher_instance = type { i32 }
%struct.pkcs1pad_inst_ctx = type { i32 }
%struct.pkcs1pad_ctx = type { %struct.crypto_akcipher* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_akcipher*)* @pkcs1pad_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs1pad_init_tfm(%struct.crypto_akcipher* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_akcipher*, align 8
  %4 = alloca %struct.akcipher_instance*, align 8
  %5 = alloca %struct.pkcs1pad_inst_ctx*, align 8
  %6 = alloca %struct.pkcs1pad_ctx*, align 8
  %7 = alloca %struct.crypto_akcipher*, align 8
  store %struct.crypto_akcipher* %0, %struct.crypto_akcipher** %3, align 8
  %8 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %3, align 8
  %9 = call %struct.akcipher_instance* @akcipher_alg_instance(%struct.crypto_akcipher* %8)
  store %struct.akcipher_instance* %9, %struct.akcipher_instance** %4, align 8
  %10 = load %struct.akcipher_instance*, %struct.akcipher_instance** %4, align 8
  %11 = call %struct.pkcs1pad_inst_ctx* @akcipher_instance_ctx(%struct.akcipher_instance* %10)
  store %struct.pkcs1pad_inst_ctx* %11, %struct.pkcs1pad_inst_ctx** %5, align 8
  %12 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %3, align 8
  %13 = call %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %12)
  store %struct.pkcs1pad_ctx* %13, %struct.pkcs1pad_ctx** %6, align 8
  %14 = load %struct.pkcs1pad_inst_ctx*, %struct.pkcs1pad_inst_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.pkcs1pad_inst_ctx, %struct.pkcs1pad_inst_ctx* %14, i32 0, i32 0
  %16 = call %struct.crypto_akcipher* @crypto_spawn_akcipher(i32* %15)
  store %struct.crypto_akcipher* %16, %struct.crypto_akcipher** %7, align 8
  %17 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %7, align 8
  %18 = call i64 @IS_ERR(%struct.crypto_akcipher* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %7, align 8
  %22 = call i32 @PTR_ERR(%struct.crypto_akcipher* %21)
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %7, align 8
  %25 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %25, i32 0, i32 0
  store %struct.crypto_akcipher* %24, %struct.crypto_akcipher** %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.akcipher_instance* @akcipher_alg_instance(%struct.crypto_akcipher*) #1

declare dso_local %struct.pkcs1pad_inst_ctx* @akcipher_instance_ctx(%struct.akcipher_instance*) #1

declare dso_local %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local %struct.crypto_akcipher* @crypto_spawn_akcipher(i32*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_akcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_akcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
