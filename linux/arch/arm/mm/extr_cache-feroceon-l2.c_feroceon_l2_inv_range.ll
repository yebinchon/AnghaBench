; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-feroceon-l2.c_feroceon_l2_inv_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-feroceon-l2.c_feroceon_l2_inv_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @feroceon_l2_inv_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feroceon_l2_inv_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %8 = sub nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = and i64 %6, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = xor i32 %15, -1
  %17 = sext i32 %16 to i64
  %18 = and i64 %13, %17
  %19 = call i32 @l2_clean_inv_pa(i64 %18)
  %20 = load i64, i64* %3, align 8
  %21 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = or i64 %20, %23
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %12, %2
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = and i64 %31, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = xor i32 %40, -1
  %42 = sext i32 %41 to i64
  %43 = and i64 %38, %42
  %44 = call i32 @l2_clean_inv_pa(i64 %43)
  %45 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = xor i32 %46, -1
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %4, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %37, %30, %26
  br label %52

52:                                               ; preds = %56, %51
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @calc_range_end(i64 %57, i64 %58)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 %61, %63
  %65 = call i32 @l2_inv_pa_range(i64 %60, i64 %64)
  %66 = load i64, i64* %5, align 8
  store i64 %66, i64* %3, align 8
  br label %52

67:                                               ; preds = %52
  %68 = call i32 (...) @dsb()
  ret void
}

declare dso_local i32 @l2_clean_inv_pa(i64) #1

declare dso_local i64 @calc_range_end(i64, i64) #1

declare dso_local i32 @l2_inv_pa_range(i64, i64) #1

declare dso_local i32 @dsb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
