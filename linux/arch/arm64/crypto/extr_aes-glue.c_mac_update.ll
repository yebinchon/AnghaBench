; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-glue.c_mac_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-glue.c_mac_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.mac_tfm_ctx = type { i32 }
%struct.mac_desc_ctx = type { i32, i64 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @mac_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mac_tfm_ctx*, align 8
  %8 = alloca %struct.mac_desc_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %12 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mac_tfm_ctx* @crypto_shash_ctx(i32 %13)
  store %struct.mac_tfm_ctx* %14, %struct.mac_tfm_ctx** %7, align 8
  %15 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %16 = call %struct.mac_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %15)
  store %struct.mac_desc_ctx* %16, %struct.mac_desc_ctx** %8, align 8
  br label %17

17:                                               ; preds = %108, %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ugt i32 %18, 0
  br i1 %19, label %20, label %109

20:                                               ; preds = %17
  %21 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %25 = urem i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %20
  %28 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add i32 %30, %31
  %33 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %38 = udiv i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %40 = load i32, i32* %6, align 4
  %41 = urem i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.mac_tfm_ctx*, %struct.mac_tfm_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.mac_tfm_ctx, %struct.mac_tfm_ctx* %42, i32 0, i32 0
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @mac_do_update(i32* %43, i32* %44, i32 %45, i64 %48, i32 %53, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %60 = mul i32 %58, %59
  %61 = load i32*, i32** %5, align 8
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %35
  %67 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %68 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %8, align 8
  %69 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %109

70:                                               ; preds = %35
  %71 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %27, %20
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %76 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %8, align 8
  %77 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub i32 %75, %78
  %80 = call i32 @min(i32 %74, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %83 = icmp ule i32 %81, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %73
  %85 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %8, align 8
  %86 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %8, align 8
  %89 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = zext i32 %90 to i64
  %92 = add nsw i64 %87, %91
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @crypto_xor(i64 %92, i32* %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %8, align 8
  %98 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %6, align 4
  %103 = sub i32 %102, %101
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %5, align 8
  br label %108

108:                                              ; preds = %84, %73
  br label %17

109:                                              ; preds = %66, %17
  ret i32 0
}

declare dso_local %struct.mac_tfm_ctx* @crypto_shash_ctx(i32) #1

declare dso_local %struct.mac_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @mac_do_update(i32*, i32*, i32, i64, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @crypto_xor(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
