; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lpar.c_vsid_unscramble.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lpar.c_vsid_unscramble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VA_BITS = common dso_local global i64 0, align 8
@MMU_FTR_68_BIT_VA = common dso_local global i32 0, align 4
@MMU_SEGSIZE_256M = common dso_local global i32 0, align 4
@VSID_MULINV_256M = common dso_local global i64 0, align 8
@SID_SHIFT = common dso_local global i64 0, align 8
@VSID_MULINV_1T = common dso_local global i64 0, align 8
@SID_SHIFT_1T = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @vsid_unscramble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vsid_unscramble(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i64, i64* @VA_BITS, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* @MMU_FTR_68_BIT_VA, align 4
  %14 = call i32 @mmu_has_feature(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i64 65, i64* %7, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MMU_SEGSIZE_256M, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i64, i64* @VSID_MULINV_256M, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @SID_SHIFT, align 8
  %25 = sub i64 %23, %24
  %26 = shl i64 1, %25
  %27 = sub i64 %26, 1
  store i64 %27, i64* %9, align 8
  br label %35

28:                                               ; preds = %17
  %29 = load i64, i64* @VSID_MULINV_1T, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @SID_SHIFT_1T, align 8
  %32 = sub i64 %30, %31
  %33 = shl i64 1, %32
  %34 = sub i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %28, %21
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i64 0, i64* %3, align 8
  br label %76

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = udiv i64 9223372036854775807, %41
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %8, align 8
  %49 = mul i64 %47, %48
  %50 = load i64, i64* %9, align 8
  %51 = urem i64 %49, %50
  store i64 %51, i64* %3, align 8
  br label %76

52:                                               ; preds = %40
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %10, align 8
  %55 = udiv i64 %53, %54
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %8, align 8
  %58 = urem i64 %57, %56
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %10, align 8
  %61 = mul i64 %59, %60
  %62 = load i64, i64* %9, align 8
  %63 = urem i64 %61, %62
  %64 = load i64, i64* %11, align 8
  %65 = mul i64 %63, %64
  %66 = load i64, i64* %9, align 8
  %67 = urem i64 %65, %66
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* %8, align 8
  %71 = mul i64 %69, %70
  %72 = add i64 %68, %71
  %73 = load i64, i64* %9, align 8
  %74 = urem i64 %72, %73
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %52, %46, %39
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local i32 @mmu_has_feature(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
