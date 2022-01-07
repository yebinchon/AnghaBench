; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_keywrap.c_crypto_kw_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_keywrap.c_crypto_kw_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.skcipher_instance = type { i32 (%struct.skcipher_instance*)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i8* }
%struct.crypto_alg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SEMIBSIZE = common dso_local global i8* null, align 8
@crypto_kw_encrypt = common dso_local global i32 0, align 4
@crypto_kw_decrypt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @crypto_kw_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_kw_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
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
  br label %66

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %22 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %56

27:                                               ; preds = %18
  %28 = load i8*, i8** @SEMIBSIZE, align 8
  %29 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %30 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i8* %28, i8** %32, align 8
  %33 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %34 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load i8*, i8** @SEMIBSIZE, align 8
  %38 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %39 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* @crypto_kw_encrypt, align 4
  %42 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %43 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @crypto_kw_decrypt, align 4
  %46 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %47 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %50 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %51 = call i32 @skcipher_register_instance(%struct.crypto_template* %49, %struct.skcipher_instance* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %27
  br label %56

55:                                               ; preds = %27
  br label %62

56:                                               ; preds = %54, %26
  %57 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %58 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %57, i32 0, i32 0
  %59 = load i32 (%struct.skcipher_instance*)*, i32 (%struct.skcipher_instance*)** %58, align 8
  %60 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %61 = call i32 %59(%struct.skcipher_instance* %60)
  br label %62

62:                                               ; preds = %56, %55
  %63 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %64 = call i32 @crypto_mod_put(%struct.crypto_alg* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
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
