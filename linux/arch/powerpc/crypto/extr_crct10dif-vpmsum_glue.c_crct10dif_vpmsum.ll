; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_crct10dif-vpmsum_glue.c_crct10dif_vpmsum.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_crct10dif-vpmsum_glue.c_crct10dif_vpmsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VECTOR_BREAKPOINT = common dso_local global i64 0, align 8
@VMX_ALIGN = common dso_local global i64 0, align 8
@VMX_ALIGN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @crct10dif_vpmsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crct10dif_vpmsum(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @VECTOR_BREAKPOINT, align 8
  %14 = load i64, i64* @VMX_ALIGN, align 8
  %15 = add i64 %13, %14
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = call i32 (...) @crypto_simd_usable()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %10, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @crc_t10dif_generic(i32 %21, i8* %22, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %97

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load i64, i64* @VMX_ALIGN_MASK, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load i64, i64* @VMX_ALIGN, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load i64, i64* @VMX_ALIGN_MASK, align 8
  %37 = and i64 %35, %36
  %38 = sub i64 %33, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @crc_t10dif_generic(i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %6, align 8
  br label %52

52:                                               ; preds = %32, %26
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @VMX_ALIGN_MASK, align 8
  %55 = xor i64 %54, -1
  %56 = and i64 %53, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = shl i32 %59, 16
  store i32 %60, i32* %10, align 4
  %61 = call i32 (...) @preempt_disable()
  %62 = call i32 (...) @pagefault_disable()
  %63 = call i32 (...) @enable_kernel_altivec()
  %64 = load i32, i32* %10, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @VMX_ALIGN_MASK, align 8
  %68 = xor i64 %67, -1
  %69 = and i64 %66, %68
  %70 = call i32 @__crct10dif_vpmsum(i32 %64, i8* %65, i64 %69)
  store i32 %70, i32* %10, align 4
  %71 = call i32 (...) @disable_kernel_altivec()
  %72 = call i32 (...) @pagefault_enable()
  %73 = call i32 (...) @preempt_enable()
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, 16
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %58, %52
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @VMX_ALIGN_MASK, align 8
  %79 = and i64 %77, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @VMX_ALIGN_MASK, align 8
  %86 = xor i64 %85, -1
  %87 = and i64 %84, %86
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8* %89, i8** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @crc_t10dif_generic(i32 %90, i8* %91, i32 %92)
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %83, %76
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, 65535
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %94, %20
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @crc_t10dif_generic(i32, i8*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @enable_kernel_altivec(...) #1

declare dso_local i32 @__crct10dif_vpmsum(i32, i8*, i64) #1

declare dso_local i32 @disable_kernel_altivec(...) #1

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
