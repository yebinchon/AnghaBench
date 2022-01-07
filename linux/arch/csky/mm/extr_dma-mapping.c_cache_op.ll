; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/mm/extr_dma-mapping.c_cache_op.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/mm/extr_dma-mapping.c_cache_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, void (i64, i64)*)* @cache_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_op(i32 %0, i64 %1, void (i64, i64)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca void (i64, i64)*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store void (i64, i64)* %2, void (i64, i64)** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.page* @phys_to_page(i32 %12)
  store %struct.page* %13, %struct.page** %7, align 8
  %14 = load %struct.page*, %struct.page** %7, align 8
  %15 = call i32 @page_to_phys(%struct.page* %14)
  %16 = call i8* @__va(i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @offset_in_page(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %10, align 8
  br label %20

20:                                               ; preds = %72, %3
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %11, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = load i64, i64* %9, align 8
  %30 = sub i64 %28, %29
  store i64 %30, i64* %11, align 8
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = call i64 @PageHighMem(%struct.page* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct.page*, %struct.page** %7, align 8
  %37 = call i8* @kmap_atomic(%struct.page* %36)
  store i8* %37, i8** %8, align 8
  %38 = load void (i64, i64)*, void (i64, i64)** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %40, %41
  %43 = load i8*, i8** %8, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %44, %45
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %46, %47
  call void %38(i64 %42, i64 %48)
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @kunmap_atomic(i8* %49)
  br label %63

51:                                               ; preds = %31
  %52 = load void (i64, i64)*, void (i64, i64)** %6, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %54, %55
  %57 = load i8*, i8** %8, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %58, %59
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %60, %61
  call void %52(i64 %56, i64 %62)
  br label %63

63:                                               ; preds = %51, %35
  store i64 0, i64* %9, align 8
  %64 = load %struct.page*, %struct.page** %7, align 8
  %65 = getelementptr inbounds %struct.page, %struct.page* %64, i32 1
  store %struct.page* %65, %struct.page** %7, align 8
  %66 = load i64, i64* @PAGE_SIZE, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr i8, i8* %67, i64 %66
  store i8* %68, i8** %8, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %10, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %63
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %20, label %75

75:                                               ; preds = %72
  ret void
}

declare dso_local %struct.page* @phys_to_page(i32) #1

declare dso_local i8* @__va(i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i64 @offset_in_page(i32) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
