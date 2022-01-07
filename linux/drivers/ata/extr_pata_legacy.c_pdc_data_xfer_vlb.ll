; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_legacy.c_pdc_data_xfer_vlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_legacy.c_pdc_data_xfer_vlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device* }
%struct.ata_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ATA_PFLAG_PIO32 = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*, i8*, i32, i32)* @pdc_data_xfer_vlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_data_xfer_vlb(%struct.ata_queued_cmd* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ata_queued_cmd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_device*, align 8
  %10 = alloca %struct.ata_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 0
  %16 = load %struct.ata_device*, %struct.ata_device** %15, align 8
  store %struct.ata_device* %16, %struct.ata_device** %9, align 8
  %17 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.ata_port*, %struct.ata_port** %20, align 8
  store %struct.ata_port* %21, %struct.ata_port** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 3
  store i32 %23, i32* %11, align 4
  %24 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @ata_id_has_dword_io(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %132

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %132

35:                                               ; preds = %32, %29
  %36 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %37 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ATA_PFLAG_PIO32, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %132

42:                                               ; preds = %35
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @local_irq_save(i64 %43)
  %45 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %46 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ioread8(i32 %48)
  %50 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %51 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ioread8(i32 %53)
  %55 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %56 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ioread8(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @READ, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %42
  %64 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %65 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = lshr i32 %69, 2
  %71 = call i32 @ioread32_rep(i32 %67, i8* %68, i32 %70)
  br label %81

72:                                               ; preds = %42
  %73 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %74 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = lshr i32 %78, 2
  %80 = call i32 @iowrite32_rep(i32 %76, i8* %77, i32 %79)
  br label %81

81:                                               ; preds = %72, %63
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %129

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @READ, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %91 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ioread32(i32 %93)
  %95 = call zeroext i8 @cpu_to_le32(i32 %94)
  store i8 %95, i8* %13, align 1
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = sub i64 0, %101
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @memcpy(i8* %103, i8* %13, i32 %104)
  br label %124

106:                                              ; preds = %85
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @memcpy(i8* %13, i8* %114, i32 %115)
  %117 = load i8, i8* %13, align 1
  %118 = call i32 @le32_to_cpu(i8 zeroext %117)
  %119 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %120 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @iowrite32(i32 %118, i32 %122)
  br label %124

124:                                              ; preds = %106, %89
  %125 = load i32, i32* %11, align 4
  %126 = sub nsw i32 4, %125
  %127 = load i32, i32* %7, align 4
  %128 = add i32 %127, %126
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %124, %81
  %130 = load i64, i64* %12, align 8
  %131 = call i32 @local_irq_restore(i64 %130)
  br label %138

132:                                              ; preds = %35, %32, %4
  %133 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @ata_sff_data_xfer32(%struct.ata_queued_cmd* %133, i8* %134, i32 %135, i32 %136)
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %132, %129
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i64 @ata_id_has_dword_io(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @ioread32_rep(i32, i8*, i32) #1

declare dso_local i32 @iowrite32_rep(i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local zeroext i8 @cpu_to_le32(i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8 zeroext) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @ata_sff_data_xfer32(%struct.ata_queued_cmd*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
