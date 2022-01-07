; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_hmac.c_hmac_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_hmac.c_hmac_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.shash_instance = type { i32, i32, %struct.TYPE_4__, %struct.crypto_alg }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32 }
%struct.crypto_alg = type { i32, i64, i32 }
%struct.shash_alg = type { i32, i32, %struct.TYPE_4__, %struct.crypto_alg }

@CRYPTO_ALG_TYPE_SHASH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hmac\00", align 1
@hmac_init_tfm = common dso_local global i32 0, align 4
@hmac_exit_tfm = common dso_local global i32 0, align 4
@hmac_init = common dso_local global i32 0, align 4
@hmac_update = common dso_local global i32 0, align 4
@hmac_final = common dso_local global i32 0, align 4
@hmac_finup = common dso_local global i32 0, align 4
@hmac_export = common dso_local global i32 0, align 4
@hmac_import = common dso_local global i32 0, align 4
@hmac_setkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @hmac_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_template*, align 8
  %5 = alloca %struct.rtattr**, align 8
  %6 = alloca %struct.shash_instance*, align 8
  %7 = alloca %struct.crypto_alg*, align 8
  %8 = alloca %struct.shash_alg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %4, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %5, align 8
  %12 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %13 = load i32, i32* @CRYPTO_ALG_TYPE_SHASH, align 4
  %14 = call i32 @crypto_check_attr_type(%struct.rtattr** %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %182

19:                                               ; preds = %2
  %20 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %21 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %20, i64 1
  %22 = load %struct.rtattr*, %struct.rtattr** %21, align 8
  %23 = call %struct.shash_instance* @shash_attr_alg(%struct.rtattr* %22, i32 0, i32 0)
  %24 = bitcast %struct.shash_instance* %23 to %struct.shash_alg*
  store %struct.shash_alg* %24, %struct.shash_alg** %8, align 8
  %25 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %26 = bitcast %struct.shash_alg* %25 to %struct.shash_instance*
  %27 = call i64 @IS_ERR(%struct.shash_instance* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %31 = bitcast %struct.shash_alg* %30 to %struct.shash_instance*
  %32 = call i32 @PTR_ERR(%struct.shash_instance* %31)
  store i32 %32, i32* %3, align 4
  br label %182

33:                                               ; preds = %19
  %34 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %35 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %34, i32 0, i32 3
  store %struct.crypto_alg* %35, %struct.crypto_alg** %7, align 8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %39 = bitcast %struct.shash_alg* %38 to %struct.shash_instance*
  %40 = call i64 @crypto_shash_alg_has_setkey(%struct.shash_instance* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %178

43:                                               ; preds = %33
  %44 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %45 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %48 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %52 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %58 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %43
  br label %178

62:                                               ; preds = %55
  %63 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %64 = call %struct.shash_instance* @shash_alloc_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.crypto_alg* %63)
  store %struct.shash_instance* %64, %struct.shash_instance** %6, align 8
  %65 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %66 = call i32 @PTR_ERR(%struct.shash_instance* %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %68 = call i64 @IS_ERR(%struct.shash_instance* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %178

71:                                               ; preds = %62
  %72 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %73 = call i32 @shash_instance_ctx(%struct.shash_instance* %72)
  %74 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %75 = bitcast %struct.shash_alg* %74 to %struct.shash_instance*
  %76 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %77 = call i32 @shash_crypto_instance(%struct.shash_instance* %76)
  %78 = call i32 @crypto_init_shash_spawn(i32 %73, %struct.shash_instance* %75, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %173

82:                                               ; preds = %71
  %83 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %84 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %87 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 9
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  store i32 %85, i32* %89, align 8
  %90 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %91 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %94 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 8
  %97 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %98 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %101 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 4
  store i64 %99, i64* %103, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %106 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  %109 = call i32 @ALIGN(i32 %104, i64 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %112 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %116 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* %11, align 4
  %119 = mul nsw i32 %118, 2
  %120 = call i64 (...) @crypto_tfm_ctx_alignment()
  %121 = call i32 @ALIGN(i32 %119, i64 %120)
  %122 = sext i32 %121 to i64
  %123 = add i64 4, %122
  %124 = trunc i64 %123 to i32
  %125 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %126 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 4
  %129 = load i32, i32* @hmac_init_tfm, align 4
  %130 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %131 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 9
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  store i32 %129, i32* %133, align 4
  %134 = load i32, i32* @hmac_exit_tfm, align 4
  %135 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %136 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 9
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  store i32 %134, i32* %138, align 8
  %139 = load i32, i32* @hmac_init, align 4
  %140 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %141 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 8
  store i32 %139, i32* %142, align 8
  %143 = load i32, i32* @hmac_update, align 4
  %144 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %145 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 7
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* @hmac_final, align 4
  %148 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %149 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 6
  store i32 %147, i32* %150, align 8
  %151 = load i32, i32* @hmac_finup, align 4
  %152 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %153 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 5
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* @hmac_export, align 4
  %156 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %157 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  store i32 %155, i32* %158, align 8
  %159 = load i32, i32* @hmac_import, align 4
  %160 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %161 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 3
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* @hmac_setkey, align 4
  %164 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %165 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 8
  %167 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %168 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %169 = call i32 @shash_register_instance(%struct.crypto_template* %167, %struct.shash_instance* %168)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %82
  br label %173

173:                                              ; preds = %172, %81
  %174 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %175 = call i32 @shash_crypto_instance(%struct.shash_instance* %174)
  %176 = call i32 @shash_free_instance(i32 %175)
  br label %177

177:                                              ; preds = %173, %82
  br label %178

178:                                              ; preds = %177, %70, %61, %42
  %179 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %180 = call i32 @crypto_mod_put(%struct.crypto_alg* %179)
  %181 = load i32, i32* %9, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %178, %29, %17
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @crypto_check_attr_type(%struct.rtattr**, i32) #1

declare dso_local %struct.shash_instance* @shash_attr_alg(%struct.rtattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.shash_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.shash_instance*) #1

declare dso_local i64 @crypto_shash_alg_has_setkey(%struct.shash_instance*) #1

declare dso_local %struct.shash_instance* @shash_alloc_instance(i8*, %struct.crypto_alg*) #1

declare dso_local i32 @crypto_init_shash_spawn(i32, %struct.shash_instance*, i32) #1

declare dso_local i32 @shash_instance_ctx(%struct.shash_instance*) #1

declare dso_local i32 @shash_crypto_instance(%struct.shash_instance*) #1

declare dso_local i32 @ALIGN(i32, i64) #1

declare dso_local i64 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i32 @shash_register_instance(%struct.crypto_template*, %struct.shash_instance*) #1

declare dso_local i32 @shash_free_instance(i32) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
