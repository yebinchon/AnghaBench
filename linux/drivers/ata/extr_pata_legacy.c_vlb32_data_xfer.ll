; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_legacy.c_vlb32_data_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_legacy.c_vlb32_data_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device* }
%struct.ata_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATA_PFLAG_PIO32 = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*, i8*, i32, i32)* @vlb32_data_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlb32_data_xfer(%struct.ata_queued_cmd* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_queued_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_device*, align 8
  %11 = alloca %struct.ata_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 0
  %16 = load %struct.ata_device*, %struct.ata_device** %15, align 8
  store %struct.ata_device* %16, %struct.ata_device** %10, align 8
  %17 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.ata_port*, %struct.ata_port** %20, align 8
  store %struct.ata_port* %21, %struct.ata_port** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 3
  store i32 %23, i32* %12, align 4
  %24 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @ata_id_has_dword_io(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %112

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %112

35:                                               ; preds = %32, %29
  %36 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %37 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ATA_PFLAG_PIO32, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %112

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @WRITE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %48 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = lshr i32 %52, 2
  %54 = call i32 @iowrite32_rep(i32 %50, i8* %51, i32 %53)
  br label %64

55:                                               ; preds = %42
  %56 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %57 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = lshr i32 %61, 2
  %63 = call i32 @ioread32_rep(i32 %59, i8* %60, i32 %62)
  br label %64

64:                                               ; preds = %55, %46
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %108

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @WRITE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @memcpy(i8* %13, i8* %80, i32 %81)
  %83 = load i8, i8* %13, align 1
  %84 = call i32 @le32_to_cpu(i8 zeroext %83)
  %85 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %86 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @iowrite32(i32 %84, i32 %88)
  br label %107

90:                                               ; preds = %68
  %91 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %92 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ioread32(i32 %94)
  %96 = call zeroext i8 @cpu_to_le32(i32 %95)
  store i8 %96, i8* %13, align 1
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = sub i64 0, %102
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @memcpy(i8* %104, i8* %13, i32 %105)
  br label %107

107:                                              ; preds = %90, %72
  br label %108

108:                                              ; preds = %107, %64
  %109 = load i32, i32* %8, align 4
  %110 = add i32 %109, 3
  %111 = and i32 %110, -4
  store i32 %111, i32* %5, align 4
  br label %118

112:                                              ; preds = %35, %32, %4
  %113 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @ata_sff_data_xfer(%struct.ata_queued_cmd* %113, i8* %114, i32 %115, i32 %116)
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %112, %108
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i64 @ata_id_has_dword_io(i32) #1

declare dso_local i32 @iowrite32_rep(i32, i8*, i32) #1

declare dso_local i32 @ioread32_rep(i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8 zeroext) #1

declare dso_local zeroext i8 @cpu_to_le32(i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @ata_sff_data_xfer(%struct.ata_queued_cmd*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
