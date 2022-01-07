; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/mm/extr_init.c_ia64_mmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/mm/extr_init.c_ia64_mmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@local_cpu_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"CPU has bogus IMPL_VA_MSB value of %lu!\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [116 x i8] c"Cannot build a big enough virtual-linear page table to cover mapped address space.\0A Try using a smaller page size.\0A\00", align 1
@HPAGE_REGION_BASE = common dso_local global i32 0, align 4
@HPAGE_SHIFT = common dso_local global i32 0, align 4
@VHPT_ENABLE_BIT = common dso_local global i64 0, align 8
@mapped_space_bits = common dso_local global i64 0, align 8
@pte_bits = common dso_local global i64 0, align 8
@vmlpt_bits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_mmu_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @local_cpu_data, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = or i64 %7, -2305843009213693952
  %9 = xor i64 %8, -1
  %10 = call i64 @ffz(i64 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %11, 51
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = icmp ugt i64 %14, 61
  br i1 %15, label %16, label %20

16:                                               ; preds = %13, %1
  %17 = load i64, i64* %4, align 8
  %18 = sub i64 %17, 1
  %19 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = sub nsw i64 %21, 3
  %23 = mul nsw i64 3, %22
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = sub i64 %28, %29
  %31 = add i64 %30, 3
  %32 = sub i64 %31, 3
  %33 = icmp ugt i64 %27, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %20
  %35 = load i64, i64* @PAGE_SHIFT, align 8
  %36 = sub nsw i64 %35, 3
  %37 = mul nsw i64 3, %36
  %38 = load i64, i64* @PAGE_SHIFT, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* %4, align 8
  %41 = sub i64 %40, 1
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34, %20
  %44 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %34
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @PAGE_SHIFT, align 8
  %48 = sub i64 %46, %47
  %49 = add i64 %48, 3
  %50 = shl i64 1, %49
  %51 = sub i64 2305843009213693952, %50
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = sub i64 %53, %54
  %56 = add i64 %55, 3
  %57 = shl i64 %56, 2
  %58 = or i64 %52, %57
  %59 = or i64 %58, 1
  %60 = call i32 @ia64_set_pta(i64 %59)
  %61 = call i32 (...) @ia64_tlb_init()
  ret void
}

declare dso_local i64 @ffz(i64) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @ia64_set_pta(i64) #1

declare dso_local i32 @ia64_tlb_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
