; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel/extr_iosf_mbi.c_iosf_mbi_pci_write_mdr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel/extr_iosf_mbi.c_iosf_mbi_pci_write_mdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mbi_pdev = common dso_local global %struct.TYPE_3__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@MBI_MDR_OFFSET = common dso_local global i32 0, align 4
@MBI_MCRX_OFFSET = common dso_local global i32 0, align 4
@MBI_MCR_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"PCI config access failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @iosf_mbi_pci_write_mdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iosf_mbi_pci_write_mdr(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mbi_pdev, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %49

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mbi_pdev, align 8
  %16 = load i32, i32* @MBI_MDR_OFFSET, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @pci_write_config_dword(%struct.TYPE_3__* %15, i32 %16, i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %43

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mbi_pdev, align 8
  %27 = load i32, i32* @MBI_MCRX_OFFSET, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @pci_write_config_dword(%struct.TYPE_3__* %26, i32 %27, i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %43

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mbi_pdev, align 8
  %36 = load i32, i32* @MBI_MCR_OFFSET, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @pci_write_config_dword(%struct.TYPE_3__* %35, i32 %36, i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %49

43:                                               ; preds = %41, %32, %21
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mbi_pdev, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %42, %11
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_3__*, i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
