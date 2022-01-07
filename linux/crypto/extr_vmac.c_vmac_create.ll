; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_vmac.c_vmac_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_vmac.c_vmac_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.shash_instance = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }
%struct.crypto_alg = type { i64, %struct.TYPE_4__, i32, i32 }

@CRYPTO_ALG_TYPE_SHASH = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_CIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VMAC_NONCEBYTES = common dso_local global i64 0, align 8
@vmac_init_tfm = common dso_local global i32 0, align 4
@vmac_exit_tfm = common dso_local global i32 0, align 4
@VMAC_TAG_LEN = common dso_local global i32 0, align 4
@vmac_init = common dso_local global i32 0, align 4
@vmac_update = common dso_local global i32 0, align 4
@vmac_final = common dso_local global i32 0, align 4
@vmac_setkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @vmac_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmac_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
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
  br label %140

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
  br label %140

30:                                               ; preds = %16
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %34 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VMAC_NONCEBYTES, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %135

39:                                               ; preds = %30
  %40 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %41 = getelementptr inbounds %struct.crypto_template, %struct.crypto_template* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %44 = bitcast %struct.crypto_alg* %43 to %struct.shash_instance*
  %45 = call %struct.shash_instance* @shash_alloc_instance(i32 %42, %struct.shash_instance* %44)
  store %struct.shash_instance* %45, %struct.shash_instance** %6, align 8
  %46 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %47 = call i32 @PTR_ERR(%struct.shash_instance* %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %49 = call i64 @IS_ERR(%struct.shash_instance* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %135

52:                                               ; preds = %39
  %53 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %54 = call i32 @shash_instance_ctx(%struct.shash_instance* %53)
  %55 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %56 = bitcast %struct.crypto_alg* %55 to %struct.shash_instance*
  %57 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %58 = call i32 @shash_crypto_instance(%struct.shash_instance* %57)
  %59 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %60 = call i32 @crypto_init_spawn(i32 %54, %struct.shash_instance* %56, i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %130

64:                                               ; preds = %52
  %65 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %66 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %69 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 5
  store i32 %67, i32* %71, align 8
  %72 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %73 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %76 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i64 %74, i64* %78, align 8
  %79 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %80 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %83 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  store i32 %81, i32* %85, align 4
  %86 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %87 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 4, i32* %89, align 8
  %90 = load i32, i32* @vmac_init_tfm, align 4
  %91 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %92 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  store i32 %90, i32* %94, align 8
  %95 = load i32, i32* @vmac_exit_tfm, align 4
  %96 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %97 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store i32 %95, i32* %99, align 4
  %100 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %101 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 4, i32* %102, align 8
  %103 = load i32, i32* @VMAC_TAG_LEN, align 4
  %104 = sdiv i32 %103, 8
  %105 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %106 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* @vmac_init, align 4
  %109 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %110 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @vmac_update, align 4
  %113 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %114 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  store i32 %112, i32* %115, align 8
  %116 = load i32, i32* @vmac_final, align 4
  %117 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %118 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* @vmac_setkey, align 4
  %121 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %122 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 8
  %124 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %125 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %126 = call i32 @shash_register_instance(%struct.crypto_template* %124, %struct.shash_instance* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %64
  br label %130

130:                                              ; preds = %129, %63
  %131 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %132 = call i32 @shash_crypto_instance(%struct.shash_instance* %131)
  %133 = call i32 @shash_free_instance(i32 %132)
  br label %134

134:                                              ; preds = %130, %64
  br label %135

135:                                              ; preds = %134, %51, %38
  %136 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %137 = bitcast %struct.crypto_alg* %136 to %struct.shash_instance*
  %138 = call i32 @crypto_mod_put(%struct.shash_instance* %137)
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %135, %26, %14
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @crypto_check_attr_type(%struct.rtattr**, i32) #1

declare dso_local %struct.shash_instance* @crypto_get_attr_alg(%struct.rtattr**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.shash_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.shash_instance*) #1

declare dso_local %struct.shash_instance* @shash_alloc_instance(i32, %struct.shash_instance*) #1

declare dso_local i32 @crypto_init_spawn(i32, %struct.shash_instance*, i32, i32) #1

declare dso_local i32 @shash_instance_ctx(%struct.shash_instance*) #1

declare dso_local i32 @shash_crypto_instance(%struct.shash_instance*) #1

declare dso_local i32 @shash_register_instance(%struct.crypto_template*, %struct.shash_instance*) #1

declare dso_local i32 @shash_free_instance(i32) #1

declare dso_local i32 @crypto_mod_put(%struct.shash_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
