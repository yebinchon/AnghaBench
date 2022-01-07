; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_dma.c_cache_op.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_dma.c_cache_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, void (i64, i64)*)* @cache_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_op(i32 %0, i64 %1, void (i64, i64)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca void (i64, i64)*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store void (i64, i64)* %2, void (i64, i64)** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = lshr i32 %13, %14
  %16 = call %struct.page* @pfn_to_page(i32 %15)
  store %struct.page* %16, %struct.page** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PAGE_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %84, %3
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.page*, %struct.page** %7, align 8
  %25 = call i64 @PageHighMem(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* %11, align 8
  %31 = add i64 %29, %30
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = icmp ugt i64 %31, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @PAGE_SHIFT, align 4
  %42 = lshr i32 %40, %41
  %43 = load %struct.page*, %struct.page** %7, align 8
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds %struct.page, %struct.page* %43, i64 %44
  store %struct.page* %45, %struct.page** %7, align 8
  %46 = load i32, i32* @PAGE_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %39, %35
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub i32 %51, %52
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %50, %27
  %56 = load %struct.page*, %struct.page** %7, align 8
  %57 = call i8* @kmap_atomic(%struct.page* %56)
  store i8* %57, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr i8, i8* %58, i64 %60
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* %10, align 8
  %63 = load void (i64, i64)*, void (i64, i64)** %6, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %65, %66
  call void %63(i64 %64, i64 %67)
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @kunmap_atomic(i8* %68)
  br label %78

70:                                               ; preds = %22
  %71 = load i32, i32* %4, align 4
  %72 = call i64 @phys_to_virt(i32 %71)
  store i64 %72, i64* %10, align 8
  %73 = load void (i64, i64)*, void (i64, i64)** %6, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %5, align 8
  %77 = add i64 %75, %76
  call void %73(i64 %74, i64 %77)
  br label %78

78:                                               ; preds = %70, %55
  store i32 0, i32* %8, align 4
  %79 = load %struct.page*, %struct.page** %7, align 8
  %80 = getelementptr inbounds %struct.page, %struct.page* %79, i32 1
  store %struct.page* %80, %struct.page** %7, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %9, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %9, align 8
  br label %84

84:                                               ; preds = %78
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %22, label %87

87:                                               ; preds = %84
  ret void
}

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i64 @phys_to_virt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
