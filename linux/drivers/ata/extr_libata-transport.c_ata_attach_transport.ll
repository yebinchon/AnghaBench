; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-transport.c_ata_attach_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-transport.c_ata_attach_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.scsi_transport_template = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32**, i32* }
%struct.ata_internal = type { %struct.scsi_transport_template, i32**, i32**, i32**, %struct.TYPE_7__, %struct.TYPE_7__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ata_scsi_error = common dso_local global i32 0, align 4
@ata_scsi_user_scan = common dso_local global i32 0, align 4
@ata_port_class = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ata_tport_match = common dso_local global i32 0, align 4
@ata_link_class = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@ata_tlink_match = common dso_local global i32 0, align 4
@ata_dev_class = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ata_tdev_match = common dso_local global i32 0, align 4
@nr_pmp_links = common dso_local global i32 0, align 4
@idle_irq = common dso_local global i32 0, align 4
@port_no = common dso_local global i32 0, align 4
@ATA_PORT_ATTRS = common dso_local global i32 0, align 4
@hw_sata_spd_limit = common dso_local global i32 0, align 4
@sata_spd_limit = common dso_local global i32 0, align 4
@sata_spd = common dso_local global i32 0, align 4
@ATA_LINK_ATTRS = common dso_local global i32 0, align 4
@class = common dso_local global i32 0, align 4
@pio_mode = common dso_local global i32 0, align 4
@dma_mode = common dso_local global i32 0, align 4
@xfer_mode = common dso_local global i32 0, align 4
@spdn_cnt = common dso_local global i32 0, align 4
@ering = common dso_local global i32 0, align 4
@id = common dso_local global i32 0, align 4
@gscr = common dso_local global i32 0, align 4
@trim = common dso_local global i32 0, align 4
@ATA_DEV_ATTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_transport_template* @ata_attach_transport() #0 {
  %1 = alloca %struct.scsi_transport_template*, align 8
  %2 = alloca %struct.ata_internal*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.ata_internal* @kzalloc(i32 104, i32 %4)
  store %struct.ata_internal* %5, %struct.ata_internal** %2, align 8
  %6 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %7 = icmp ne %struct.ata_internal* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.scsi_transport_template* null, %struct.scsi_transport_template** %1, align 8
  br label %147

9:                                                ; preds = %0
  %10 = load i32, i32* @ata_scsi_error, align 4
  %11 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %12 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %12, i32 0, i32 2
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @ata_scsi_user_scan, align 4
  %15 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %16 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 8
  %18 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %19 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %18, i32 0, i32 3
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %23 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32** %21, i32*** %26, align 8
  %27 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %28 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ata_port_class, i32 0, i32 0), i32** %31, align 8
  %32 = load i32, i32* @ata_tport_match, align 4
  %33 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %34 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 8
  %38 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %39 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %39, i32 0, i32 0
  %41 = call i32 @transport_container_register(%struct.TYPE_7__* %40)
  %42 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %43 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ata_link_class, i32 0, i32 0), i32** %45, align 8
  %46 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %47 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %46, i32 0, i32 2
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %51 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32** %49, i32*** %53, align 8
  %54 = load i32, i32* @ata_tlink_match, align 4
  %55 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %56 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  %59 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %60 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %59, i32 0, i32 5
  %61 = call i32 @transport_container_register(%struct.TYPE_7__* %60)
  %62 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %63 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ata_dev_class, i32 0, i32 0), i32** %65, align 8
  %66 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %67 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 0
  %70 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %71 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32** %69, i32*** %73, align 8
  %74 = load i32, i32* @ata_tdev_match, align 4
  %75 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %76 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %80 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %79, i32 0, i32 4
  %81 = call i32 @transport_container_register(%struct.TYPE_7__* %80)
  store i32 0, i32* %3, align 4
  %82 = load i32, i32* @nr_pmp_links, align 4
  %83 = call i32 @SETUP_PORT_ATTRIBUTE(i32 %82)
  %84 = load i32, i32* @idle_irq, align 4
  %85 = call i32 @SETUP_PORT_ATTRIBUTE(i32 %84)
  %86 = load i32, i32* @port_no, align 4
  %87 = call i32 @SETUP_PORT_ATTRIBUTE(i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @ATA_PORT_ATTRS, align 4
  %90 = icmp sgt i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @BUG_ON(i32 %91)
  %93 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %94 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %93, i32 0, i32 3
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  store i32* null, i32** %98, align 8
  store i32 0, i32* %3, align 4
  %99 = load i32, i32* @hw_sata_spd_limit, align 4
  %100 = call i32 @SETUP_LINK_ATTRIBUTE(i32 %99)
  %101 = load i32, i32* @sata_spd_limit, align 4
  %102 = call i32 @SETUP_LINK_ATTRIBUTE(i32 %101)
  %103 = load i32, i32* @sata_spd, align 4
  %104 = call i32 @SETUP_LINK_ATTRIBUTE(i32 %103)
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @ATA_LINK_ATTRS, align 4
  %107 = icmp sgt i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @BUG_ON(i32 %108)
  %110 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %111 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %110, i32 0, i32 2
  %112 = load i32**, i32*** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  store i32* null, i32** %115, align 8
  store i32 0, i32* %3, align 4
  %116 = load i32, i32* @class, align 4
  %117 = call i32 @SETUP_DEV_ATTRIBUTE(i32 %116)
  %118 = load i32, i32* @pio_mode, align 4
  %119 = call i32 @SETUP_DEV_ATTRIBUTE(i32 %118)
  %120 = load i32, i32* @dma_mode, align 4
  %121 = call i32 @SETUP_DEV_ATTRIBUTE(i32 %120)
  %122 = load i32, i32* @xfer_mode, align 4
  %123 = call i32 @SETUP_DEV_ATTRIBUTE(i32 %122)
  %124 = load i32, i32* @spdn_cnt, align 4
  %125 = call i32 @SETUP_DEV_ATTRIBUTE(i32 %124)
  %126 = load i32, i32* @ering, align 4
  %127 = call i32 @SETUP_DEV_ATTRIBUTE(i32 %126)
  %128 = load i32, i32* @id, align 4
  %129 = call i32 @SETUP_DEV_ATTRIBUTE(i32 %128)
  %130 = load i32, i32* @gscr, align 4
  %131 = call i32 @SETUP_DEV_ATTRIBUTE(i32 %130)
  %132 = load i32, i32* @trim, align 4
  %133 = call i32 @SETUP_DEV_ATTRIBUTE(i32 %132)
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @ATA_DEV_ATTRS, align 4
  %136 = icmp sgt i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @BUG_ON(i32 %137)
  %139 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %140 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %139, i32 0, i32 1
  %141 = load i32**, i32*** %140, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  store i32* null, i32** %144, align 8
  %145 = load %struct.ata_internal*, %struct.ata_internal** %2, align 8
  %146 = getelementptr inbounds %struct.ata_internal, %struct.ata_internal* %145, i32 0, i32 0
  store %struct.scsi_transport_template* %146, %struct.scsi_transport_template** %1, align 8
  br label %147

147:                                              ; preds = %9, %8
  %148 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %1, align 8
  ret %struct.scsi_transport_template* %148
}

declare dso_local %struct.ata_internal* @kzalloc(i32, i32) #1

declare dso_local i32 @transport_container_register(%struct.TYPE_7__*) #1

declare dso_local i32 @SETUP_PORT_ATTRIBUTE(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @SETUP_LINK_ATTRIBUTE(i32) #1

declare dso_local i32 @SETUP_DEV_ATTRIBUTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
