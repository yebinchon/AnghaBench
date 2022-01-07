; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_get_num_contig_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_get_num_contig_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.page**, i64)* @get_num_contig_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_num_contig_pages(i64 %0, %struct.page** %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.page**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.page** %1, %struct.page*** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* %9, align 8
  store i64 1, i64* %10, align 8
  %13 = load %struct.page**, %struct.page*** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.page*, %struct.page** %13, i64 %14
  %16 = load %struct.page*, %struct.page** %15, align 8
  %17 = call i64 @__sme_page_pa(%struct.page* %16)
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %34, %3
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load %struct.page**, %struct.page*** %5, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %9, align 8
  %26 = getelementptr inbounds %struct.page*, %struct.page** %23, i64 %24
  %27 = load %struct.page*, %struct.page** %26, align 8
  %28 = call i64 @__sme_page_pa(%struct.page* %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = add i64 %29, %30
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %7, align 8
  br label %18

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %18
  %40 = load i64, i64* %10, align 8
  ret i64 %40
}

declare dso_local i64 @__sme_page_pa(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
