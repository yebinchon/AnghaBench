; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_page_is_mergeable.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_page_is_mergeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_vec = type { i32, i32, %struct.page* }
%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio_vec*, %struct.page*, i32, i32, i32*)* @page_is_mergeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_is_mergeable(%struct.bio_vec* %0, %struct.page* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio_vec*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bio_vec* %0, %struct.bio_vec** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %15 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %14, i32 0, i32 2
  %16 = load %struct.page*, %struct.page** %15, align 8
  %17 = call i32 @page_to_phys(%struct.page* %16)
  %18 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %19 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %17, %20
  %22 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %23 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %12, align 4
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = call i32 @page_to_phys(%struct.page* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %31, %32
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %65

36:                                               ; preds = %5
  %37 = call i64 (...) @xen_domain()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %41 = load %struct.page*, %struct.page** %8, align 8
  %42 = call i32 @xen_biovec_phys_mergeable(%struct.bio_vec* %40, %struct.page* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %65

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @PAGE_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @PFN_DOWN(i32 %57)
  %59 = call %struct.page* @pfn_to_page(i32 %58)
  %60 = getelementptr inbounds %struct.page, %struct.page* %59, i64 1
  %61 = load %struct.page*, %struct.page** %8, align 8
  %62 = icmp ne %struct.page* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %65

64:                                               ; preds = %56, %45
  store i32 1, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %63, %44, %35
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i64 @xen_domain(...) #1

declare dso_local i32 @xen_biovec_phys_mergeable(%struct.bio_vec*, %struct.page*) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @PFN_DOWN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
