; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_cache.c___eeh_addr_cache_insert_dev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_cache.c___eeh_addr_cache_insert_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_dn = type { i32 }
%struct.eeh_dev = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"PCI: no pci dn found for dev=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"PCI: no EEH dev found for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"EEH: Skip building address cache\0A\00", align 1
@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @__eeh_addr_cache_insert_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__eeh_addr_cache_insert_dev(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dn*, align 8
  %4 = alloca %struct.eeh_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pci_dn* @pci_get_pdn_by_devfn(i32 %11, i32 %14)
  store %struct.pci_dn* %15, %struct.pci_dn** %3, align 8
  %16 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %17 = icmp ne %struct.pci_dn* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i32 @pci_name(%struct.pci_dev* %19)
  %21 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %86

22:                                               ; preds = %1
  %23 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %24 = call %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn* %23)
  store %struct.eeh_dev* %24, %struct.eeh_dev** %4, align 8
  %25 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %26 = icmp ne %struct.eeh_dev* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = call i32 @pci_name(%struct.pci_dev* %28)
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %86

31:                                               ; preds = %22
  %32 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %33 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %86

40:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %83, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %86

45:                                               ; preds = %41
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @pci_resource_start(%struct.pci_dev* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @pci_resource_end(%struct.pci_dev* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @pci_resource_flags(%struct.pci_dev* %52, i32 %53)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @IORESOURCE_IO, align 8
  %57 = load i64, i64* @IORESOURCE_MEM, align 8
  %58 = or i64 %56, %57
  %59 = and i64 %55, %58
  %60 = icmp eq i64 0, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  br label %83

62:                                               ; preds = %45
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = xor i32 %66, -1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = xor i32 %73, -1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %69, %65, %62
  br label %83

77:                                               ; preds = %72
  %78 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @eeh_addr_cache_insert(%struct.pci_dev* %78, i32 %79, i32 %80, i64 %81)
  br label %83

83:                                               ; preds = %77, %76, %61
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %41

86:                                               ; preds = %18, %27, %36, %41
  ret void
}

declare dso_local %struct.pci_dn* @pci_get_pdn_by_devfn(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @eeh_addr_cache_insert(%struct.pci_dev*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
