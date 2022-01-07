; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_pci_ioda2_table_do_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_pci_ioda2_table_do_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCE_PCI_READ = common dso_local global i32 0, align 4
@TCE_PCI_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32, i64, i64*, i64*)* @pnv_pci_ioda2_table_do_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pnv_pci_ioda2_table_do_alloc_pages(i32 %0, i32 %1, i32 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = shl i64 1, %20
  store i64 %21, i64* %16, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sub i32 %22, 3
  %24 = zext i32 %23 to i64
  %25 = shl i64 1, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32* @pnv_alloc_tce_level(i32 %27, i32 %28)
  store i32* %29, i32** %14, align 8
  %30 = load i64, i64* %16, align 8
  %31 = load i64*, i64** %13, align 8
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = load i32, i32* %10, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %6
  %39 = load i64, i64* %16, align 8
  %40 = load i64*, i64** %12, align 8
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %39
  store i64 %42, i64* %40, align 8
  %43 = load i32*, i32** %14, align 8
  store i32* %43, i32** %7, align 8
  br label %83

44:                                               ; preds = %6
  store i64 0, i64* %18, align 8
  br label %45

45:                                               ; preds = %78, %44
  %46 = load i64, i64* %18, align 8
  %47 = load i32, i32* %17, align 4
  %48 = zext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i64, i64* %11, align 8
  %55 = load i64*, i64** %12, align 8
  %56 = load i64*, i64** %13, align 8
  %57 = call i32* @pnv_pci_ioda2_table_do_alloc_pages(i32 %51, i32 %52, i32 %53, i64 %54, i64* %55, i64* %56)
  store i32* %57, i32** %15, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %81

61:                                               ; preds = %50
  %62 = load i32*, i32** %15, align 8
  %63 = call i32 @__pa(i32* %62)
  %64 = load i32, i32* @TCE_PCI_READ, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @TCE_PCI_WRITE, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @cpu_to_be64(i32 %67)
  %69 = load i32*, i32** %14, align 8
  %70 = load i64, i64* %18, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %68, i32* %71, align 4
  %72 = load i64*, i64** %12, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  br label %81

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %18, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %18, align 8
  br label %45

81:                                               ; preds = %76, %60, %45
  %82 = load i32*, i32** %14, align 8
  store i32* %82, i32** %7, align 8
  br label %83

83:                                               ; preds = %81, %38
  %84 = load i32*, i32** %7, align 8
  ret i32* %84
}

declare dso_local i32* @pnv_alloc_tce_level(i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @__pa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
