; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ofb.c_crypto_ofb_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ofb.c_crypto_ofb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.skcipher_instance = type { i32 (%struct.skcipher_instance*)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.crypto_alg = type { i32 }

@crypto_ofb_crypt = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @crypto_ofb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ofb_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
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
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %20 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %24 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %27 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load i8*, i8** @crypto_ofb_crypt, align 8
  %30 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %31 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load i8*, i8** @crypto_ofb_crypt, align 8
  %34 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %35 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %38 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %39 = call i32 @skcipher_register_instance(%struct.crypto_template* %37, %struct.skcipher_instance* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %18
  %43 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %44 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %43, i32 0, i32 0
  %45 = load i32 (%struct.skcipher_instance*)*, i32 (%struct.skcipher_instance*)** %44, align 8
  %46 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %47 = call i32 %45(%struct.skcipher_instance* %46)
  br label %48

48:                                               ; preds = %42, %18
  %49 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %50 = call i32 @crypto_mod_put(%struct.crypto_alg* %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
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
