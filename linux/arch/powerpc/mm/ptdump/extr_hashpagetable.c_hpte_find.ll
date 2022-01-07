; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_hpte_find.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_hpte_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32 }

@PAGE_OFFSET = common dso_local global i64 0, align 8
@HPTE_V_LARGE = common dso_local global i64 0, align 8
@HPTE_R_RPN = common dso_local global i64 0, align 8
@HPTE_R_RPN_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pg_state*, i64, i32)* @hpte_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hpte_find(%struct.pg_state* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.pg_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pg_state* %0, %struct.pg_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @PAGE_OFFSET, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i64 -1, i64* %4, align 8
  br label %65

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @base_hpte_find(i64 %20, i32 %21, i32 1, i64* %9, i64* %10)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @base_hpte_find(i64 %26, i32 %27, i32 0, i64* %9, i64* %10)
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i64 -1, i64* %4, align 8
  br label %65

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @mmu_psize_to_shift(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @HPTE_V_LARGE, align 8
  %38 = and i64 %36, %37
  %39 = load i64, i64* @HPTE_V_LARGE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @decode_r(i32 %42, i64 %43, i64* %11, i32* %14, i64* %12)
  br label %51

45:                                               ; preds = %33
  store i32 12, i32* %14, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @HPTE_R_RPN, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* @HPTE_R_RPN_SHIFT, align 8
  %50 = lshr i64 %48, %49
  store i64 %50, i64* %11, align 8
  store i64 -1, i64* %12, align 8
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %14, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i64 -1, i64* %4, align 8
  br label %65

55:                                               ; preds = %51
  %56 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @dump_hpte_info(%struct.pg_state* %56, i64 %57, i64 %58, i64 %59, i64 %60, i32 %61, i32 %62, i64 %63)
  store i64 0, i64* %4, align 8
  br label %65

65:                                               ; preds = %55, %54, %32, %18
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local i64 @base_hpte_find(i64, i32, i32, i64*, i64*) #1

declare dso_local i32 @mmu_psize_to_shift(i32) #1

declare dso_local i32 @decode_r(i32, i64, i64*, i32*, i64*) #1

declare dso_local i32 @dump_hpte_info(%struct.pg_state*, i64, i64, i64, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
