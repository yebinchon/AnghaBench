; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_mmu.c_fill_gva_list.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_mmu.c_fill_gva_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@HV_TLB_FLUSH_UNIT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i64, i64)* @fill_gva_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_gva_list(i64* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %10, align 8
  br label %14

14:                                               ; preds = %66, %4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %10, align 8
  %21 = sub i64 %19, %20
  br label %23

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i64 [ %21, %18 ], [ 0, %22 ]
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @PAGE_MASK, align 8
  %27 = and i64 %25, %26
  %28 = load i64*, i64** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 %27, i64* %31, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @HV_TLB_FLUSH_UNIT, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %23
  %36 = load i64, i64* @PAGE_MASK, align 8
  %37 = xor i64 %36, -1
  %38 = load i64*, i64** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = or i64 %42, %37
  store i64 %43, i64* %41, align 8
  %44 = load i64, i64* @HV_TLB_FLUSH_UNIT, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %10, align 8
  br label %63

47:                                               ; preds = %23
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i64, i64* %11, align 8
  %52 = sub i64 %51, 1
  %53 = load i64, i64* @PAGE_SHIFT, align 8
  %54 = lshr i64 %52, %53
  %55 = load i64*, i64** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = or i64 %59, %54
  store i64 %60, i64* %58, align 8
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %50, %47
  br label %63

63:                                               ; preds = %62, %35
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %14, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %71, %72
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
