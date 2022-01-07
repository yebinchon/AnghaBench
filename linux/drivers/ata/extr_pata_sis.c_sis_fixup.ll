; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sis.c_sis_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sis.c_sis_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sis_chipset = type { i32* }

@sis_info133 = common dso_local global i32 0, align 4
@sis_info133_early = common dso_local global i32 0, align 4
@sis_info100 = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@sis_info66 = common dso_local global i32 0, align 4
@sis_info100_early = common dso_local global i32 0, align 4
@sis_info33 = common dso_local global i32 0, align 4
@PCI_CLASS_PROG = common dso_local global i32 0, align 4
@sis_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.sis_chipset*)* @sis_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_fixup(%struct.pci_dev* %0, %struct.sis_chipset* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.sis_chipset*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.sis_chipset* %1, %struct.sis_chipset** %4, align 8
  %7 = load %struct.sis_chipset*, %struct.sis_chipset** %4, align 8
  %8 = getelementptr inbounds %struct.sis_chipset, %struct.sis_chipset* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, @sis_info133
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i32 @pci_read_config_word(%struct.pci_dev* %12, i32 80, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, -9
  %21 = call i32 @pci_write_config_word(%struct.pci_dev* %18, i32 80, i32 %20)
  br label %22

22:                                               ; preds = %17, %11
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = call i32 @pci_read_config_word(%struct.pci_dev* %23, i32 82, i32* %5)
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, -9
  %32 = call i32 @pci_write_config_word(%struct.pci_dev* %29, i32 82, i32 %31)
  br label %33

33:                                               ; preds = %28, %22
  br label %127

34:                                               ; preds = %2
  %35 = load %struct.sis_chipset*, %struct.sis_chipset** %4, align 8
  %36 = getelementptr inbounds %struct.sis_chipset, %struct.sis_chipset* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, @sis_info133_early
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.sis_chipset*, %struct.sis_chipset** %4, align 8
  %41 = getelementptr inbounds %struct.sis_chipset, %struct.sis_chipset* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, @sis_info100
  br i1 %43, label %44, label %59

44:                                               ; preds = %39, %34
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %47 = call i32 @pci_write_config_byte(%struct.pci_dev* %45, i32 %46, i32 128)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = call i32 @pci_read_config_byte(%struct.pci_dev* %48, i32 73, i32* %6)
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, 1
  %57 = call i32 @pci_write_config_byte(%struct.pci_dev* %54, i32 73, i32 %56)
  br label %58

58:                                               ; preds = %53, %44
  br label %127

59:                                               ; preds = %39
  %60 = load %struct.sis_chipset*, %struct.sis_chipset** %4, align 8
  %61 = getelementptr inbounds %struct.sis_chipset, %struct.sis_chipset* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, @sis_info66
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.sis_chipset*, %struct.sis_chipset** %4, align 8
  %66 = getelementptr inbounds %struct.sis_chipset, %struct.sis_chipset* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, @sis_info100_early
  br i1 %68, label %69, label %84

69:                                               ; preds = %64, %59
  %70 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %71 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %72 = call i32 @pci_write_config_byte(%struct.pci_dev* %70, i32 %71, i32 128)
  %73 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %74 = call i32 @pci_read_config_byte(%struct.pci_dev* %73, i32 82, i32* %6)
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %69
  %79 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, 4
  %82 = call i32 @pci_write_config_byte(%struct.pci_dev* %79, i32 82, i32 %81)
  br label %83

83:                                               ; preds = %78, %69
  br label %127

84:                                               ; preds = %64
  %85 = load %struct.sis_chipset*, %struct.sis_chipset** %4, align 8
  %86 = getelementptr inbounds %struct.sis_chipset, %struct.sis_chipset* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, @sis_info33
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %91 = load i32, i32* @PCI_CLASS_PROG, align 4
  %92 = call i32 @pci_read_config_byte(%struct.pci_dev* %90, i32 %91, i32* %6)
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, 15
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %98 = load i32, i32* @PCI_CLASS_PROG, align 4
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %99, 240
  %101 = call i32 @pci_write_config_byte(%struct.pci_dev* %97, i32 %98, i32 %100)
  br label %102

102:                                              ; preds = %96, %89
  br label %103

103:                                              ; preds = %102, %84
  %104 = load %struct.sis_chipset*, %struct.sis_chipset** %4, align 8
  %105 = getelementptr inbounds %struct.sis_chipset, %struct.sis_chipset* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, @sis_info
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load %struct.sis_chipset*, %struct.sis_chipset** %4, align 8
  %110 = getelementptr inbounds %struct.sis_chipset, %struct.sis_chipset* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, @sis_info33
  br i1 %112, label %113, label %125

113:                                              ; preds = %108, %103
  %114 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %115 = call i32 @pci_read_config_byte(%struct.pci_dev* %114, i32 82, i32* %6)
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, 8
  %123 = call i32 @pci_write_config_byte(%struct.pci_dev* %120, i32 82, i32 %122)
  br label %124

124:                                              ; preds = %119, %113
  br label %127

125:                                              ; preds = %108
  %126 = call i32 (...) @BUG()
  br label %127

127:                                              ; preds = %125, %124, %83, %58, %33
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
