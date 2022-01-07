; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_eeh_pseries.c_pseries_eeh_find_ecap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_eeh_pseries.c_pseries_eeh_find_ecap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { i32 }
%struct.eeh_dev = type { i32 }

@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dn*, i32)* @pseries_eeh_find_ecap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_eeh_find_ecap(%struct.pci_dn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.eeh_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dn* %0, %struct.pci_dn** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %11 = call %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn* %10)
  store %struct.eeh_dev* %11, %struct.eeh_dev** %6, align 8
  store i32 256, i32* %8, align 4
  store i32 480, i32* %9, align 4
  %12 = load %struct.eeh_dev*, %struct.eeh_dev** %6, align 8
  %13 = icmp ne %struct.eeh_dev* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.eeh_dev*, %struct.eeh_dev** %6, align 8
  %16 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %62

20:                                               ; preds = %14
  %21 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @rtas_read_config(%struct.pci_dn* %21, i32 %22, i32 4, i32* %7)
  %24 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %62

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %62

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %60, %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %9, align 4
  %36 = icmp sgt i32 %34, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @PCI_EXT_CAP_ID(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %62

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @PCI_EXT_CAP_NEXT(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 256
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %61

53:                                               ; preds = %47
  %54 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @rtas_read_config(%struct.pci_dn* %54, i32 %55, i32 4, i32* %7)
  %57 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %61

60:                                               ; preds = %53
  br label %33

61:                                               ; preds = %59, %52, %33
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %45, %30, %26, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn*) #1

declare dso_local i64 @rtas_read_config(%struct.pci_dn*, i32, i32, i32*) #1

declare dso_local i32 @PCI_EXT_CAP_ID(i32) #1

declare dso_local i32 @PCI_EXT_CAP_NEXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
