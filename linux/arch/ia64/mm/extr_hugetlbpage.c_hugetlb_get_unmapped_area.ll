; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/mm/extr_hugetlbpage.c_hugetlb_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/mm/extr_hugetlbpage.c_hugetlb_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i64, i64, i32, i64, i64 }

@RGN_MAP_LIMIT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@HPAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@RGN_HPAGE = common dso_local global i64 0, align 8
@HPAGE_SIZE = common dso_local global i32 0, align 4
@HPAGE_REGION_BASE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hugetlb_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vm_unmapped_area_info, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @RGN_MAP_LIMIT, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i64, i64* @ENOMEM, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %6, align 8
  br label %75

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @HPAGE_MASK, align 8
  %22 = xor i64 %21, -1
  %23 = and i64 %20, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %6, align 8
  br label %75

28:                                               ; preds = %19
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @MAP_FIXED, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @prepare_hugepage_range(%struct.file* %34, i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %6, align 8
  br label %75

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %6, align 8
  br label %75

44:                                               ; preds = %28
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @REGION_NUMBER(i64 %45)
  %47 = load i64, i64* @RGN_HPAGE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* @HPAGE_SIZE, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = and i64 %50, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49, %44
  %57 = load i64, i64* @HPAGE_REGION_BASE, align 8
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %56, %49
  %59 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %12, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %12, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %12, i32 0, i32 1
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* @HPAGE_REGION_BASE, align 8
  %65 = load i64, i64* @RGN_MAP_LIMIT, align 8
  %66 = add i64 %64, %65
  %67 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %12, i32 0, i32 2
  store i64 %66, i64* %67, align 8
  %68 = load i32, i32* @PAGE_MASK, align 4
  %69 = load i32, i32* @HPAGE_SIZE, align 4
  %70 = sub nsw i32 %69, 1
  %71 = and i32 %68, %70
  %72 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %12, i32 0, i32 3
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %12, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %12)
  store i64 %74, i64* %6, align 8
  br label %75

75:                                               ; preds = %58, %42, %39, %25, %16
  %76 = load i64, i64* %6, align 8
  ret i64 %76
}

declare dso_local i64 @prepare_hugepage_range(%struct.file*, i64, i64) #1

declare dso_local i64 @REGION_NUMBER(i64) #1

declare dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
