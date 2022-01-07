; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecb.c_crypto_ecb_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecb.c_crypto_ecb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.skcipher_instance = type { i32 (%struct.skcipher_instance*)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.crypto_alg = type { i32 }

@crypto_ecb_encrypt = common dso_local global i32 0, align 4
@crypto_ecb_decrypt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @crypto_ecb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ecb_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_template*, align 8
  %5 = alloca %struct.rtattr**, align 8
  %6 = alloca %struct.skcipher_instance*, align 8
  %7 = alloca %struct.crypto_alg*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %4, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %5, align 8
  %9 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %10 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %11 = call %struct.skcipher_instance* @skcipher_alloc_instance_simple(%struct.crypto_template* %9, %struct.rtattr** %10, %struct.crypto_alg** %7)
  store %struct.skcipher_instance* %11, %struct.skcipher_instance** %6, align 8
  %12 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %13 = call i64 @IS_ERR(%struct.skcipher_instance* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.skcipher_instance* %16)
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %20 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @crypto_ecb_encrypt, align 4
  %23 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %24 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @crypto_ecb_decrypt, align 4
  %27 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %28 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %31 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %32 = call i32 @skcipher_register_instance(%struct.crypto_template* %30, %struct.skcipher_instance* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %18
  %36 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %37 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %36, i32 0, i32 0
  %38 = load i32 (%struct.skcipher_instance*)*, i32 (%struct.skcipher_instance*)** %37, align 8
  %39 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %40 = call i32 %38(%struct.skcipher_instance* %39)
  br label %41

41:                                               ; preds = %35, %18
  %42 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %43 = call i32 @crypto_mod_put(%struct.crypto_alg* %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.skcipher_instance* @skcipher_alloc_instance_simple(%struct.crypto_template*, %struct.rtattr**, %struct.crypto_alg**) #1

declare dso_local i64 @IS_ERR(%struct.skcipher_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.skcipher_instance*) #1

declare dso_local i32 @skcipher_register_instance(%struct.crypto_template*, %struct.skcipher_instance*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
