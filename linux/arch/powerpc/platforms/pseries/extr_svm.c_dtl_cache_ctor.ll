; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_svm.c_dtl_cache_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_svm.c_dtl_cache_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@dtl_page_store = common dso_local global %struct.page** null, align 8
@dtl_nr_pages = common dso_local global i64 0, align 8
@NR_DTL_PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtl_cache_ctor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.page*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @__pa(i8* %5)
  %7 = call i64 @PHYS_PFN(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call %struct.page* @pfn_to_page(i64 %8)
  store %struct.page* %9, %struct.page** %4, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i32 @is_dtl_page_shared(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = load %struct.page**, %struct.page*** @dtl_page_store, align 8
  %16 = load i64, i64* @dtl_nr_pages, align 8
  %17 = getelementptr inbounds %struct.page*, %struct.page** %15, i64 %16
  store %struct.page* %14, %struct.page** %17, align 8
  %18 = load i64, i64* @dtl_nr_pages, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* @dtl_nr_pages, align 8
  %20 = load i64, i64* @dtl_nr_pages, align 8
  %21 = load i64, i64* @NR_DTL_PAGE, align 8
  %22 = icmp uge i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @uv_share_page(i64 %25, i32 1)
  br label %27

27:                                               ; preds = %13, %1
  ret void
}

declare dso_local i64 @PHYS_PFN(i32) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @is_dtl_page_shared(%struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @uv_share_page(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
