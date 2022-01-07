; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_cmm.c_cmm_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_cmm.c_cmm_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmm_page_array = type { i64, i64*, %struct.cmm_page_array* }

@GFP_NOIO = common dso_local global i32 0, align 4
@cmm_lock = common dso_local global i32 0, align 4
@CMM_NR_PAGES = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, %struct.cmm_page_array**)* @cmm_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cmm_alloc_pages(i64 %0, i64* %1, %struct.cmm_page_array** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.cmm_page_array**, align 8
  %7 = alloca %struct.cmm_page_array*, align 8
  %8 = alloca %struct.cmm_page_array*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.cmm_page_array** %2, %struct.cmm_page_array*** %6, align 8
  br label %10

10:                                               ; preds = %67, %3
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %87

13:                                               ; preds = %10
  %14 = load i32, i32* @GFP_NOIO, align 4
  %15 = call i64 @__get_free_page(i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %87

19:                                               ; preds = %13
  %20 = call i32 @spin_lock(i32* @cmm_lock)
  %21 = load %struct.cmm_page_array**, %struct.cmm_page_array*** %6, align 8
  %22 = load %struct.cmm_page_array*, %struct.cmm_page_array** %21, align 8
  store %struct.cmm_page_array* %22, %struct.cmm_page_array** %7, align 8
  %23 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %24 = icmp ne %struct.cmm_page_array* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %27 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CMM_NR_PAGES, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %25, %19
  %32 = call i32 @spin_unlock(i32* @cmm_lock)
  %33 = load i32, i32* @GFP_NOIO, align 4
  %34 = call i64 @__get_free_page(i32 %33)
  %35 = inttoptr i64 %34 to %struct.cmm_page_array*
  store %struct.cmm_page_array* %35, %struct.cmm_page_array** %8, align 8
  %36 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  %37 = icmp ne %struct.cmm_page_array* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @free_page(i64 %39)
  br label %87

41:                                               ; preds = %31
  %42 = call i32 @spin_lock(i32* @cmm_lock)
  %43 = load %struct.cmm_page_array**, %struct.cmm_page_array*** %6, align 8
  %44 = load %struct.cmm_page_array*, %struct.cmm_page_array** %43, align 8
  store %struct.cmm_page_array* %44, %struct.cmm_page_array** %7, align 8
  %45 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %46 = icmp ne %struct.cmm_page_array* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %49 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CMM_NR_PAGES, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47, %41
  %54 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %55 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  %56 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %55, i32 0, i32 2
  store %struct.cmm_page_array* %54, %struct.cmm_page_array** %56, align 8
  %57 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  %58 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  store %struct.cmm_page_array* %59, %struct.cmm_page_array** %7, align 8
  %60 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %61 = load %struct.cmm_page_array**, %struct.cmm_page_array*** %6, align 8
  store %struct.cmm_page_array* %60, %struct.cmm_page_array** %61, align 8
  br label %66

62:                                               ; preds = %47
  %63 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  %64 = ptrtoint %struct.cmm_page_array* %63 to i64
  %65 = call i32 @free_page(i64 %64)
  br label %66

66:                                               ; preds = %62, %53
  br label %67

67:                                               ; preds = %66, %25
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @PAGE_SHIFT, align 8
  %70 = lshr i64 %68, %69
  %71 = call i32 @diag10_range(i64 %70, i32 1)
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %74 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %77 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = getelementptr inbounds i64, i64* %75, i64 %78
  store i64 %72, i64* %80, align 8
  %81 = load i64*, i64** %5, align 8
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = call i32 @spin_unlock(i32* @cmm_lock)
  %85 = load i64, i64* %4, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %4, align 8
  br label %10

87:                                               ; preds = %38, %18, %10
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @diag10_range(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
