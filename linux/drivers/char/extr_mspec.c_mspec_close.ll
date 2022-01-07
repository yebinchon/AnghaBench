; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_mspec.c_mspec_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_mspec.c_mspec_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.vma_data* }
%struct.vma_data = type { i32, i32, i64*, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @mspec_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mspec_close(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.vma_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 0
  %9 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  store %struct.vma_data* %9, %struct.vma_data** %3, align 8
  %10 = load %struct.vma_data*, %struct.vma_data** %3, align 8
  %11 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %10, i32 0, i32 3
  %12 = call i32 @refcount_dec_and_test(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %65

15:                                               ; preds = %1
  %16 = load %struct.vma_data*, %struct.vma_data** %3, align 8
  %17 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vma_data*, %struct.vma_data** %3, align 8
  %20 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %59, %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = load %struct.vma_data*, %struct.vma_data** %3, align 8
  %31 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %59

39:                                               ; preds = %29
  %40 = load %struct.vma_data*, %struct.vma_data** %3, align 8
  %41 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  %47 = load %struct.vma_data*, %struct.vma_data** %3, align 8
  %48 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  %53 = load i64, i64* %6, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = call i32 @memset(i8* %54, i32 0, i32 %55)
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @uncached_free_page(i64 %57, i32 1)
  br label %59

59:                                               ; preds = %39, %38
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %25

62:                                               ; preds = %25
  %63 = load %struct.vma_data*, %struct.vma_data** %3, align 8
  %64 = call i32 @kvfree(%struct.vma_data* %63)
  br label %65

65:                                               ; preds = %62, %14
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @uncached_free_page(i64, i32) #1

declare dso_local i32 @kvfree(%struct.vma_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
