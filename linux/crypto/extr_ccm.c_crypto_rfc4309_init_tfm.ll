; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_rfc4309_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_rfc4309_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.aead_instance = type { i32 }
%struct.crypto_aead_spawn = type { i32 }
%struct.crypto_rfc4309_ctx = type { %struct.crypto_aead* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @crypto_rfc4309_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_rfc4309_init_tfm(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.aead_instance*, align 8
  %5 = alloca %struct.crypto_aead_spawn*, align 8
  %6 = alloca %struct.crypto_rfc4309_ctx*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca i64, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %10 = call %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead* %9)
  store %struct.aead_instance* %10, %struct.aead_instance** %4, align 8
  %11 = load %struct.aead_instance*, %struct.aead_instance** %4, align 8
  %12 = call %struct.crypto_aead_spawn* @aead_instance_ctx(%struct.aead_instance* %11)
  store %struct.crypto_aead_spawn* %12, %struct.crypto_aead_spawn** %5, align 8
  %13 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %14 = call %struct.crypto_rfc4309_ctx* @crypto_aead_ctx(%struct.crypto_aead* %13)
  store %struct.crypto_rfc4309_ctx* %14, %struct.crypto_rfc4309_ctx** %6, align 8
  %15 = load %struct.crypto_aead_spawn*, %struct.crypto_aead_spawn** %5, align 8
  %16 = call %struct.crypto_aead* @crypto_spawn_aead(%struct.crypto_aead_spawn* %15)
  store %struct.crypto_aead* %16, %struct.crypto_aead** %7, align 8
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %18 = call i64 @IS_ERR(%struct.crypto_aead* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %22 = call i32 @PTR_ERR(%struct.crypto_aead* %21)
  store i32 %22, i32* %2, align 4
  br label %45

23:                                               ; preds = %1
  %24 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %25 = load %struct.crypto_rfc4309_ctx*, %struct.crypto_rfc4309_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.crypto_rfc4309_ctx, %struct.crypto_rfc4309_ctx* %25, i32 0, i32 0
  store %struct.crypto_aead* %24, %struct.crypto_aead** %26, align 8
  %27 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %28 = call i64 @crypto_aead_alignmask(%struct.crypto_aead* %27)
  store i64 %28, i64* %8, align 8
  %29 = call i32 (...) @crypto_tfm_ctx_alignment()
  %30 = sub nsw i32 %29, 1
  %31 = xor i32 %30, -1
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %8, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %8, align 8
  %35 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %36 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %37 = call i32 @crypto_aead_reqsize(%struct.crypto_aead* %36)
  %38 = call i32 (...) @crypto_tfm_ctx_alignment()
  %39 = call i64 @ALIGN(i32 %37, i32 %38)
  %40 = add i64 4, %39
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %40, %41
  %43 = add i64 %42, 32
  %44 = call i32 @crypto_aead_set_reqsize(%struct.crypto_aead* %35, i64 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %23, %20
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_aead_spawn* @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local %struct.crypto_rfc4309_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_aead* @crypto_spawn_aead(%struct.crypto_aead_spawn*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_aead*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_aead*) #1

declare dso_local i64 @crypto_aead_alignmask(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i32 @crypto_aead_set_reqsize(%struct.crypto_aead*, i64) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @crypto_aead_reqsize(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
