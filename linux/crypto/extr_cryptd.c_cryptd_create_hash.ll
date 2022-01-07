; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_create_hash.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_create_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.cryptd_queue = type { i32 }
%struct.hashd_instance_ctx = type { i32, %struct.cryptd_queue* }
%struct.ahash_instance = type { %struct.TYPE_6__, i32, i32, %struct.crypto_alg }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.crypto_alg = type { i32 }
%struct.shash_alg = type { %struct.TYPE_6__, i32, i32, %struct.crypto_alg }

@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_ALG_INTERNAL = common dso_local global i32 0, align 4
@CRYPTO_ALG_OPTIONAL_KEY = common dso_local global i32 0, align 4
@cryptd_hash_init_tfm = common dso_local global i32 0, align 4
@cryptd_hash_exit_tfm = common dso_local global i32 0, align 4
@cryptd_hash_init_enqueue = common dso_local global i32 0, align 4
@cryptd_hash_update_enqueue = common dso_local global i32 0, align 4
@cryptd_hash_final_enqueue = common dso_local global i32 0, align 4
@cryptd_hash_finup_enqueue = common dso_local global i32 0, align 4
@cryptd_hash_export = common dso_local global i32 0, align 4
@cryptd_hash_import = common dso_local global i32 0, align 4
@cryptd_hash_setkey = common dso_local global i32 0, align 4
@cryptd_hash_digest_enqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**, %struct.cryptd_queue*)* @cryptd_create_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptd_create_hash(%struct.crypto_template* %0, %struct.rtattr** %1, %struct.cryptd_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_template*, align 8
  %6 = alloca %struct.rtattr**, align 8
  %7 = alloca %struct.cryptd_queue*, align 8
  %8 = alloca %struct.hashd_instance_ctx*, align 8
  %9 = alloca %struct.ahash_instance*, align 8
  %10 = alloca %struct.shash_alg*, align 8
  %11 = alloca %struct.crypto_alg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %5, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %6, align 8
  store %struct.cryptd_queue* %2, %struct.cryptd_queue** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.rtattr**, %struct.rtattr*** %6, align 8
  %16 = call i32 @cryptd_check_internal(%struct.rtattr** %15, i32* %12, i32* %13)
  %17 = load %struct.rtattr**, %struct.rtattr*** %6, align 8
  %18 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %17, i64 1
  %19 = load %struct.rtattr*, %struct.rtattr** %18, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call %struct.shash_alg* @shash_attr_alg(%struct.rtattr* %19, i32 %20, i32 %21)
  store %struct.shash_alg* %22, %struct.shash_alg** %10, align 8
  %23 = load %struct.shash_alg*, %struct.shash_alg** %10, align 8
  %24 = call i64 @IS_ERR(%struct.shash_alg* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.shash_alg*, %struct.shash_alg** %10, align 8
  %28 = call i32 @PTR_ERR(%struct.shash_alg* %27)
  store i32 %28, i32* %4, align 4
  br label %163

29:                                               ; preds = %3
  %30 = load %struct.shash_alg*, %struct.shash_alg** %10, align 8
  %31 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %30, i32 0, i32 3
  store %struct.crypto_alg* %31, %struct.crypto_alg** %11, align 8
  %32 = load %struct.crypto_alg*, %struct.crypto_alg** %11, align 8
  %33 = call i32 (...) @ahash_instance_headroom()
  %34 = call %struct.shash_alg* @cryptd_alloc_instance(%struct.crypto_alg* %32, i32 %33, i32 16)
  %35 = bitcast %struct.shash_alg* %34 to %struct.ahash_instance*
  store %struct.ahash_instance* %35, %struct.ahash_instance** %9, align 8
  %36 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %37 = bitcast %struct.ahash_instance* %36 to %struct.shash_alg*
  %38 = call i32 @PTR_ERR(%struct.shash_alg* %37)
  store i32 %38, i32* %14, align 4
  %39 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %40 = bitcast %struct.ahash_instance* %39 to %struct.shash_alg*
  %41 = call i64 @IS_ERR(%struct.shash_alg* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %159

44:                                               ; preds = %29
  %45 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %46 = bitcast %struct.ahash_instance* %45 to %struct.shash_alg*
  %47 = call %struct.hashd_instance_ctx* @ahash_instance_ctx(%struct.shash_alg* %46)
  store %struct.hashd_instance_ctx* %47, %struct.hashd_instance_ctx** %8, align 8
  %48 = load %struct.cryptd_queue*, %struct.cryptd_queue** %7, align 8
  %49 = load %struct.hashd_instance_ctx*, %struct.hashd_instance_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.hashd_instance_ctx, %struct.hashd_instance_ctx* %49, i32 0, i32 1
  store %struct.cryptd_queue* %48, %struct.cryptd_queue** %50, align 8
  %51 = load %struct.hashd_instance_ctx*, %struct.hashd_instance_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.hashd_instance_ctx, %struct.hashd_instance_ctx* %51, i32 0, i32 0
  %53 = load %struct.shash_alg*, %struct.shash_alg** %10, align 8
  %54 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %55 = bitcast %struct.ahash_instance* %54 to %struct.shash_alg*
  %56 = call i32 @ahash_crypto_instance(%struct.shash_alg* %55)
  %57 = call i32 @crypto_init_shash_spawn(i32* %52, %struct.shash_alg* %53, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %154

61:                                               ; preds = %44
  %62 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %63 = load %struct.crypto_alg*, %struct.crypto_alg** %11, align 8
  %64 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CRYPTO_ALG_INTERNAL, align 4
  %67 = load i32, i32* @CRYPTO_ALG_OPTIONAL_KEY, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = or i32 %62, %69
  %71 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %72 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %70, i32* %75, align 4
  %76 = load %struct.shash_alg*, %struct.shash_alg** %10, align 8
  %77 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %80 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 4
  %83 = load %struct.shash_alg*, %struct.shash_alg** %10, align 8
  %84 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %87 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 4
  %90 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %91 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i32 4, i32* %94, align 4
  %95 = load i32, i32* @cryptd_hash_init_tfm, align 4
  %96 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %97 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  store i32 %95, i32* %100, align 4
  %101 = load i32, i32* @cryptd_hash_exit_tfm, align 4
  %102 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %103 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %101, i32* %106, align 4
  %107 = load i32, i32* @cryptd_hash_init_enqueue, align 4
  %108 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %109 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 7
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @cryptd_hash_update_enqueue, align 4
  %112 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %113 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 6
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* @cryptd_hash_final_enqueue, align 4
  %116 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %117 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 5
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* @cryptd_hash_finup_enqueue, align 4
  %120 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %121 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @cryptd_hash_export, align 4
  %124 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %125 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @cryptd_hash_import, align 4
  %128 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %129 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 4
  %131 = load %struct.shash_alg*, %struct.shash_alg** %10, align 8
  %132 = call i64 @crypto_shash_alg_has_setkey(%struct.shash_alg* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %61
  %135 = load i32, i32* @cryptd_hash_setkey, align 4
  %136 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %137 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %61
  %140 = load i32, i32* @cryptd_hash_digest_enqueue, align 4
  %141 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %142 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 4
  %144 = load %struct.crypto_template*, %struct.crypto_template** %5, align 8
  %145 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %146 = bitcast %struct.ahash_instance* %145 to %struct.shash_alg*
  %147 = call i32 @ahash_register_instance(%struct.crypto_template* %144, %struct.shash_alg* %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %139
  %151 = load %struct.hashd_instance_ctx*, %struct.hashd_instance_ctx** %8, align 8
  %152 = getelementptr inbounds %struct.hashd_instance_ctx, %struct.hashd_instance_ctx* %151, i32 0, i32 0
  %153 = call i32 @crypto_drop_shash(i32* %152)
  br label %154

154:                                              ; preds = %150, %60
  %155 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %156 = bitcast %struct.ahash_instance* %155 to %struct.shash_alg*
  %157 = call i32 @kfree(%struct.shash_alg* %156)
  br label %158

158:                                              ; preds = %154, %139
  br label %159

159:                                              ; preds = %158, %43
  %160 = load %struct.crypto_alg*, %struct.crypto_alg** %11, align 8
  %161 = call i32 @crypto_mod_put(%struct.crypto_alg* %160)
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %159, %26
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @cryptd_check_internal(%struct.rtattr**, i32*, i32*) #1

declare dso_local %struct.shash_alg* @shash_attr_alg(%struct.rtattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.shash_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.shash_alg*) #1

declare dso_local %struct.shash_alg* @cryptd_alloc_instance(%struct.crypto_alg*, i32, i32) #1

declare dso_local i32 @ahash_instance_headroom(...) #1

declare dso_local %struct.hashd_instance_ctx* @ahash_instance_ctx(%struct.shash_alg*) #1

declare dso_local i32 @crypto_init_shash_spawn(i32*, %struct.shash_alg*, i32) #1

declare dso_local i32 @ahash_crypto_instance(%struct.shash_alg*) #1

declare dso_local i64 @crypto_shash_alg_has_setkey(%struct.shash_alg*) #1

declare dso_local i32 @ahash_register_instance(%struct.crypto_template*, %struct.shash_alg*) #1

declare dso_local i32 @crypto_drop_shash(i32*) #1

declare dso_local i32 @kfree(%struct.shash_alg*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
