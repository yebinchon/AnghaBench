; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cbc.c_crypto_cbc_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cbc.c_crypto_cbc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.skcipher_instance = type { i32 (%struct.skcipher_instance*)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.crypto_alg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@crypto_cbc_encrypt = common dso_local global i32 0, align 4
@crypto_cbc_decrypt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @crypto_cbc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_cbc_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
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
  br label %53

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %22 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @is_power_of_2(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %43

27:                                               ; preds = %18
  %28 = load i32, i32* @crypto_cbc_encrypt, align 4
  %29 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %30 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @crypto_cbc_decrypt, align 4
  %33 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %34 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %37 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %38 = call i32 @skcipher_register_instance(%struct.crypto_template* %36, %struct.skcipher_instance* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %43

42:                                               ; preds = %27
  br label %49

43:                                               ; preds = %41, %26
  %44 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %45 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %44, i32 0, i32 0
  %46 = load i32 (%struct.skcipher_instance*)*, i32 (%struct.skcipher_instance*)** %45, align 8
  %47 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %48 = call i32 %46(%struct.skcipher_instance* %47)
  br label %49

49:                                               ; preds = %43, %42
  %50 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %51 = call i32 @crypto_mod_put(%struct.crypto_alg* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.skcipher_instance* @skcipher_alloc_instance_simple(%struct.crypto_template*, %struct.rtattr**, %struct.crypto_alg**) #1

declare dso_local i64 @IS_ERR(%struct.skcipher_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.skcipher_instance*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @skcipher_register_instance(%struct.crypto_template*, %struct.skcipher_instance*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
