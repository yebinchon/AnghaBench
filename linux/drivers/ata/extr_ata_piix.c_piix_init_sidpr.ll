; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ata_piix.c_piix_init_sidpr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ata_piix.c_piix_init_sidpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { %struct.ata_port**, i32, %struct.piix_host_priv* }
%struct.ata_port = type { i32, i32*, %struct.ata_link }
%struct.ata_link = type { i32 }
%struct.piix_host_priv = type { i64*, i32 }
%struct.pci_dev = type { i32 }

@IDE = common dso_local global i64 0, align 8
@PIIX_FLAG_SIDPR = common dso_local global i32 0, align 4
@PIIX_SIDPR_BAR = common dso_local global i32 0, align 4
@PIIX_SIDPR_LEN = common dso_local global i64 0, align 8
@DRV_NAME = common dso_local global i32 0, align 4
@SCR_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"SCR access via SIDPR is available but doesn't work\0A\00", align 1
@piix_sidpr_sata_ops = common dso_local global i32 0, align 4
@ATA_FLAG_SLAVE_POSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_host*)* @piix_init_sidpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix_init_sidpr(%struct.ata_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.piix_host_priv*, align 8
  %6 = alloca %struct.ata_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_port*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %3, align 8
  %11 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %12 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.pci_dev* @to_pci_dev(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %4, align 8
  %15 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %16 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %15, i32 0, i32 2
  %17 = load %struct.piix_host_priv*, %struct.piix_host_priv** %16, align 8
  store %struct.piix_host_priv* %17, %struct.piix_host_priv** %5, align 8
  %18 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %19 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %18, i32 0, i32 0
  %20 = load %struct.ata_port**, %struct.ata_port*** %19, align 8
  %21 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %20, i64 0
  %22 = load %struct.ata_port*, %struct.ata_port** %21, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 2
  store %struct.ata_link* %23, %struct.ata_link** %6, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %39, %1
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.piix_host_priv*, %struct.piix_host_priv** %5, align 8
  %29 = getelementptr inbounds %struct.piix_host_priv, %struct.piix_host_priv* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IDE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %146

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %44 = call i64 @piix_no_sidpr(%struct.ata_host* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %146

47:                                               ; preds = %42
  %48 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %49 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %48, i32 0, i32 0
  %50 = load %struct.ata_port**, %struct.ata_port*** %49, align 8
  %51 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %50, i64 0
  %52 = load %struct.ata_port*, %struct.ata_port** %51, align 8
  %53 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PIIX_FLAG_SIDPR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %146

59:                                               ; preds = %47
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = load i32, i32* @PIIX_SIDPR_BAR, align 4
  %62 = call i64 @pci_resource_start(%struct.pci_dev* %60, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = load i32, i32* @PIIX_SIDPR_BAR, align 4
  %67 = call i64 @pci_resource_len(%struct.pci_dev* %65, i32 %66)
  %68 = load i64, i64* @PIIX_SIDPR_LEN, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %59
  store i32 0, i32* %2, align 4
  br label %146

71:                                               ; preds = %64
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = load i32, i32* @PIIX_SIDPR_BAR, align 4
  %74 = shl i32 1, %73
  %75 = load i32, i32* @DRV_NAME, align 4
  %76 = call i64 @pcim_iomap_regions(%struct.pci_dev* %72, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %146

79:                                               ; preds = %71
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = call i32* @pcim_iomap_table(%struct.pci_dev* %80)
  %82 = load i32, i32* @PIIX_SIDPR_BAR, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.piix_host_priv*, %struct.piix_host_priv** %5, align 8
  %87 = getelementptr inbounds %struct.piix_host_priv, %struct.piix_host_priv* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %89 = load i32, i32* @SCR_CONTROL, align 4
  %90 = call i32 @piix_sidpr_scr_read(%struct.ata_link* %88, i32 %89, i32* %7)
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, 3840
  %93 = icmp ne i32 %92, 768
  br i1 %93, label %94, label %113

94:                                               ; preds = %79
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, 768
  store i32 %96, i32* %7, align 4
  %97 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %98 = load i32, i32* @SCR_CONTROL, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @piix_sidpr_scr_write(%struct.ata_link* %97, i32 %98, i32 %99)
  %101 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %102 = load i32, i32* @SCR_CONTROL, align 4
  %103 = call i32 @piix_sidpr_scr_read(%struct.ata_link* %101, i32 %102, i32* %7)
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, 3840
  %106 = icmp ne i32 %105, 768
  br i1 %106, label %107, label %112

107:                                              ; preds = %94
  %108 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %109 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dev_info(i32 %110, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %146

112:                                              ; preds = %94
  br label %113

113:                                              ; preds = %112, %79
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %142, %113
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 2
  br i1 %116, label %117, label %145

117:                                              ; preds = %114
  %118 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %119 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %118, i32 0, i32 0
  %120 = load %struct.ata_port**, %struct.ata_port*** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %120, i64 %122
  %124 = load %struct.ata_port*, %struct.ata_port** %123, align 8
  store %struct.ata_port* %124, %struct.ata_port** %10, align 8
  %125 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %126 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %125, i32 0, i32 1
  store i32* @piix_sidpr_sata_ops, i32** %126, align 8
  %127 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %128 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ATA_FLAG_SLAVE_POSS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %117
  %134 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %135 = call i32 @ata_slave_link_init(%struct.ata_port* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %2, align 4
  br label %146

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %117
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %114

145:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %138, %107, %78, %70, %58, %46, %37
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @piix_no_sidpr(%struct.ata_host*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @piix_sidpr_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i32 @piix_sidpr_scr_write(%struct.ata_link*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @ata_slave_link_init(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
