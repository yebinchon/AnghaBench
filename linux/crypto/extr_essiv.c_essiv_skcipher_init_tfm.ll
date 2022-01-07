; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_skcipher_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_skcipher_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.skcipher_instance = type { i32 }
%struct.essiv_instance_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.essiv_tfm_ctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.crypto_skcipher* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*)* @essiv_skcipher_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @essiv_skcipher_init_tfm(%struct.crypto_skcipher* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.skcipher_instance*, align 8
  %5 = alloca %struct.essiv_instance_ctx*, align 8
  %6 = alloca %struct.essiv_tfm_ctx*, align 8
  %7 = alloca %struct.crypto_skcipher*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %3, align 8
  %9 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %10 = call %struct.skcipher_instance* @skcipher_alg_instance(%struct.crypto_skcipher* %9)
  store %struct.skcipher_instance* %10, %struct.skcipher_instance** %4, align 8
  %11 = load %struct.skcipher_instance*, %struct.skcipher_instance** %4, align 8
  %12 = call %struct.essiv_instance_ctx* @skcipher_instance_ctx(%struct.skcipher_instance* %11)
  store %struct.essiv_instance_ctx* %12, %struct.essiv_instance_ctx** %5, align 8
  %13 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %14 = call %struct.essiv_tfm_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %13)
  store %struct.essiv_tfm_ctx* %14, %struct.essiv_tfm_ctx** %6, align 8
  %15 = load %struct.essiv_instance_ctx*, %struct.essiv_instance_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.essiv_instance_ctx, %struct.essiv_instance_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call %struct.crypto_skcipher* @crypto_spawn_skcipher(i32* %17)
  store %struct.crypto_skcipher* %18, %struct.crypto_skcipher** %7, align 8
  %19 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %20 = call i64 @IS_ERR(%struct.crypto_skcipher* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %24 = call i32 @PTR_ERR(%struct.crypto_skcipher* %23)
  store i32 %24, i32* %2, align 4
  br label %45

25:                                               ; preds = %1
  %26 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %27 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %28 = call i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher* %27)
  %29 = add i64 4, %28
  %30 = call i32 @crypto_skcipher_set_reqsize(%struct.crypto_skcipher* %26, i64 %29)
  %31 = load %struct.essiv_instance_ctx*, %struct.essiv_instance_ctx** %5, align 8
  %32 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %6, align 8
  %33 = call i32 @essiv_init_tfm(%struct.essiv_instance_ctx* %31, %struct.essiv_tfm_ctx* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %38 = call i32 @crypto_free_skcipher(%struct.crypto_skcipher* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %45

40:                                               ; preds = %25
  %41 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %42 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store %struct.crypto_skcipher* %41, %struct.crypto_skcipher** %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %36, %22
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.skcipher_instance* @skcipher_alg_instance(%struct.crypto_skcipher*) #1

declare dso_local %struct.essiv_instance_ctx* @skcipher_instance_ctx(%struct.skcipher_instance*) #1

declare dso_local %struct.essiv_tfm_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local %struct.crypto_skcipher* @crypto_spawn_skcipher(i32*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_set_reqsize(%struct.crypto_skcipher*, i64) #1

declare dso_local i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @essiv_init_tfm(%struct.essiv_instance_ctx*, %struct.essiv_tfm_ctx*) #1

declare dso_local i32 @crypto_free_skcipher(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
