; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_hash_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_hash_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_instance = type { i32 }
%struct.hashd_instance_ctx = type { %struct.crypto_shash_spawn }
%struct.crypto_shash_spawn = type { i32 }
%struct.cryptd_hash_ctx = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @cryptd_hash_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptd_hash_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_instance*, align 8
  %5 = alloca %struct.hashd_instance_ctx*, align 8
  %6 = alloca %struct.crypto_shash_spawn*, align 8
  %7 = alloca %struct.cryptd_hash_ctx*, align 8
  %8 = alloca %struct.crypto_shash*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %10 = call %struct.crypto_instance* @crypto_tfm_alg_instance(%struct.crypto_tfm* %9)
  store %struct.crypto_instance* %10, %struct.crypto_instance** %4, align 8
  %11 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %12 = call %struct.hashd_instance_ctx* @crypto_instance_ctx(%struct.crypto_instance* %11)
  store %struct.hashd_instance_ctx* %12, %struct.hashd_instance_ctx** %5, align 8
  %13 = load %struct.hashd_instance_ctx*, %struct.hashd_instance_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.hashd_instance_ctx, %struct.hashd_instance_ctx* %13, i32 0, i32 0
  store %struct.crypto_shash_spawn* %14, %struct.crypto_shash_spawn** %6, align 8
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %16 = call %struct.cryptd_hash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %15)
  store %struct.cryptd_hash_ctx* %16, %struct.cryptd_hash_ctx** %7, align 8
  %17 = load %struct.crypto_shash_spawn*, %struct.crypto_shash_spawn** %6, align 8
  %18 = call %struct.crypto_shash* @crypto_spawn_shash(%struct.crypto_shash_spawn* %17)
  store %struct.crypto_shash* %18, %struct.crypto_shash** %8, align 8
  %19 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %20 = call i64 @IS_ERR(%struct.crypto_shash* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %24 = call i32 @PTR_ERR(%struct.crypto_shash* %23)
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %27 = load %struct.cryptd_hash_ctx*, %struct.cryptd_hash_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.cryptd_hash_ctx, %struct.cryptd_hash_ctx* %27, i32 0, i32 0
  store %struct.crypto_shash* %26, %struct.crypto_shash** %28, align 8
  %29 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %30 = call i32 @__crypto_ahash_cast(%struct.crypto_tfm* %29)
  %31 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %32 = call i64 @crypto_shash_descsize(%struct.crypto_shash* %31)
  %33 = add i64 4, %32
  %34 = call i32 @crypto_ahash_set_reqsize(i32 %30, i64 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %25, %22
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.crypto_instance* @crypto_tfm_alg_instance(%struct.crypto_tfm*) #1

declare dso_local %struct.hashd_instance_ctx* @crypto_instance_ctx(%struct.crypto_instance*) #1

declare dso_local %struct.cryptd_hash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_shash* @crypto_spawn_shash(%struct.crypto_shash_spawn*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_ahash_set_reqsize(i32, i64) #1

declare dso_local i32 @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local i64 @crypto_shash_descsize(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
