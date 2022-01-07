; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_crc32c-vpmsum_glue.c_crc32c_vpmsum.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_crc32c-vpmsum_glue.c_crc32c_vpmsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VECTOR_BREAKPOINT = common dso_local global i64 0, align 8
@VMX_ALIGN = common dso_local global i64 0, align 8
@VMX_ALIGN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @crc32c_vpmsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc32c_vpmsum(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @VECTOR_BREAKPOINT, align 8
  %12 = load i64, i64* @VMX_ALIGN, align 8
  %13 = add i64 %11, %12
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = call i32 (...) @crypto_simd_usable()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* %5, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @__crc32c_le(i32 %19, i8* %20, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %90

24:                                               ; preds = %15
  %25 = load i8*, i8** %6, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load i64, i64* @VMX_ALIGN_MASK, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load i64, i64* @VMX_ALIGN, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load i64, i64* @VMX_ALIGN_MASK, align 8
  %35 = and i64 %33, %34
  %36 = sub i64 %31, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @__crc32c_le(i32 %38, i8* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %6, align 8
  br label %50

50:                                               ; preds = %30, %24
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @VMX_ALIGN_MASK, align 8
  %53 = xor i64 %52, -1
  %54 = and i64 %51, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = call i32 (...) @preempt_disable()
  %58 = call i32 (...) @pagefault_disable()
  %59 = call i32 (...) @enable_kernel_altivec()
  %60 = load i32, i32* %5, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @VMX_ALIGN_MASK, align 8
  %64 = xor i64 %63, -1
  %65 = and i64 %62, %64
  %66 = call i32 @__crc32c_vpmsum(i32 %60, i8* %61, i64 %65)
  store i32 %66, i32* %5, align 4
  %67 = call i32 (...) @disable_kernel_altivec()
  %68 = call i32 (...) @pagefault_enable()
  %69 = call i32 (...) @preempt_enable()
  br label %70

70:                                               ; preds = %56, %50
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @VMX_ALIGN_MASK, align 8
  %73 = and i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @VMX_ALIGN_MASK, align 8
  %80 = xor i64 %79, -1
  %81 = and i64 %78, %80
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  store i8* %83, i8** %6, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @__crc32c_le(i32 %84, i8* %85, i32 %86)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %77, %70
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %18
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @__crc32c_le(i32, i8*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @enable_kernel_altivec(...) #1

declare dso_local i32 @__crc32c_vpmsum(i32, i8*, i64) #1

declare dso_local i32 @disable_kernel_altivec(...) #1

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
