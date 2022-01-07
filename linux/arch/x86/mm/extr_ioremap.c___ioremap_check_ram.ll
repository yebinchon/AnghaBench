; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_ioremap.c___ioremap_check_ram.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_ioremap.c___ioremap_check_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32, i32 }

@IORESOURCE_SYSTEM_RAM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@IORES_MAP_SYSTEM_RAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*)* @__ioremap_check_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ioremap_check_ram(%struct.resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.resource* %0, %struct.resource** %3, align 8
  %7 = load %struct.resource*, %struct.resource** %3, align 8
  %8 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IORESOURCE_SYSTEM_RAM, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @IORESOURCE_SYSTEM_RAM, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.resource*, %struct.resource** %3, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %4, align 8
  %25 = load %struct.resource*, %struct.resource** %3, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %15
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %58, %35
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %4, align 8
  %40 = sub i64 %38, %39
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %43, %44
  %46 = call i64 @pfn_valid(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %49, %50
  %52 = call i32 @pfn_to_page(i64 %51)
  %53 = call i32 @PageReserved(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @IORES_MAP_SYSTEM_RAM, align 4
  store i32 %56, i32* %2, align 4
  br label %63

57:                                               ; preds = %48, %42
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %36

61:                                               ; preds = %36
  br label %62

62:                                               ; preds = %61, %15
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %55, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local i32 @PageReserved(i32) #1

declare dso_local i32 @pfn_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
