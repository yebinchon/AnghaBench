; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_tf_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_tf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ep93xx_pata_data* }
%struct.ep93xx_pata_data = type { i32 }
%struct.ata_taskfile = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@IDECTRL_ADDR_FEATURE = common dso_local global i32 0, align 4
@IDECTRL_ADDR_NSECT = common dso_local global i32 0, align 4
@IDECTRL_ADDR_LBAL = common dso_local global i32 0, align 4
@IDECTRL_ADDR_LBAM = common dso_local global i32 0, align 4
@IDECTRL_ADDR_LBAH = common dso_local global i32 0, align 4
@IDECTRL_ADDR_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_HOB = common dso_local global i32 0, align 4
@IDECTRL_ADDR_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @ep93xx_pata_tf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_pata_tf_read(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.ep93xx_pata_data*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %9, align 8
  store %struct.ep93xx_pata_data* %10, %struct.ep93xx_pata_data** %5, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = call i32 @ep93xx_pata_check_status(%struct.ata_port* %11)
  %13 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %14 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 13
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %16 = load i32, i32* @IDECTRL_ADDR_FEATURE, align 4
  %17 = call i8* @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %15, i32 %16)
  %18 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %19 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %18, i32 0, i32 12
  store i8* %17, i8** %19, align 8
  %20 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %21 = load i32, i32* @IDECTRL_ADDR_NSECT, align 4
  %22 = call i8* @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %20, i32 %21)
  %23 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %24 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %23, i32 0, i32 11
  store i8* %22, i8** %24, align 8
  %25 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %26 = load i32, i32* @IDECTRL_ADDR_LBAL, align 4
  %27 = call i8* @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %25, i32 %26)
  %28 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %29 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %28, i32 0, i32 10
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %31 = load i32, i32* @IDECTRL_ADDR_LBAM, align 4
  %32 = call i8* @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %30, i32 %31)
  %33 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %34 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %33, i32 0, i32 9
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %36 = load i32, i32* @IDECTRL_ADDR_LBAH, align 4
  %37 = call i8* @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %35, i32 %36)
  %38 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %39 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %41 = load i32, i32* @IDECTRL_ADDR_DEVICE, align 4
  %42 = call i8* @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %40, i32 %41)
  %43 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %44 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %46 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %96

51:                                               ; preds = %2
  %52 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %53 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %54 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ATA_HOB, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @IDECTRL_ADDR_CTL, align 4
  %59 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %52, i32 %57, i32 %58)
  %60 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %61 = load i32, i32* @IDECTRL_ADDR_FEATURE, align 4
  %62 = call i8* @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %60, i32 %61)
  %63 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %64 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %66 = load i32, i32* @IDECTRL_ADDR_NSECT, align 4
  %67 = call i8* @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %65, i32 %66)
  %68 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %69 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %71 = load i32, i32* @IDECTRL_ADDR_LBAL, align 4
  %72 = call i8* @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %70, i32 %71)
  %73 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %74 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %76 = load i32, i32* @IDECTRL_ADDR_LBAM, align 4
  %77 = call i8* @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %75, i32 %76)
  %78 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %79 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %81 = load i32, i32* @IDECTRL_ADDR_LBAH, align 4
  %82 = call i8* @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %80, i32 %81)
  %83 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %84 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %86 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %87 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IDECTRL_ADDR_CTL, align 4
  %90 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %85, i32 %88, i32 %89)
  %91 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %92 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %95 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %51, %2
  ret void
}

declare dso_local i32 @ep93xx_pata_check_status(%struct.ata_port*) #1

declare dso_local i8* @ep93xx_pata_read_reg(%struct.ep93xx_pata_data*, i32) #1

declare dso_local i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
