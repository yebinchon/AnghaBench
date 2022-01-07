; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmm_page_array = type { i64, i64*, %struct.cmm_page_array* }

@.str = private unnamed_addr constant [26 x i8] c"Begin free of %ld pages.\0A\00", align 1
@cmm_lock = common dso_local global i32 0, align 4
@cmm_page_list = common dso_local global %struct.cmm_page_array* null, align 8
@loaned_pages = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"End request with %ld pages unfulfilled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @cmm_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cmm_free_pages(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cmm_page_array*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @cmm_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = call i32 @spin_lock(i32* @cmm_lock)
  %8 = load %struct.cmm_page_array*, %struct.cmm_page_array** @cmm_page_list, align 8
  store %struct.cmm_page_array* %8, %struct.cmm_page_array** %3, align 8
  br label %9

9:                                                ; preds = %43, %1
  %10 = load i64, i64* %2, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = load %struct.cmm_page_array*, %struct.cmm_page_array** %3, align 8
  %14 = icmp ne %struct.cmm_page_array* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.cmm_page_array*, %struct.cmm_page_array** %3, align 8
  %17 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ule i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %12
  br label %54

21:                                               ; preds = %15
  %22 = load %struct.cmm_page_array*, %struct.cmm_page_array** %3, align 8
  %23 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.cmm_page_array*, %struct.cmm_page_array** %3, align 8
  %26 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds i64, i64* %24, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %4, align 8
  %31 = load %struct.cmm_page_array*, %struct.cmm_page_array** %3, align 8
  %32 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %21
  %36 = load %struct.cmm_page_array*, %struct.cmm_page_array** %3, align 8
  %37 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %36, i32 0, i32 2
  %38 = load %struct.cmm_page_array*, %struct.cmm_page_array** %37, align 8
  store %struct.cmm_page_array* %38, %struct.cmm_page_array** %3, align 8
  %39 = load %struct.cmm_page_array*, %struct.cmm_page_array** @cmm_page_list, align 8
  %40 = ptrtoint %struct.cmm_page_array* %39 to i64
  %41 = call i32 @free_page(i64 %40)
  %42 = load %struct.cmm_page_array*, %struct.cmm_page_array** %3, align 8
  store %struct.cmm_page_array* %42, %struct.cmm_page_array** @cmm_page_list, align 8
  br label %43

43:                                               ; preds = %35, %21
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @__pa(i64 %44)
  %46 = call i32 @plpar_page_set_active(i32 %45)
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @free_page(i64 %47)
  %49 = load i32, i32* @loaned_pages, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @loaned_pages, align 4
  %51 = load i64, i64* %2, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %2, align 8
  %53 = call i32 (...) @totalram_pages_inc()
  br label %9

54:                                               ; preds = %20, %9
  %55 = call i32 @spin_unlock(i32* @cmm_lock)
  %56 = load i64, i64* %2, align 8
  %57 = call i32 @cmm_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* %2, align 8
  ret i64 %58
}

declare dso_local i32 @cmm_dbg(i8*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @plpar_page_set_active(i32) #1

declare dso_local i32 @__pa(i64) #1

declare dso_local i32 @totalram_pages_inc(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
