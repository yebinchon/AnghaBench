; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ctr.c_crypto_ctr_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ctr.c_crypto_ctr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.skcipher_instance = type { i32 (%struct.skcipher_instance*)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.crypto_alg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@crypto_ctr_crypt = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @crypto_ctr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ctr_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
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
  br label %69

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %22 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %59

26:                                               ; preds = %18
  %27 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %28 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %29, 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %59

33:                                               ; preds = %26
  %34 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %35 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %39 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %42 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i8*, i8** @crypto_ctr_crypt, align 8
  %45 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %46 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** @crypto_ctr_crypt, align 8
  %49 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %50 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %53 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %54 = call i32 @skcipher_register_instance(%struct.crypto_template* %52, %struct.skcipher_instance* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %33
  br label %59

58:                                               ; preds = %33
  br label %65

59:                                               ; preds = %57, %32, %25
  %60 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %61 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %60, i32 0, i32 0
  %62 = load i32 (%struct.skcipher_instance*)*, i32 (%struct.skcipher_instance*)** %61, align 8
  %63 = load %struct.skcipher_instance*, %struct.skcipher_instance** %6, align 8
  %64 = call i32 %62(%struct.skcipher_instance* %63)
  br label %65

65:                                               ; preds = %59, %58
  %66 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %67 = call i32 @crypto_mod_put(%struct.crypto_alg* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
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
