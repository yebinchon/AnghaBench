; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_ptls_openssl_create_key_exchange.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_ptls_openssl_create_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ptls_openssl_secp256r1 = common dso_local global i32 0, align 4
@PTLS_ERROR_INCOMPATIBLE_KEY = common dso_local global i32 0, align 4
@ptls_openssl_secp384r1 = common dso_local global i32 0, align 4
@ptls_openssl_secp521r1 = common dso_local global i32 0, align 4
@ptls_openssl_x25519 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptls_openssl_create_key_exchange(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @EVP_PKEY_id(i32* %10)
  store i32 %11, i32* %7, align 4
  switch i32 %11, label %34 [
    i32 132, label %12
  ]

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @EVP_PKEY_get1_EC_KEY(i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @EC_KEY_get0_group(i32* %15)
  %17 = call i32 @EC_GROUP_get_curve_name(i32 %16)
  switch i32 %17, label %19 [
    i32 130, label %18
  ]

18:                                               ; preds = %12
  store i32* @ptls_openssl_secp256r1, i32** %9, align 8
  br label %23

19:                                               ; preds = %12
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @EC_KEY_free(i32* %20)
  %22 = load i32, i32* @PTLS_ERROR_INCOMPATIBLE_KEY, align 4
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %18
  %24 = load i32*, i32** %9, align 8
  %25 = load i32**, i32*** %4, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @x9_62_init_key(i32* %24, i32** %25, i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @EC_KEY_free(i32* %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @PTLS_ERROR_INCOMPATIBLE_KEY, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %33, %29, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @EVP_PKEY_id(i32*) #1

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32*) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32) #1

declare dso_local i32 @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @x9_62_init_key(i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
