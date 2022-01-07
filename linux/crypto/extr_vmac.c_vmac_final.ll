; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_vmac.c_vmac_final.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_vmac.c_vmac_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.vmac_tfm_ctx = type { i32 }
%struct.vmac_desc_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@VMAC_NONCEBYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VMAC_TAG_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @vmac_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmac_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vmac_tfm_ctx*, align 8
  %7 = alloca %struct.vmac_desc_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %12 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.vmac_tfm_ctx* @crypto_shash_ctx(i32 %13)
  store %struct.vmac_tfm_ctx* %14, %struct.vmac_tfm_ctx** %6, align 8
  %15 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %16 = call %struct.vmac_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %15)
  store %struct.vmac_desc_ctx* %16, %struct.vmac_desc_ctx** %7, align 8
  %17 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VMAC_NONCEBYTES, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %94

25:                                               ; preds = %2
  %26 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 128
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %94

37:                                               ; preds = %25
  %38 = load %struct.vmac_tfm_ctx*, %struct.vmac_tfm_ctx** %6, align 8
  %39 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %7, align 8
  %40 = call i64 @vhash_final(%struct.vmac_tfm_ctx* %38, %struct.vmac_desc_ctx* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i32, i32* @VMAC_NONCEBYTES, align 4
  %42 = load i32, i32* @VMAC_TAG_LEN, align 4
  %43 = sdiv i32 %42, 8
  %44 = mul nsw i32 2, %43
  %45 = icmp ne i32 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUILD_BUG_ON(i32 %46)
  %48 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @VMAC_NONCEBYTES, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %7, align 8
  %59 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @VMAC_NONCEBYTES, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, -2
  store i32 %67, i32* %65, align 4
  %68 = load %struct.vmac_tfm_ctx*, %struct.vmac_tfm_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.vmac_tfm_ctx, %struct.vmac_tfm_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %7, align 8
  %72 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %7, align 8
  %76 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @crypto_cipher_encrypt_one(i32 %70, i32* %74, i32* %78)
  %80 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %7, align 8
  %81 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @be64_to_cpu(i32 %87)
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @put_unaligned_be64(i64 %91, i32* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %37, %34, %22
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.vmac_tfm_ctx* @crypto_shash_ctx(i32) #1

declare dso_local %struct.vmac_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i64 @vhash_final(%struct.vmac_tfm_ctx*, %struct.vmac_desc_ctx*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(i32, i32*, i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @put_unaligned_be64(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
