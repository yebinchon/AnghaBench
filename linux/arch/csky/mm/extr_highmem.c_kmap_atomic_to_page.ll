; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/mm/extr_highmem.c_kmap_atomic_to_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/mm/extr_highmem.c_kmap_atomic_to_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@FIXADDR_START = common dso_local global i64 0, align 8
@kmap_pte = common dso_local global i32* null, align 8
@FIX_KMAP_BEGIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @kmap_atomic_to_page(i8* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @FIXADDR_START, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.page* @virt_to_page(i8* %13)
  store %struct.page* %14, %struct.page** %2, align 8
  br label %27

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @virt_to_fix(i64 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i32*, i32** @kmap_pte, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @FIX_KMAP_BEGIN, align 8
  %21 = sub i64 %19, %20
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.page* @pte_page(i32 %25)
  store %struct.page* %26, %struct.page** %2, align 8
  br label %27

27:                                               ; preds = %15, %12
  %28 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %28
}

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i64 @virt_to_fix(i64) #1

declare dso_local %struct.page* @pte_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
