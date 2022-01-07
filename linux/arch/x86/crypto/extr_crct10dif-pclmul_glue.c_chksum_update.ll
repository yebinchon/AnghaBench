; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_crct10dif-pclmul_glue.c_chksum_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_crct10dif-pclmul_glue.c_chksum_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.chksum_desc_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @chksum_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chksum_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chksum_desc_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %9 = call %struct.chksum_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %8)
  store %struct.chksum_desc_ctx* %9, %struct.chksum_desc_ctx** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp uge i32 %10, 16
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = call i64 (...) @crypto_simd_usable()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = call i32 (...) @kernel_fpu_begin()
  %17 = load %struct.chksum_desc_ctx*, %struct.chksum_desc_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.chksum_desc_ctx, %struct.chksum_desc_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @crc_t10dif_pcl(i32 %19, i32* %20, i32 %21)
  %23 = load %struct.chksum_desc_ctx*, %struct.chksum_desc_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.chksum_desc_ctx, %struct.chksum_desc_ctx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call i32 (...) @kernel_fpu_end()
  br label %35

26:                                               ; preds = %12, %3
  %27 = load %struct.chksum_desc_ctx*, %struct.chksum_desc_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.chksum_desc_ctx, %struct.chksum_desc_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @crc_t10dif_generic(i32 %29, i32* %30, i32 %31)
  %33 = load %struct.chksum_desc_ctx*, %struct.chksum_desc_ctx** %7, align 8
  %34 = getelementptr inbounds %struct.chksum_desc_ctx, %struct.chksum_desc_ctx* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %15
  ret i32 0
}

declare dso_local %struct.chksum_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i64 @crypto_simd_usable(...) #1

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i32 @crc_t10dif_pcl(i32, i32*, i32) #1

declare dso_local i32 @kernel_fpu_end(...) #1

declare dso_local i32 @crc_t10dif_generic(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
