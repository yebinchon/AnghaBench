; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_tf_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_tf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ep93xx_pata_data* }
%struct.ep93xx_pata_data = type { i32 }
%struct.ata_taskfile = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@IDECTRL_ADDR_CTL = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@IDECTRL_ADDR_FEATURE = common dso_local global i32 0, align 4
@IDECTRL_ADDR_NSECT = common dso_local global i32 0, align 4
@IDECTRL_ADDR_LBAL = common dso_local global i32 0, align 4
@IDECTRL_ADDR_LBAM = common dso_local global i32 0, align 4
@IDECTRL_ADDR_LBAH = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@IDECTRL_ADDR_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @ep93xx_pata_tf_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_pata_tf_load(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.ep93xx_pata_data*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %10, align 8
  store %struct.ep93xx_pata_data* %11, %struct.ep93xx_pata_data** %5, align 8
  %12 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %13 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %18 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %26 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %27 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @IDECTRL_ADDR_CTL, align 4
  %30 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %25, i64 %28, i32 %29)
  %31 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %32 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %35 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %37 = call i32 @ata_wait_idle(%struct.ata_port* %36)
  br label %38

38:                                               ; preds = %24, %2
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %38
  %42 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %43 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %41
  %49 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %50 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %51 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @IDECTRL_ADDR_FEATURE, align 4
  %54 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %49, i64 %52, i32 %53)
  %55 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %56 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %57 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @IDECTRL_ADDR_NSECT, align 4
  %60 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %55, i64 %58, i32 %59)
  %61 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %62 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %63 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @IDECTRL_ADDR_LBAL, align 4
  %66 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %61, i64 %64, i32 %65)
  %67 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %68 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %69 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @IDECTRL_ADDR_LBAM, align 4
  %72 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %67, i64 %70, i32 %71)
  %73 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %74 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %75 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @IDECTRL_ADDR_LBAH, align 4
  %78 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %73, i64 %76, i32 %77)
  br label %79

79:                                               ; preds = %48, %41, %38
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %79
  %83 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %84 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %85 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @IDECTRL_ADDR_FEATURE, align 4
  %88 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %83, i64 %86, i32 %87)
  %89 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %90 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %91 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %90, i32 0, i32 8
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @IDECTRL_ADDR_NSECT, align 4
  %94 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %89, i64 %92, i32 %93)
  %95 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %96 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %97 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %96, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @IDECTRL_ADDR_LBAL, align 4
  %100 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %95, i64 %98, i32 %99)
  %101 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %102 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %103 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %102, i32 0, i32 10
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @IDECTRL_ADDR_LBAM, align 4
  %106 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %101, i64 %104, i32 %105)
  %107 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %108 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %109 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %108, i32 0, i32 11
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @IDECTRL_ADDR_LBAH, align 4
  %112 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %107, i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %82, %79
  %114 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %115 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %122 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %123 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %122, i32 0, i32 12
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @IDECTRL_ADDR_DEVICE, align 4
  %126 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %121, i64 %124, i32 %125)
  br label %127

127:                                              ; preds = %120, %113
  %128 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %129 = call i32 @ata_wait_idle(%struct.ata_port* %128)
  ret void
}

declare dso_local i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data*, i64, i32) #1

declare dso_local i32 @ata_wait_idle(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
