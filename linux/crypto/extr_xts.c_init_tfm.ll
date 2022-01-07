; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_xts.c_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_xts.c_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.skcipher_instance = type { i32 }
%struct.xts_instance_ctx = type { i32, i32 }
%struct.priv = type { %struct.crypto_skcipher*, %struct.crypto_skcipher* }
%struct.crypto_cipher = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*)* @init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_tfm(%struct.crypto_skcipher* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.skcipher_instance*, align 8
  %5 = alloca %struct.xts_instance_ctx*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca %struct.crypto_skcipher*, align 8
  %8 = alloca %struct.crypto_cipher*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %3, align 8
  %9 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %10 = call %struct.skcipher_instance* @skcipher_alg_instance(%struct.crypto_skcipher* %9)
  store %struct.skcipher_instance* %10, %struct.skcipher_instance** %4, align 8
  %11 = load %struct.skcipher_instance*, %struct.skcipher_instance** %4, align 8
  %12 = call %struct.xts_instance_ctx* @skcipher_instance_ctx(%struct.skcipher_instance* %11)
  store %struct.xts_instance_ctx* %12, %struct.xts_instance_ctx** %5, align 8
  %13 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %14 = call %struct.priv* @crypto_skcipher_ctx(%struct.crypto_skcipher* %13)
  store %struct.priv* %14, %struct.priv** %6, align 8
  %15 = load %struct.xts_instance_ctx*, %struct.xts_instance_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.xts_instance_ctx, %struct.xts_instance_ctx* %15, i32 0, i32 1
  %17 = call %struct.crypto_skcipher* @crypto_spawn_skcipher(i32* %16)
  store %struct.crypto_skcipher* %17, %struct.crypto_skcipher** %7, align 8
  %18 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %19 = call i64 @IS_ERR(%struct.crypto_skcipher* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %23 = call i32 @PTR_ERR(%struct.crypto_skcipher* %22)
  store i32 %23, i32* %2, align 4
  br label %55

24:                                               ; preds = %1
  %25 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %26 = load %struct.priv*, %struct.priv** %6, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 1
  store %struct.crypto_skcipher* %25, %struct.crypto_skcipher** %27, align 8
  %28 = load %struct.xts_instance_ctx*, %struct.xts_instance_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.xts_instance_ctx, %struct.xts_instance_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.crypto_skcipher* @crypto_alloc_cipher(i32 %30, i32 0, i32 0)
  %32 = bitcast %struct.crypto_skcipher* %31 to %struct.crypto_cipher*
  store %struct.crypto_cipher* %32, %struct.crypto_cipher** %8, align 8
  %33 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %34 = bitcast %struct.crypto_cipher* %33 to %struct.crypto_skcipher*
  %35 = call i64 @IS_ERR(%struct.crypto_skcipher* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %24
  %38 = load %struct.priv*, %struct.priv** %6, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 1
  %40 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %39, align 8
  %41 = call i32 @crypto_free_skcipher(%struct.crypto_skcipher* %40)
  %42 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %43 = bitcast %struct.crypto_cipher* %42 to %struct.crypto_skcipher*
  %44 = call i32 @PTR_ERR(%struct.crypto_skcipher* %43)
  store i32 %44, i32* %2, align 4
  br label %55

45:                                               ; preds = %24
  %46 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %47 = bitcast %struct.crypto_cipher* %46 to %struct.crypto_skcipher*
  %48 = load %struct.priv*, %struct.priv** %6, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 0
  store %struct.crypto_skcipher* %47, %struct.crypto_skcipher** %49, align 8
  %50 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %51 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %52 = call i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher* %51)
  %53 = add i64 %52, 4
  %54 = call i32 @crypto_skcipher_set_reqsize(%struct.crypto_skcipher* %50, i64 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %45, %37, %21
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.skcipher_instance* @skcipher_alg_instance(%struct.crypto_skcipher*) #1

declare dso_local %struct.xts_instance_ctx* @skcipher_instance_ctx(%struct.skcipher_instance*) #1

declare dso_local %struct.priv* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local %struct.crypto_skcipher* @crypto_spawn_skcipher(i32*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #1

declare dso_local %struct.crypto_skcipher* @crypto_alloc_cipher(i32, i32, i32) #1

declare dso_local i32 @crypto_free_skcipher(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_set_reqsize(%struct.crypto_skcipher*, i64) #1

declare dso_local i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
