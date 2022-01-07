; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.crypto_attr_type = type { i32, i32 }

@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @pcrypt_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcrypt_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_template*, align 8
  %5 = alloca %struct.rtattr**, align 8
  %6 = alloca %struct.crypto_attr_type*, align 8
  store %struct.crypto_template* %0, %struct.crypto_template** %4, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %5, align 8
  %7 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %8 = call %struct.crypto_attr_type* @crypto_get_attr_type(%struct.rtattr** %7)
  store %struct.crypto_attr_type* %8, %struct.crypto_attr_type** %6, align 8
  %9 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %6, align 8
  %10 = call i64 @IS_ERR(%struct.crypto_attr_type* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %6, align 8
  %14 = call i32 @PTR_ERR(%struct.crypto_attr_type* %13)
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %6, align 8
  %17 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %6, align 8
  %20 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %35 [
    i32 128, label %25
  ]

25:                                               ; preds = %15
  %26 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %27 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %28 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %6, align 8
  %29 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %6, align 8
  %32 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pcrypt_create_aead(%struct.crypto_template* %26, %struct.rtattr** %27, i32 %30, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %15
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %25, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.crypto_attr_type* @crypto_get_attr_type(%struct.rtattr**) #1

declare dso_local i64 @IS_ERR(%struct.crypto_attr_type*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_attr_type*) #1

declare dso_local i32 @pcrypt_create_aead(%struct.crypto_template*, %struct.rtattr**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
