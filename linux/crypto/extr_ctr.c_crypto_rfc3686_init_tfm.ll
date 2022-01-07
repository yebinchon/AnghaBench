; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ctr.c_crypto_rfc3686_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ctr.c_crypto_rfc3686_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.skcipher_instance = type { i32 }
%struct.crypto_skcipher_spawn = type { i32 }
%struct.crypto_rfc3686_ctx = type { %struct.crypto_skcipher* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*)* @crypto_rfc3686_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_rfc3686_init_tfm(%struct.crypto_skcipher* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.skcipher_instance*, align 8
  %5 = alloca %struct.crypto_skcipher_spawn*, align 8
  %6 = alloca %struct.crypto_rfc3686_ctx*, align 8
  %7 = alloca %struct.crypto_skcipher*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %3, align 8
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %11 = call %struct.skcipher_instance* @skcipher_alg_instance(%struct.crypto_skcipher* %10)
  store %struct.skcipher_instance* %11, %struct.skcipher_instance** %4, align 8
  %12 = load %struct.skcipher_instance*, %struct.skcipher_instance** %4, align 8
  %13 = call %struct.crypto_skcipher_spawn* @skcipher_instance_ctx(%struct.skcipher_instance* %12)
  store %struct.crypto_skcipher_spawn* %13, %struct.crypto_skcipher_spawn** %5, align 8
  %14 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %15 = call %struct.crypto_rfc3686_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %14)
  store %struct.crypto_rfc3686_ctx* %15, %struct.crypto_rfc3686_ctx** %6, align 8
  %16 = load %struct.crypto_skcipher_spawn*, %struct.crypto_skcipher_spawn** %5, align 8
  %17 = call %struct.crypto_skcipher* @crypto_spawn_skcipher(%struct.crypto_skcipher_spawn* %16)
  store %struct.crypto_skcipher* %17, %struct.crypto_skcipher** %7, align 8
  %18 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %19 = call i64 @IS_ERR(%struct.crypto_skcipher* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %23 = call i32 @PTR_ERR(%struct.crypto_skcipher* %22)
  store i32 %23, i32* %2, align 4
  br label %45

24:                                               ; preds = %1
  %25 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %26 = load %struct.crypto_rfc3686_ctx*, %struct.crypto_rfc3686_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.crypto_rfc3686_ctx, %struct.crypto_rfc3686_ctx* %26, i32 0, i32 0
  store %struct.crypto_skcipher* %25, %struct.crypto_skcipher** %27, align 8
  %28 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %29 = call i64 @crypto_skcipher_alignmask(%struct.crypto_skcipher* %28)
  store i64 %29, i64* %8, align 8
  %30 = call i32 (...) @crypto_tfm_ctx_alignment()
  %31 = sub nsw i32 %30, 1
  %32 = xor i32 %31, -1
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %8, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 4
  %38 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %39 = call i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher* %38)
  %40 = add i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @crypto_skcipher_set_reqsize(%struct.crypto_skcipher* %42, i32 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %24, %21
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.skcipher_instance* @skcipher_alg_instance(%struct.crypto_skcipher*) #1

declare dso_local %struct.crypto_skcipher_spawn* @skcipher_instance_ctx(%struct.skcipher_instance*) #1

declare dso_local %struct.crypto_rfc3686_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local %struct.crypto_skcipher* @crypto_spawn_skcipher(%struct.crypto_skcipher_spawn*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #1

declare dso_local i64 @crypto_skcipher_alignmask(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_set_reqsize(%struct.crypto_skcipher*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
