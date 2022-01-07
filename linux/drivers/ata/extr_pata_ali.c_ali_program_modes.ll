; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ali.c_ali_program_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ali.c_ali_program_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32 }
%struct.ata_timing = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, %struct.ata_timing*, i32)* @ali_program_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ali_program_modes(%struct.ata_port* %0, %struct.ata_device* %1, %struct.ata_timing* %2, i32 %3) #0 {
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca %struct.ata_timing*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %5, align 8
  store %struct.ata_device* %1, %struct.ata_device** %6, align 8
  store %struct.ata_timing* %2, %struct.ata_timing** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.pci_dev* @to_pci_dev(i32 %20)
  store %struct.pci_dev* %21, %struct.pci_dev** %9, align 8
  %22 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 4, %24
  %26 = add nsw i32 88, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 4, %29
  %31 = add nsw i32 89, %30
  store i32 %31, i32* %11, align 4
  %32 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 4, %34
  %36 = add nsw i32 90, %35
  %37 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %38 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %12, align 4
  %41 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %42 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 86, %43
  store i32 %44, i32* %13, align 4
  %45 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %46 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 4, %47
  store i32 %48, i32* %14, align 4
  %49 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %50 = icmp ne %struct.ata_timing* %49, null
  br i1 %50, label %51, label %115

51:                                               ; preds = %4
  %52 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %53 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clamp_val(i32 %54, i32 1, i32 8)
  %56 = and i32 %55, 7
  %57 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %58 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %60 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @clamp_val(i32 %61, i32 1, i32 8)
  %63 = and i32 %62, 7
  %64 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %65 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %67 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @clamp_val(i32 %68, i32 1, i32 16)
  %70 = and i32 %69, 15
  %71 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %72 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %74 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @clamp_val(i32 %75, i32 1, i32 8)
  %77 = and i32 %76, 7
  %78 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %79 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %81 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clamp_val(i32 %82, i32 1, i32 16)
  %84 = and i32 %83, 15
  %85 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %86 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %90 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pci_write_config_byte(%struct.pci_dev* %87, i32 %88, i32 %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %96 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 4
  %99 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %100 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %98, %101
  %103 = call i32 @pci_write_config_byte(%struct.pci_dev* %93, i32 %94, i32 %102)
  %104 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %107 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 4
  %110 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %111 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %109, %112
  %114 = call i32 @pci_write_config_byte(%struct.pci_dev* %104, i32 %105, i32 %113)
  br label %115

115:                                              ; preds = %51, %4
  %116 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @pci_read_config_byte(%struct.pci_dev* %116, i32 %117, i32* %15)
  %119 = load i32, i32* %14, align 4
  %120 = shl i32 15, %119
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %15, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %14, align 4
  %126 = shl i32 %124, %125
  %127 = load i32, i32* %15, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %15, align 4
  %129 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @pci_write_config_byte(%struct.pci_dev* %129, i32 %130, i32 %131)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
