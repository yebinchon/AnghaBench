; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_discard.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32 }

@PMD_SHIFT = common dso_local global i64 0, align 8
@PMD_MASK = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gmap_discard(%struct.gmap* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.gmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  store %struct.gmap* %0, %struct.gmap** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.gmap*, %struct.gmap** %4, align 8
  %12 = getelementptr inbounds %struct.gmap, %struct.gmap* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @down_read(i32* %14)
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %66, %3
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %17
  %22 = load %struct.gmap*, %struct.gmap** %4, align 8
  %23 = getelementptr inbounds %struct.gmap, %struct.gmap* %22, i32 0, i32 1
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @PMD_SHIFT, align 8
  %26 = lshr i64 %24, %25
  %27 = call i64 @radix_tree_lookup(i32* %23, i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %66

31:                                               ; preds = %21
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @PMD_MASK, align 8
  %34 = xor i64 %33, -1
  %35 = and i64 %32, %34
  %36 = load i64, i64* %8, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %8, align 8
  %38 = load %struct.gmap*, %struct.gmap** %4, align 8
  %39 = getelementptr inbounds %struct.gmap, %struct.gmap* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_2__* %40, i64 %41)
  store %struct.vm_area_struct* %42, %struct.vm_area_struct** %10, align 8
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %44 = icmp ne %struct.vm_area_struct* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  br label %66

46:                                               ; preds = %31
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %48 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %66

51:                                               ; preds = %46
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %52, %53
  %55 = load i64, i64* @PMD_SIZE, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @PMD_MASK, align 8
  %58 = xor i64 %57, -1
  %59 = and i64 %56, %58
  %60 = sub i64 %55, %59
  %61 = call i64 @min(i64 %54, i64 %60)
  store i64 %61, i64* %9, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @zap_page_range(%struct.vm_area_struct* %62, i64 %63, i64 %64)
  br label %66

66:                                               ; preds = %51, %50, %45, %30
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @PMD_SIZE, align 8
  %69 = add i64 %67, %68
  %70 = load i64, i64* @PMD_MASK, align 8
  %71 = and i64 %69, %70
  store i64 %71, i64* %7, align 8
  br label %17

72:                                               ; preds = %17
  %73 = load %struct.gmap*, %struct.gmap** %4, align 8
  %74 = getelementptr inbounds %struct.gmap, %struct.gmap* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @up_read(i32* %76)
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @radix_tree_lookup(i32*, i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_2__*, i64) #1

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @zap_page_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
