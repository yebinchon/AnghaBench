; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_alloc_instance_simple.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_alloc_instance_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_instance = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.crypto_alg = type { i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.crypto_attr_type = type { i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.crypto_spawn = type { i32 }

@CRYPTO_ALG_TYPE_SKCIPHER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_CIPHER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@skcipher_free_instance_simple = common dso_local global i32 0, align 4
@skcipher_setkey_simple = common dso_local global i32 0, align 4
@skcipher_init_tfm_simple = common dso_local global i32 0, align 4
@skcipher_exit_tfm_simple = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.skcipher_instance* @skcipher_alloc_instance_simple(%struct.crypto_template* %0, %struct.rtattr** %1, %struct.crypto_alg** %2) #0 {
  %4 = alloca %struct.skcipher_instance*, align 8
  %5 = alloca %struct.crypto_template*, align 8
  %6 = alloca %struct.rtattr**, align 8
  %7 = alloca %struct.crypto_alg**, align 8
  %8 = alloca %struct.crypto_attr_type*, align 8
  %9 = alloca %struct.crypto_alg*, align 8
  %10 = alloca %struct.skcipher_instance*, align 8
  %11 = alloca %struct.crypto_spawn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %5, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %6, align 8
  store %struct.crypto_alg** %2, %struct.crypto_alg*** %7, align 8
  %14 = load %struct.rtattr**, %struct.rtattr*** %6, align 8
  %15 = call %struct.crypto_attr_type* @crypto_get_attr_type(%struct.rtattr** %14)
  store %struct.crypto_attr_type* %15, %struct.crypto_attr_type** %8, align 8
  %16 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %8, align 8
  %17 = call i64 @IS_ERR(%struct.crypto_attr_type* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %8, align 8
  %21 = call %struct.skcipher_instance* @ERR_CAST(%struct.crypto_attr_type* %20)
  store %struct.skcipher_instance* %21, %struct.skcipher_instance** %4, align 8
  br label %167

22:                                               ; preds = %3
  %23 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %8, align 8
  %24 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CRYPTO_ALG_TYPE_SKCIPHER, align 4
  %27 = xor i32 %25, %26
  %28 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %8, align 8
  %29 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.skcipher_instance* @ERR_PTR(i32 %35)
  store %struct.skcipher_instance* %36, %struct.skcipher_instance** %4, align 8
  br label %167

37:                                               ; preds = %22
  %38 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %39 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %8, align 8
  %40 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %8, align 8
  %43 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %46 = call i32 @crypto_requires_off(i32 %41, i32 %44, i32 %45)
  %47 = or i32 %38, %46
  store i32 %47, i32* %12, align 4
  %48 = load %struct.rtattr**, %struct.rtattr*** %6, align 8
  %49 = load i32, i32* @CRYPTO_ALG_TYPE_CIPHER, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call %struct.crypto_attr_type* @crypto_get_attr_alg(%struct.rtattr** %48, i32 %49, i32 %50)
  %52 = bitcast %struct.crypto_attr_type* %51 to %struct.crypto_alg*
  store %struct.crypto_alg* %52, %struct.crypto_alg** %9, align 8
  %53 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %54 = bitcast %struct.crypto_alg* %53 to %struct.crypto_attr_type*
  %55 = call i64 @IS_ERR(%struct.crypto_attr_type* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %37
  %58 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %59 = bitcast %struct.crypto_alg* %58 to %struct.crypto_attr_type*
  %60 = call %struct.skcipher_instance* @ERR_CAST(%struct.crypto_attr_type* %59)
  store %struct.skcipher_instance* %60, %struct.skcipher_instance** %4, align 8
  br label %167

61:                                               ; preds = %37
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.skcipher_instance* @kzalloc(i32 48, i32 %62)
  store %struct.skcipher_instance* %63, %struct.skcipher_instance** %10, align 8
  %64 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %65 = icmp ne %struct.skcipher_instance* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %13, align 4
  br label %161

69:                                               ; preds = %61
  %70 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %71 = call %struct.crypto_spawn* @skcipher_instance_ctx(%struct.skcipher_instance* %70)
  store %struct.crypto_spawn* %71, %struct.crypto_spawn** %11, align 8
  %72 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %73 = call i32 @skcipher_crypto_instance(%struct.skcipher_instance* %72)
  %74 = load %struct.crypto_template*, %struct.crypto_template** %5, align 8
  %75 = getelementptr inbounds %struct.crypto_template, %struct.crypto_template* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %78 = bitcast %struct.crypto_alg* %77 to %struct.crypto_attr_type*
  %79 = call i32 @crypto_inst_setname(i32 %73, i32 %76, %struct.crypto_attr_type* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %158

83:                                               ; preds = %69
  %84 = load %struct.crypto_spawn*, %struct.crypto_spawn** %11, align 8
  %85 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %86 = bitcast %struct.crypto_alg* %85 to %struct.crypto_attr_type*
  %87 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %88 = call i32 @skcipher_crypto_instance(%struct.skcipher_instance* %87)
  %89 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %90 = call i32 @crypto_init_spawn(%struct.crypto_spawn* %84, %struct.crypto_attr_type* %86, i32 %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %158

94:                                               ; preds = %83
  %95 = load i32, i32* @skcipher_free_instance_simple, align 4
  %96 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %97 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %99 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %102 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  store i32 %100, i32* %104, align 4
  %105 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %106 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %109 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  store i32 %107, i32* %111, align 4
  %112 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %113 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %116 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 %114, i32* %118, align 4
  %119 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %120 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %124 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 6
  store i32 %122, i32* %125, align 4
  %126 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %127 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %131 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 5
  store i32 %129, i32* %132, align 4
  %133 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %134 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %137 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  store i32 %135, i32* %138, align 4
  %139 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %140 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store i32 4, i32* %142, align 4
  %143 = load i32, i32* @skcipher_setkey_simple, align 4
  %144 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %145 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* @skcipher_init_tfm_simple, align 4
  %148 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %149 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* @skcipher_exit_tfm_simple, align 4
  %152 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %153 = getelementptr inbounds %struct.skcipher_instance, %struct.skcipher_instance* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 4
  %155 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %156 = load %struct.crypto_alg**, %struct.crypto_alg*** %7, align 8
  store %struct.crypto_alg* %155, %struct.crypto_alg** %156, align 8
  %157 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  store %struct.skcipher_instance* %157, %struct.skcipher_instance** %4, align 8
  br label %167

158:                                              ; preds = %93, %82
  %159 = load %struct.skcipher_instance*, %struct.skcipher_instance** %10, align 8
  %160 = call i32 @kfree(%struct.skcipher_instance* %159)
  br label %161

161:                                              ; preds = %158, %66
  %162 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %163 = bitcast %struct.crypto_alg* %162 to %struct.crypto_attr_type*
  %164 = call i32 @crypto_mod_put(%struct.crypto_attr_type* %163)
  %165 = load i32, i32* %13, align 4
  %166 = call %struct.skcipher_instance* @ERR_PTR(i32 %165)
  store %struct.skcipher_instance* %166, %struct.skcipher_instance** %4, align 8
  br label %167

167:                                              ; preds = %161, %94, %57, %33, %19
  %168 = load %struct.skcipher_instance*, %struct.skcipher_instance** %4, align 8
  ret %struct.skcipher_instance* %168
}

declare dso_local %struct.crypto_attr_type* @crypto_get_attr_type(%struct.rtattr**) #1

declare dso_local i64 @IS_ERR(%struct.crypto_attr_type*) #1

declare dso_local %struct.skcipher_instance* @ERR_CAST(%struct.crypto_attr_type*) #1

declare dso_local %struct.skcipher_instance* @ERR_PTR(i32) #1

declare dso_local i32 @crypto_requires_off(i32, i32, i32) #1

declare dso_local %struct.crypto_attr_type* @crypto_get_attr_alg(%struct.rtattr**, i32, i32) #1

declare dso_local %struct.skcipher_instance* @kzalloc(i32, i32) #1

declare dso_local %struct.crypto_spawn* @skcipher_instance_ctx(%struct.skcipher_instance*) #1

declare dso_local i32 @crypto_inst_setname(i32, i32, %struct.crypto_attr_type*) #1

declare dso_local i32 @skcipher_crypto_instance(%struct.skcipher_instance*) #1

declare dso_local i32 @crypto_init_spawn(%struct.crypto_spawn*, %struct.crypto_attr_type*, i32, i32) #1

declare dso_local i32 @kfree(%struct.skcipher_instance*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_attr_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
