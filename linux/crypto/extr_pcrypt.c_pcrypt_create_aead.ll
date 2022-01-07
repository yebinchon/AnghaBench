; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_create_aead.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_create_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.pcrypt_instance_ctx = type { i32 }
%struct.crypto_attr_type = type opaque
%struct.aead_instance = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.aead_alg = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@pcrypt_aead_init_tfm = common dso_local global i32 0, align 4
@pcrypt_aead_exit_tfm = common dso_local global i32 0, align 4
@pcrypt_aead_setkey = common dso_local global i32 0, align 4
@pcrypt_aead_setauthsize = common dso_local global i32 0, align 4
@pcrypt_aead_encrypt = common dso_local global i32 0, align 4
@pcrypt_aead_decrypt = common dso_local global i32 0, align 4
@pcrypt_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**, i32, i32)* @pcrypt_create_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcrypt_create_aead(%struct.crypto_template* %0, %struct.rtattr** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_template*, align 8
  %7 = alloca %struct.rtattr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pcrypt_instance_ctx*, align 8
  %11 = alloca %struct.crypto_attr_type*, align 8
  %12 = alloca %struct.aead_instance*, align 8
  %13 = alloca %struct.aead_alg*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %6, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.rtattr**, %struct.rtattr*** %7, align 8
  %17 = call i8* @crypto_get_attr_type(%struct.rtattr** %16)
  %18 = bitcast i8* %17 to %struct.crypto_attr_type*
  store %struct.crypto_attr_type* %18, %struct.crypto_attr_type** %11, align 8
  %19 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %11, align 8
  %20 = bitcast %struct.crypto_attr_type* %19 to i8*
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %11, align 8
  %25 = bitcast %struct.crypto_attr_type* %24 to i8*
  %26 = call i32 @PTR_ERR(i8* %25)
  store i32 %26, i32* %5, align 4
  br label %136

27:                                               ; preds = %4
  %28 = load %struct.rtattr**, %struct.rtattr*** %7, align 8
  %29 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %28, i64 1
  %30 = load %struct.rtattr*, %struct.rtattr** %29, align 8
  %31 = call i8* @crypto_attr_alg_name(%struct.rtattr* %30)
  store i8* %31, i8** %14, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = call i64 @IS_ERR(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @PTR_ERR(i8* %36)
  store i32 %37, i32* %5, align 4
  br label %136

38:                                               ; preds = %27
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.aead_instance* @kzalloc(i32 48, i32 %39)
  store %struct.aead_instance* %40, %struct.aead_instance** %12, align 8
  %41 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %42 = icmp ne %struct.aead_instance* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %136

46:                                               ; preds = %38
  %47 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %48 = call %struct.pcrypt_instance_ctx* @aead_instance_ctx(%struct.aead_instance* %47)
  store %struct.pcrypt_instance_ctx* %48, %struct.pcrypt_instance_ctx** %10, align 8
  %49 = load %struct.pcrypt_instance_ctx*, %struct.pcrypt_instance_ctx** %10, align 8
  %50 = getelementptr inbounds %struct.pcrypt_instance_ctx, %struct.pcrypt_instance_ctx* %49, i32 0, i32 0
  %51 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %52 = call i32 @aead_crypto_instance(%struct.aead_instance* %51)
  %53 = call i32 @crypto_set_aead_spawn(i32* %50, i32 %52)
  %54 = load %struct.pcrypt_instance_ctx*, %struct.pcrypt_instance_ctx** %10, align 8
  %55 = getelementptr inbounds %struct.pcrypt_instance_ctx, %struct.pcrypt_instance_ctx* %54, i32 0, i32 0
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @crypto_grab_aead(i32* %55, i8* %56, i32 0, i32 0)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %133

61:                                               ; preds = %46
  %62 = load %struct.pcrypt_instance_ctx*, %struct.pcrypt_instance_ctx** %10, align 8
  %63 = getelementptr inbounds %struct.pcrypt_instance_ctx, %struct.pcrypt_instance_ctx* %62, i32 0, i32 0
  %64 = call %struct.aead_alg* @crypto_spawn_aead_alg(i32* %63)
  store %struct.aead_alg* %64, %struct.aead_alg** %13, align 8
  %65 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %66 = call i32 @aead_crypto_instance(%struct.aead_instance* %65)
  %67 = load %struct.aead_alg*, %struct.aead_alg** %13, align 8
  %68 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %67, i32 0, i32 0
  %69 = call i32 @pcrypt_init_instance(i32 %66, i32* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %129

73:                                               ; preds = %61
  %74 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %75 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %76 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  %79 = load %struct.aead_alg*, %struct.aead_alg** %13, align 8
  %80 = call i32 @crypto_aead_alg_ivsize(%struct.aead_alg* %79)
  %81 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %82 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 8
  store i32 %80, i32* %83, align 4
  %84 = load %struct.aead_alg*, %struct.aead_alg** %13, align 8
  %85 = call i32 @crypto_aead_alg_maxauthsize(%struct.aead_alg* %84)
  %86 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %87 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 7
  store i32 %85, i32* %88, align 4
  %89 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %90 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 4, i32* %92, align 4
  %93 = load i32, i32* @pcrypt_aead_init_tfm, align 4
  %94 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %95 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 5
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @pcrypt_aead_exit_tfm, align 4
  %98 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %99 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @pcrypt_aead_setkey, align 4
  %102 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %103 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @pcrypt_aead_setauthsize, align 4
  %106 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %107 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @pcrypt_aead_encrypt, align 4
  %110 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %111 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @pcrypt_aead_decrypt, align 4
  %114 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %115 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @pcrypt_free, align 4
  %118 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %119 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.crypto_template*, %struct.crypto_template** %6, align 8
  %121 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %122 = call i32 @aead_register_instance(%struct.crypto_template* %120, %struct.aead_instance* %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %73
  br label %129

126:                                              ; preds = %73
  br label %127

127:                                              ; preds = %133, %126
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %5, align 4
  br label %136

129:                                              ; preds = %125, %72
  %130 = load %struct.pcrypt_instance_ctx*, %struct.pcrypt_instance_ctx** %10, align 8
  %131 = getelementptr inbounds %struct.pcrypt_instance_ctx, %struct.pcrypt_instance_ctx* %130, i32 0, i32 0
  %132 = call i32 @crypto_drop_aead(i32* %131)
  br label %133

133:                                              ; preds = %129, %60
  %134 = load %struct.aead_instance*, %struct.aead_instance** %12, align 8
  %135 = call i32 @kfree(%struct.aead_instance* %134)
  br label %127

136:                                              ; preds = %127, %43, %35, %23
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i8* @crypto_get_attr_type(%struct.rtattr**) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @crypto_attr_alg_name(%struct.rtattr*) #1

declare dso_local %struct.aead_instance* @kzalloc(i32, i32) #1

declare dso_local %struct.pcrypt_instance_ctx* @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local i32 @crypto_set_aead_spawn(i32*, i32) #1

declare dso_local i32 @aead_crypto_instance(%struct.aead_instance*) #1

declare dso_local i32 @crypto_grab_aead(i32*, i8*, i32, i32) #1

declare dso_local %struct.aead_alg* @crypto_spawn_aead_alg(i32*) #1

declare dso_local i32 @pcrypt_init_instance(i32, i32*) #1

declare dso_local i32 @crypto_aead_alg_ivsize(%struct.aead_alg*) #1

declare dso_local i32 @crypto_aead_alg_maxauthsize(%struct.aead_alg*) #1

declare dso_local i32 @aead_register_instance(%struct.crypto_template*, %struct.aead_instance*) #1

declare dso_local i32 @crypto_drop_aead(i32*) #1

declare dso_local i32 @kfree(%struct.aead_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
