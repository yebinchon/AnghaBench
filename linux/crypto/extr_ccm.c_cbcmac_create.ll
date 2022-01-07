; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ccm.c_cbcmac_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ccm.c_cbcmac_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.shash_instance = type { %struct.TYPE_4__, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.crypto_alg = type { %struct.TYPE_4__, i64, i64, i32 }

@CRYPTO_ALG_TYPE_SHASH = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_CIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cbcmac\00", align 1
@cbcmac_init_tfm = common dso_local global i32 0, align 4
@cbcmac_exit_tfm = common dso_local global i32 0, align 4
@crypto_cbcmac_digest_init = common dso_local global i32 0, align 4
@crypto_cbcmac_digest_update = common dso_local global i32 0, align 4
@crypto_cbcmac_digest_final = common dso_local global i32 0, align 4
@crypto_cbcmac_digest_setkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @cbcmac_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbcmac_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_template*, align 8
  %5 = alloca %struct.rtattr**, align 8
  %6 = alloca %struct.shash_instance*, align 8
  %7 = alloca %struct.crypto_alg*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %4, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %5, align 8
  %9 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %10 = load i32, i32* @CRYPTO_ALG_TYPE_SHASH, align 4
  %11 = call i32 @crypto_check_attr_type(%struct.rtattr** %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %128

16:                                               ; preds = %2
  %17 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %18 = load i32, i32* @CRYPTO_ALG_TYPE_CIPHER, align 4
  %19 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %20 = call %struct.shash_instance* @crypto_get_attr_alg(%struct.rtattr** %17, i32 %18, i32 %19)
  %21 = bitcast %struct.shash_instance* %20 to %struct.crypto_alg*
  store %struct.crypto_alg* %21, %struct.crypto_alg** %7, align 8
  %22 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %23 = bitcast %struct.crypto_alg* %22 to %struct.shash_instance*
  %24 = call i64 @IS_ERR(%struct.shash_instance* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %28 = bitcast %struct.crypto_alg* %27 to %struct.shash_instance*
  %29 = call i32 @PTR_ERR(%struct.shash_instance* %28)
  store i32 %29, i32* %3, align 4
  br label %128

30:                                               ; preds = %16
  %31 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %32 = bitcast %struct.crypto_alg* %31 to %struct.shash_instance*
  %33 = call %struct.shash_instance* @shash_alloc_instance(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.shash_instance* %32)
  store %struct.shash_instance* %33, %struct.shash_instance** %6, align 8
  %34 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.shash_instance* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %37 = call i64 @IS_ERR(%struct.shash_instance* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %123

40:                                               ; preds = %30
  %41 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %42 = call i32 @shash_instance_ctx(%struct.shash_instance* %41)
  %43 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %44 = bitcast %struct.crypto_alg* %43 to %struct.shash_instance*
  %45 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %46 = call i32 @shash_crypto_instance(%struct.shash_instance* %45)
  %47 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %48 = call i32 @crypto_init_spawn(i32 %42, %struct.shash_instance* %44, i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %115

52:                                               ; preds = %40
  %53 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %54 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %57 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  store i32 %55, i32* %59, align 8
  %60 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %61 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %65 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %68 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  store i64 %66, i64* %69, align 8
  %70 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %71 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  %74 = call i64 @ALIGN(i32 4, i64 %73)
  %75 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %76 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %80 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  store i64 %78, i64* %81, align 8
  %82 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %83 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 4, i32* %85, align 4
  %86 = load i32, i32* @cbcmac_init_tfm, align 4
  %87 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %88 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* @cbcmac_exit_tfm, align 4
  %92 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %93 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  store i32 %91, i32* %95, align 8
  %96 = load i32, i32* @crypto_cbcmac_digest_init, align 4
  %97 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %98 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @crypto_cbcmac_digest_update, align 4
  %101 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %102 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* @crypto_cbcmac_digest_final, align 4
  %105 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %106 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* @crypto_cbcmac_digest_setkey, align 4
  %109 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %110 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %113 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %114 = call i32 @shash_register_instance(%struct.crypto_template* %112, %struct.shash_instance* %113)
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %52, %51
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %120 = call i32 @shash_crypto_instance(%struct.shash_instance* %119)
  %121 = call i32 @shash_free_instance(i32 %120)
  br label %122

122:                                              ; preds = %118, %115
  br label %123

123:                                              ; preds = %122, %39
  %124 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %125 = bitcast %struct.crypto_alg* %124 to %struct.shash_instance*
  %126 = call i32 @crypto_mod_put(%struct.shash_instance* %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %123, %26, %14
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @crypto_check_attr_type(%struct.rtattr**, i32) #1

declare dso_local %struct.shash_instance* @crypto_get_attr_alg(%struct.rtattr**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.shash_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.shash_instance*) #1

declare dso_local %struct.shash_instance* @shash_alloc_instance(i8*, %struct.shash_instance*) #1

declare dso_local i32 @crypto_init_spawn(i32, %struct.shash_instance*, i32, i32) #1

declare dso_local i32 @shash_instance_ctx(%struct.shash_instance*) #1

declare dso_local i32 @shash_crypto_instance(%struct.shash_instance*) #1

declare dso_local i64 @ALIGN(i32, i64) #1

declare dso_local i32 @shash_register_instance(%struct.crypto_template*, %struct.shash_instance*) #1

declare dso_local i32 @shash_free_instance(i32) #1

declare dso_local i32 @crypto_mod_put(%struct.shash_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
