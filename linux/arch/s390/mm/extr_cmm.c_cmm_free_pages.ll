; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_cmm.c_cmm_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_cmm.c_cmm_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmm_page_array = type { i64, i64*, %struct.cmm_page_array* }

@cmm_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, %struct.cmm_page_array**)* @cmm_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cmm_free_pages(i64 %0, i64* %1, %struct.cmm_page_array** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.cmm_page_array**, align 8
  %7 = alloca %struct.cmm_page_array*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.cmm_page_array** %2, %struct.cmm_page_array*** %6, align 8
  %9 = call i32 @spin_lock(i32* @cmm_lock)
  %10 = load %struct.cmm_page_array**, %struct.cmm_page_array*** %6, align 8
  %11 = load %struct.cmm_page_array*, %struct.cmm_page_array** %10, align 8
  store %struct.cmm_page_array* %11, %struct.cmm_page_array** %7, align 8
  br label %12

12:                                               ; preds = %48, %3
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %12
  %16 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %17 = icmp ne %struct.cmm_page_array* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %20 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ule i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %15
  br label %56

24:                                               ; preds = %18
  %25 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %26 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %29 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds i64, i64* %27, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %35 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %24
  %39 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %40 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %39, i32 0, i32 2
  %41 = load %struct.cmm_page_array*, %struct.cmm_page_array** %40, align 8
  store %struct.cmm_page_array* %41, %struct.cmm_page_array** %7, align 8
  %42 = load %struct.cmm_page_array**, %struct.cmm_page_array*** %6, align 8
  %43 = load %struct.cmm_page_array*, %struct.cmm_page_array** %42, align 8
  %44 = ptrtoint %struct.cmm_page_array* %43 to i64
  %45 = call i32 @free_page(i64 %44)
  %46 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %47 = load %struct.cmm_page_array**, %struct.cmm_page_array*** %6, align 8
  store %struct.cmm_page_array* %46, %struct.cmm_page_array** %47, align 8
  br label %48

48:                                               ; preds = %38, %24
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @free_page(i64 %49)
  %51 = load i64*, i64** %5, align 8
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  %54 = load i64, i64* %4, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %4, align 8
  br label %12

56:                                               ; preds = %23, %12
  %57 = call i32 @spin_unlock(i32* @cmm_lock)
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
