; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_pci_ioda2_table_do_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_pci_ioda2_table_do_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCE_PCI_READ = common dso_local global i64 0, align 8
@TCE_PCI_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32)* @pnv_pci_ioda2_table_do_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_pci_ioda2_table_do_free_pages(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = ptrtoint i32* %11 to i64
  %13 = load i64, i64* @TCE_PCI_READ, align 8
  %14 = load i64, i64* @TCE_PCI_WRITE, align 8
  %15 = or i64 %13, %14
  %16 = xor i64 %15, -1
  %17 = and i64 %12, %16
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %9, align 8
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %46, %20
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i32*, i32** %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @be64_to_cpu(i32 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @TCE_PCI_READ, align 8
  %35 = load i64, i64* @TCE_PCI_WRITE, align 8
  %36 = or i64 %34, %35
  %37 = and i64 %33, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  br label %46

40:                                               ; preds = %27
  %41 = load i64, i64* %10, align 8
  %42 = call i32* @__va(i64 %41)
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub i32 %44, 1
  call void @pnv_pci_ioda2_table_do_free_pages(i32* %42, i64 %43, i32 %45)
  br label %46

46:                                               ; preds = %40, %39
  %47 = load i64, i64* %8, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %23

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %5, align 8
  %53 = shl i64 %52, 3
  %54 = call i32 @get_order(i64 %53)
  %55 = call i32 @free_pages(i64 %51, i32 %54)
  ret void
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32* @__va(i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
