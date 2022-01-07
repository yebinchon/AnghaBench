; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ali.c_ali_init_chipset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ali.c_ali_init_chipset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64, i32 }

@PCI_VENDOR_ID_AL = common dso_local global i64 0, align 8
@ali_isa_bridge = common dso_local global %struct.pci_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ali_init_chipset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ali_init_chipset(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sle i32 %7, 32
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call i32 @pci_read_config_byte(%struct.pci_dev* %10, i32 83, i32* %3)
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, 3
  store i32 %13, i32* %3, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pci_write_config_byte(%struct.pci_dev* %14, i32 83, i32 %15)
  br label %62

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = call i32 @pci_read_config_byte(%struct.pci_dev* %18, i32 74, i32* %3)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, 32
  %23 = call i32 @pci_write_config_byte(%struct.pci_dev* %20, i32 74, i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = call i32 @pci_read_config_byte(%struct.pci_dev* %24, i32 75, i32* %3)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 194
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 127
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %17
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 194
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, 8
  %45 = call i32 @pci_write_config_byte(%struct.pci_dev* %42, i32 75, i32 %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = call i32 @pci_read_config_byte(%struct.pci_dev* %46, i32 83, i32* %3)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 199
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, 3
  store i32 %54, i32* %3, align 4
  br label %58

55:                                               ; preds = %41
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @pci_write_config_byte(%struct.pci_dev* %59, i32 83, i32 %60)
  br label %62

62:                                               ; preds = %58, %9
  %63 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pci_domain_nr(i32 %65)
  %67 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %68 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %66, i32 0, i32 %67)
  store %struct.pci_dev* %68, %struct.pci_dev** %4, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = icmp ne %struct.pci_dev* %69, null
  br i1 %70, label %71, label %109

71:                                               ; preds = %62
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PCI_VENDOR_ID_AL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %109

77:                                               ; preds = %71
  %78 = load %struct.pci_dev*, %struct.pci_dev** @ali_isa_bridge, align 8
  %79 = icmp ne %struct.pci_dev* %78, null
  br i1 %79, label %80, label %109

80:                                               ; preds = %77
  %81 = load %struct.pci_dev*, %struct.pci_dev** @ali_isa_bridge, align 8
  %82 = call i32 @pci_read_config_byte(%struct.pci_dev* %81, i32 121, i32* %3)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 194
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.pci_dev*, %struct.pci_dev** @ali_isa_bridge, align 8
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, 4
  %91 = call i32 @pci_write_config_byte(%struct.pci_dev* %88, i32 121, i32 %90)
  br label %108

92:                                               ; preds = %80
  %93 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sgt i32 %95, 194
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %100, 197
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.pci_dev*, %struct.pci_dev** @ali_isa_bridge, align 8
  %104 = load i32, i32* %3, align 4
  %105 = or i32 %104, 2
  %106 = call i32 @pci_write_config_byte(%struct.pci_dev* %103, i32 121, i32 %105)
  br label %107

107:                                              ; preds = %102, %97, %92
  br label %108

108:                                              ; preds = %107, %87
  br label %109

109:                                              ; preds = %108, %77, %71, %62
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = call i32 @pci_dev_put(%struct.pci_dev* %110)
  %112 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %113 = call i32 @ata_pci_bmdma_clear_simplex(%struct.pci_dev* %112)
  ret void
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @ata_pci_bmdma_clear_simplex(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
