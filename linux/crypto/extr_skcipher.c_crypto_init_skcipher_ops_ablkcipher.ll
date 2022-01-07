; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_init_skcipher_ops_ablkcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_init_skcipher_ops_ablkcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32, %struct.crypto_alg* }
%struct.crypto_alg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_skcipher = type { i32, i64, i32, i32, i32, i32 }
%struct.crypto_ablkcipher = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@crypto_exit_skcipher_ops_ablkcipher = common dso_local global i32 0, align 4
@skcipher_setkey_ablkcipher = common dso_local global i32 0, align 4
@skcipher_encrypt_ablkcipher = common dso_local global i32 0, align 4
@skcipher_decrypt_ablkcipher = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_init_skcipher_ops_ablkcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_init_skcipher_ops_ablkcipher(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca %struct.crypto_ablkcipher**, align 8
  %7 = alloca %struct.crypto_ablkcipher*, align 8
  %8 = alloca %struct.crypto_tfm*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %10 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %9, i32 0, i32 1
  %11 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  store %struct.crypto_alg* %11, %struct.crypto_alg** %4, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %13 = call %struct.crypto_skcipher* @__crypto_skcipher_cast(%struct.crypto_tfm* %12)
  store %struct.crypto_skcipher* %13, %struct.crypto_skcipher** %5, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %15 = call %struct.crypto_ablkcipher** @crypto_tfm_ctx(%struct.crypto_tfm* %14)
  store %struct.crypto_ablkcipher** %15, %struct.crypto_ablkcipher*** %6, align 8
  %16 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %17 = call i32 @crypto_mod_get(%struct.crypto_alg* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %67

22:                                               ; preds = %1
  %23 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %24 = call %struct.crypto_tfm* @__crypto_alloc_tfm(%struct.crypto_alg* %23, i32 0, i32 0)
  store %struct.crypto_tfm* %24, %struct.crypto_tfm** %8, align 8
  %25 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %26 = call i64 @IS_ERR(%struct.crypto_tfm* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %30 = call i32 @crypto_mod_put(%struct.crypto_alg* %29)
  %31 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.crypto_tfm* %31)
  store i32 %32, i32* %2, align 4
  br label %67

33:                                               ; preds = %22
  %34 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %35 = call %struct.crypto_ablkcipher* @__crypto_ablkcipher_cast(%struct.crypto_tfm* %34)
  store %struct.crypto_ablkcipher* %35, %struct.crypto_ablkcipher** %7, align 8
  %36 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %37 = load %struct.crypto_ablkcipher**, %struct.crypto_ablkcipher*** %6, align 8
  store %struct.crypto_ablkcipher* %36, %struct.crypto_ablkcipher** %37, align 8
  %38 = load i32, i32* @crypto_exit_skcipher_ops_ablkcipher, align 4
  %39 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %40 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @skcipher_setkey_ablkcipher, align 4
  %42 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %43 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @skcipher_encrypt_ablkcipher, align 4
  %45 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %46 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @skcipher_decrypt_ablkcipher, align 4
  %48 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %49 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %51 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %50)
  %52 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %53 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %55 = call i64 @crypto_ablkcipher_reqsize(%struct.crypto_ablkcipher* %54)
  %56 = add i64 %55, 4
  %57 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %58 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %60 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %64 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %66 = call i32 @skcipher_set_needkey(%struct.crypto_skcipher* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %33, %28, %19
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.crypto_skcipher* @__crypto_skcipher_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_ablkcipher** @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_mod_get(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_tfm* @__crypto_alloc_tfm(%struct.crypto_alg*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_ablkcipher* @__crypto_ablkcipher_cast(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i64 @crypto_ablkcipher_reqsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @skcipher_set_needkey(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
