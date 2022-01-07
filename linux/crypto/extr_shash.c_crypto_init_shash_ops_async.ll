; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_shash.c_crypto_init_shash_ops_async.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_shash.c_crypto_init_shash_ops_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32, %struct.crypto_alg* }
%struct.crypto_alg = type { i32 }
%struct.shash_alg = type { i32 }
%struct.crypto_ahash = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_shash = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@crypto_shash_type = common dso_local global i32 0, align 4
@crypto_exit_shash_ops_async = common dso_local global i32 0, align 4
@shash_async_init = common dso_local global i32 0, align 4
@shash_async_update = common dso_local global i32 0, align 4
@shash_async_final = common dso_local global i32 0, align 4
@shash_async_finup = common dso_local global i32 0, align 4
@shash_async_digest = common dso_local global i32 0, align 4
@shash_async_setkey = common dso_local global i32 0, align 4
@CRYPTO_TFM_NEED_KEY = common dso_local global i32 0, align 4
@shash_async_export = common dso_local global i32 0, align 4
@shash_async_import = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_init_shash_ops_async(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca %struct.shash_alg*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca %struct.crypto_shash**, align 8
  %8 = alloca %struct.crypto_shash*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %10 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %9, i32 0, i32 1
  %11 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  store %struct.crypto_alg* %11, %struct.crypto_alg** %4, align 8
  %12 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %13 = call %struct.shash_alg* @__crypto_shash_alg(%struct.crypto_alg* %12)
  store %struct.shash_alg* %13, %struct.shash_alg** %5, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %15 = call %struct.crypto_ahash* @__crypto_ahash_cast(%struct.crypto_tfm* %14)
  store %struct.crypto_ahash* %15, %struct.crypto_ahash** %6, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %17 = call %struct.crypto_shash** @crypto_tfm_ctx(%struct.crypto_tfm* %16)
  store %struct.crypto_shash** %17, %struct.crypto_shash*** %7, align 8
  %18 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %19 = call i32 @crypto_mod_get(%struct.crypto_alg* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %81

24:                                               ; preds = %1
  %25 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %26 = call %struct.crypto_shash* @crypto_create_tfm(%struct.crypto_alg* %25, i32* @crypto_shash_type)
  store %struct.crypto_shash* %26, %struct.crypto_shash** %8, align 8
  %27 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %28 = call i64 @IS_ERR(%struct.crypto_shash* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %32 = call i32 @crypto_mod_put(%struct.crypto_alg* %31)
  %33 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %34 = call i32 @PTR_ERR(%struct.crypto_shash* %33)
  store i32 %34, i32* %2, align 4
  br label %81

35:                                               ; preds = %24
  %36 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %37 = load %struct.crypto_shash**, %struct.crypto_shash*** %7, align 8
  store %struct.crypto_shash* %36, %struct.crypto_shash** %37, align 8
  %38 = load i32, i32* @crypto_exit_shash_ops_async, align 4
  %39 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %40 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @shash_async_init, align 4
  %42 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %43 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @shash_async_update, align 4
  %45 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %46 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @shash_async_final, align 4
  %48 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %49 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @shash_async_finup, align 4
  %51 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %52 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @shash_async_digest, align 4
  %54 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %55 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.shash_alg*, %struct.shash_alg** %5, align 8
  %57 = call i64 @crypto_shash_alg_has_setkey(%struct.shash_alg* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %35
  %60 = load i32, i32* @shash_async_setkey, align 4
  %61 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %62 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %35
  %64 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %65 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %66 = call i32 @crypto_shash_get_flags(%struct.crypto_shash* %65)
  %67 = load i32, i32* @CRYPTO_TFM_NEED_KEY, align 4
  %68 = and i32 %66, %67
  %69 = call i32 @crypto_ahash_set_flags(%struct.crypto_ahash* %64, i32 %68)
  %70 = load i32, i32* @shash_async_export, align 4
  %71 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %72 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @shash_async_import, align 4
  %74 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %75 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %77 = call i64 @crypto_shash_descsize(%struct.crypto_shash* %76)
  %78 = add i64 4, %77
  %79 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %80 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %63, %30, %21
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.shash_alg* @__crypto_shash_alg(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_ahash* @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_shash** @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_mod_get(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_shash* @crypto_create_tfm(%struct.crypto_alg*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_alg_has_setkey(%struct.shash_alg*) #1

declare dso_local i32 @crypto_ahash_set_flags(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @crypto_shash_get_flags(%struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_descsize(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
