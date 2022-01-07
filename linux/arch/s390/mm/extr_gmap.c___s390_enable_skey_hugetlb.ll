; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___s390_enable_skey_hugetlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___s390_enable_skey_hugetlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { i32 }
%struct.page = type { i32 }

@_SEGMENT_ENTRY_INVALID = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_WRITE = common dso_local global i64 0, align 8
@HPAGE_MASK = common dso_local global i64 0, align 8
@HPAGE_SIZE = common dso_local global i64 0, align 8
@PG_arch_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64, %struct.mm_walk*)* @__s390_enable_skey_hugetlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s390_enable_skey_hugetlb(i32* %0, i64 %1, i64 %2, i64 %3, %struct.mm_walk* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mm_walk*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.page*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.mm_walk* %4, %struct.mm_walk** %11, align 8
  %16 = load i32*, i32** %7, align 8
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.page* @pmd_page(i32 %18)
  store %struct.page* %19, %struct.page** %15, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @pmd_val(i32 %21)
  %23 = load i64, i64* @_SEGMENT_ENTRY_INVALID, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %5
  %27 = load i32*, i32** %12, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @pmd_val(i32 %28)
  %30 = load i64, i64* @_SEGMENT_ENTRY_WRITE, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26, %5
  store i32 0, i32* %6, align 4
  br label %51

34:                                               ; preds = %26
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @pmd_val(i32 %36)
  %38 = load i64, i64* @HPAGE_MASK, align 8
  %39 = and i64 %37, %38
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @HPAGE_SIZE, align 8
  %42 = add i64 %40, %41
  %43 = sub i64 %42, 1
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @__storage_key_init_range(i64 %44, i64 %45)
  %47 = load i32, i32* @PG_arch_1, align 4
  %48 = load %struct.page*, %struct.page** %15, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 0, i32 0
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %34, %33
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i64 @pmd_val(i32) #1

declare dso_local i32 @__storage_key_init_range(i64, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
