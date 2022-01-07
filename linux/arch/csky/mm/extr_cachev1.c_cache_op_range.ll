; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/mm/extr_cachev1.c_cache_op_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/mm/extr_cachev1.c_cache_op_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CACHE_CLR = common dso_local global i32 0, align 4
@CACHE_OMS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_OFFSET = common dso_local global i32 0, align 4
@LOWMEM_LIMIT = common dso_local global i32 0, align 4
@CCR2_L2E = common dso_local global i32 0, align 4
@cache_lock = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cr24\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @cache_op_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_op_range(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @CACHE_CLR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CACHE_OMS, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sub i32 %18, %19
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = icmp uge i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PAGE_OFFSET, align 4
  %29 = icmp ult i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PAGE_OFFSET, align 4
  %36 = load i32, i32* @LOWMEM_LIMIT, align 4
  %37 = add i32 %35, %36
  %38 = icmp uge i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33, %26, %4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @cache_op_all(i32 %43, i32 %44)
  br label %90

46:                                               ; preds = %33
  %47 = call i32 (...) @mfcr_ccr2()
  %48 = load i32, i32* @CCR2_L2E, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %12, align 4
  br label %56

55:                                               ; preds = %51, %46
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @spin_lock_irqsave(i32* @cache_lock, i64 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @L1_CACHE_BYTES, align 4
  %61 = sub nsw i32 %60, 1
  %62 = xor i32 %61, -1
  %63 = and i32 %59, %62
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %81, %56
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %66, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @cache_op_line(i64 %71, i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = call i32 (...) @mb()
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @mtcr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* @L1_CACHE_BYTES, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %9, align 8
  br label %65

86:                                               ; preds = %65
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* @cache_lock, i64 %87)
  %89 = call i32 (...) @mb()
  br label %90

90:                                               ; preds = %86, %42
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cache_op_all(i32, i32) #1

declare dso_local i32 @mfcr_ccr2(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cache_op_line(i64, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @mtcr(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
