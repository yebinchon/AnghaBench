; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_i386.c_pcibios_allocate_dev_resources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_i386.c_pcibios_allocate_dev_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.resource* }
%struct.resource = type { i32, i64, i32, i64 }
%struct.pci_check_idx_range = type { i32, i32, i32, i32 }

@PCI_STD_RESOURCES = common dso_local global i32 0, align 4
@PCI_STD_RESOURCE_END = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BAR %d: reserving %pr (d=%d, p=%d)\0A\00", align 1
@IORESOURCE_PCI_FIXED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"BAR %d %pR is immovable\0A\00", align 1
@PCI_ROM_RESOURCE = common dso_local global i64 0, align 8
@IORESOURCE_ROM_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"disabling ROM %pR\0A\00", align 1
@PCI_ROM_ADDRESS_ENABLE = common dso_local global i32 0, align 4
@PCI_IOV_RESOURCES = common dso_local global i32 0, align 4
@PCI_IOV_RESOURCE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @pcibios_allocate_dev_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcibios_allocate_dev_resources(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca [1 x %struct.pci_check_idx_range], align 16
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = getelementptr inbounds [1 x %struct.pci_check_idx_range], [1 x %struct.pci_check_idx_range]* %10, i64 0, i64 0
  %13 = getelementptr inbounds %struct.pci_check_idx_range, %struct.pci_check_idx_range* %12, i32 0, i32 0
  %14 = load i32, i32* @PCI_STD_RESOURCES, align 4
  store i32 %14, i32* %13, align 16
  %15 = getelementptr inbounds %struct.pci_check_idx_range, %struct.pci_check_idx_range* %12, i32 0, i32 1
  %16 = load i32, i32* @PCI_STD_RESOURCE_END, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.pci_check_idx_range, %struct.pci_check_idx_range* %12, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.pci_check_idx_range, %struct.pci_check_idx_range* %12, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = load i32, i32* @PCI_COMMAND, align 4
  %21 = call i32 @pci_read_config_word(%struct.pci_dev* %19, i32 %20, i32* %8)
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %134, %2
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds [1 x %struct.pci_check_idx_range], [1 x %struct.pci_check_idx_range]* %10, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(%struct.pci_check_idx_range* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %137

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1 x %struct.pci_check_idx_range], [1 x %struct.pci_check_idx_range]* %10, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.pci_check_idx_range, %struct.pci_check_idx_range* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 16
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %130, %27
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [1 x %struct.pci_check_idx_range], [1 x %struct.pci_check_idx_range]* %10, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.pci_check_idx_range, %struct.pci_check_idx_range* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %34, %39
  br i1 %40, label %41, label %133

41:                                               ; preds = %33
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 2
  %44 = load %struct.resource*, %struct.resource** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %44, i64 %46
  store %struct.resource* %47, %struct.resource** %9, align 8
  %48 = load %struct.resource*, %struct.resource** %9, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %130

53:                                               ; preds = %41
  %54 = load %struct.resource*, %struct.resource** %9, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %130

59:                                               ; preds = %53
  %60 = load %struct.resource*, %struct.resource** %9, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IORESOURCE_IO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @PCI_COMMAND_IO, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %6, align 4
  br label %80

73:                                               ; preds = %59
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %73, %66
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %129

84:                                               ; preds = %80
  %85 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.resource*, %struct.resource** %9, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %87, %struct.resource* %88, i32 %89, i32 %90)
  %92 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i64 @pci_claim_resource(%struct.pci_dev* %92, i32 %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %84
  %97 = load %struct.resource*, %struct.resource** %9, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 1
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.resource*, %struct.resource** %9, align 8
  %108 = call i32 @dev_info(i32* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %106, %struct.resource* %107)
  br label %127

109:                                              ; preds = %96
  %110 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.resource*, %struct.resource** %9, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @pcibios_save_fw_addr(%struct.pci_dev* %110, i32 %111, i64 %114)
  %116 = load %struct.resource*, %struct.resource** %9, align 8
  %117 = getelementptr inbounds %struct.resource, %struct.resource* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.resource*, %struct.resource** %9, align 8
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = sub nsw i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 8
  %125 = load %struct.resource*, %struct.resource** %9, align 8
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %109, %103
  br label %128

128:                                              ; preds = %127, %84
  br label %129

129:                                              ; preds = %128, %80
  br label %130

130:                                              ; preds = %129, %58, %52
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %33

133:                                              ; preds = %33
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %22

137:                                              ; preds = %22
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %178, label %140

140:                                              ; preds = %137
  %141 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 2
  %143 = load %struct.resource*, %struct.resource** %142, align 8
  %144 = load i64, i64* @PCI_ROM_RESOURCE, align 8
  %145 = getelementptr inbounds %struct.resource, %struct.resource* %143, i64 %144
  store %struct.resource* %145, %struct.resource** %9, align 8
  %146 = load %struct.resource*, %struct.resource** %9, align 8
  %147 = getelementptr inbounds %struct.resource, %struct.resource* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @IORESOURCE_ROM_ENABLE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %140
  %153 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 1
  %155 = load %struct.resource*, %struct.resource** %9, align 8
  %156 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %struct.resource* %155)
  %157 = load i32, i32* @IORESOURCE_ROM_ENABLE, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.resource*, %struct.resource** %9, align 8
  %160 = getelementptr inbounds %struct.resource, %struct.resource* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %164 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %165 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @pci_read_config_dword(%struct.pci_dev* %163, i32 %166, i32* %11)
  %168 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %169 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %170 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @PCI_ROM_ADDRESS_ENABLE, align 4
  %174 = xor i32 %173, -1
  %175 = and i32 %172, %174
  %176 = call i32 @pci_write_config_dword(%struct.pci_dev* %168, i32 %171, i32 %175)
  br label %177

177:                                              ; preds = %152, %140
  br label %178

178:                                              ; preds = %177, %137
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.pci_check_idx_range*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i64 @pci_claim_resource(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, %struct.resource*) #1

declare dso_local i32 @pcibios_save_fw_addr(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
