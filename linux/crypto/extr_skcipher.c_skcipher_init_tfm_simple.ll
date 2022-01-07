; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_init_tfm_simple.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_init_tfm_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.skcipher_instance = type { i32 }
%struct.crypto_spawn = type { i32 }
%struct.skcipher_ctx_simple = type { %struct.crypto_cipher* }
%struct.crypto_cipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*)* @skcipher_init_tfm_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_init_tfm_simple(%struct.crypto_skcipher* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.skcipher_instance*, align 8
  %5 = alloca %struct.crypto_spawn*, align 8
  %6 = alloca %struct.skcipher_ctx_simple*, align 8
  %7 = alloca %struct.crypto_cipher*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %3, align 8
  %8 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %9 = call %struct.skcipher_instance* @skcipher_alg_instance(%struct.crypto_skcipher* %8)
  store %struct.skcipher_instance* %9, %struct.skcipher_instance** %4, align 8
  %10 = load %struct.skcipher_instance*, %struct.skcipher_instance** %4, align 8
  %11 = call %struct.crypto_spawn* @skcipher_instance_ctx(%struct.skcipher_instance* %10)
  store %struct.crypto_spawn* %11, %struct.crypto_spawn** %5, align 8
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %13 = call %struct.skcipher_ctx_simple* @crypto_skcipher_ctx(%struct.crypto_skcipher* %12)
  store %struct.skcipher_ctx_simple* %13, %struct.skcipher_ctx_simple** %6, align 8
  %14 = load %struct.crypto_spawn*, %struct.crypto_spawn** %5, align 8
  %15 = call %struct.crypto_cipher* @crypto_spawn_cipher(%struct.crypto_spawn* %14)
  store %struct.crypto_cipher* %15, %struct.crypto_cipher** %7, align 8
  %16 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %17 = call i64 @IS_ERR(%struct.crypto_cipher* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %21 = call i32 @PTR_ERR(%struct.crypto_cipher* %20)
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %24 = load %struct.skcipher_ctx_simple*, %struct.skcipher_ctx_simple** %6, align 8
  %25 = getelementptr inbounds %struct.skcipher_ctx_simple, %struct.skcipher_ctx_simple* %24, i32 0, i32 0
  store %struct.crypto_cipher* %23, %struct.crypto_cipher** %25, align 8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.skcipher_instance* @skcipher_alg_instance(%struct.crypto_skcipher*) #1

declare dso_local %struct.crypto_spawn* @skcipher_instance_ctx(%struct.skcipher_instance*) #1

declare dso_local %struct.skcipher_ctx_simple* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local %struct.crypto_cipher* @crypto_spawn_cipher(%struct.crypto_spawn*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_cipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
