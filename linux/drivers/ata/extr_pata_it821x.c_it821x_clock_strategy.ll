; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_it821x.c_it821x_clock_strategy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_it821x.c_it821x_clock_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.it821x_dev*, %struct.TYPE_2__* }
%struct.it821x_dev = type { i32**, i32, i64*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32 }
%struct.pci_dev = type { i32 }

@ATA_ANY = common dso_local global i32 0, align 4
@ATA_66 = common dso_local global i32 0, align 4
@ATA_50 = common dso_local global i32 0, align 4
@UDMA_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @it821x_clock_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it821x_clock_strategy(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.it821x_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %5, align 8
  %19 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 1
  %21 = load %struct.it821x_dev*, %struct.it821x_dev** %20, align 8
  store %struct.it821x_dev* %21, %struct.it821x_dev** %6, align 8
  %22 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %26 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %25)
  store %struct.ata_device* %26, %struct.ata_device** %8, align 8
  store i32 0, i32* %12, align 4
  %27 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %28 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %35 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %33, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %2
  %43 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %44 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %51 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  br label %72

57:                                               ; preds = %2
  %58 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %59 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %66 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %57, %42
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @ATA_ANY, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @ATA_ANY, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %191

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %86 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %191

90:                                               ; preds = %83
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @ATA_66, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @ATA_66, align 4
  %96 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %97 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  br label %102

98:                                               ; preds = %90
  %99 = load i32, i32* @ATA_50, align 4
  %100 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %101 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  store i32 1, i32* %12, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %104 = call i32 @pci_read_config_byte(%struct.pci_dev* %103, i32 80, i32* %11)
  %105 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %106 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 1, %107
  %109 = shl i32 1, %108
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %11, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %115 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 1, %116
  %118 = shl i32 %113, %117
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @pci_write_config_byte(%struct.pci_dev* %121, i32 80, i32 %122)
  %124 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %125 = icmp ne %struct.ata_device* %124, null
  br i1 %125, label %126, label %160

126:                                              ; preds = %102
  %127 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %128 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sub nsw i32 1, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @UDMA_OFF, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %160

137:                                              ; preds = %126
  %138 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %139 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %140 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %141 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %140, i32 0, i32 2
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 1, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @it821x_program_udma(%struct.ata_port* %138, %struct.ata_device* %139, i64 %147)
  %149 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %150 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %151 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %152 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sub nsw i32 1, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @it821x_program(%struct.ata_port* %149, %struct.ata_device* %150, i32 %158)
  br label %160

160:                                              ; preds = %137, %126, %102
  %161 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %162 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %161, i32 0, i32 2
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @UDMA_OFF, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %191

170:                                              ; preds = %160
  %171 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %172 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %173 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %174 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %173, i32 0, i32 2
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @it821x_program_udma(%struct.ata_port* %171, %struct.ata_device* %172, i64 %179)
  %181 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %182 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %183 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %184 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @it821x_program(%struct.ata_port* %181, %struct.ata_device* %182, i32 %189)
  br label %191

191:                                              ; preds = %82, %89, %170, %160
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @it821x_program_udma(%struct.ata_port*, %struct.ata_device*, i64) #1

declare dso_local i32 @it821x_program(%struct.ata_port*, %struct.ata_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
