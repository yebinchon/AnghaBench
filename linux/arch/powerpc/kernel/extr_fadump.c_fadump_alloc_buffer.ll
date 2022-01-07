; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @fadump_alloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fadump_alloc_buffer(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* @__GFP_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call i8* @alloc_pages_exact(i64 %8, i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %37

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @PAGE_ALIGN(i64 %17)
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = udiv i64 %18, %19
  store i64 %20, i64* %4, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call %struct.page* @virt_to_page(i8* %21)
  store %struct.page* %22, %struct.page** %6, align 8
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %32, %16
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.page, %struct.page* %28, i64 %29
  %31 = call i32 @mark_page_reserved(%struct.page* %30)
  br label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %23

35:                                               ; preds = %23
  %36 = load i8*, i8** %7, align 8
  store i8* %36, i8** %2, align 8
  br label %37

37:                                               ; preds = %35, %15
  %38 = load i8*, i8** %2, align 8
  ret i8* %38
}

declare dso_local i8* @alloc_pages_exact(i64, i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @mark_page_reserved(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
