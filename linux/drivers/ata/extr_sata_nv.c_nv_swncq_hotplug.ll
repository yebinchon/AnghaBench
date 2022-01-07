; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_swncq_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_swncq_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }

@SCR_ERROR = common dso_local global i32 0, align 4
@NV_SWNCQ_IRQ_ADDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hot plug\00", align 1
@NV_SWNCQ_IRQ_REMOVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"hot unplug\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, i32)* @nv_swncq_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_swncq_hotplug(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_eh_info*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.ata_eh_info* %9, %struct.ata_eh_info** %6, align 8
  %10 = load %struct.ata_eh_info*, %struct.ata_eh_info** %6, align 8
  %11 = call i32 @ata_ehi_clear_desc(%struct.ata_eh_info* %10)
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 0
  %14 = load i32, i32* @SCR_ERROR, align 4
  %15 = call i32 @sata_scr_read(%struct.TYPE_3__* %13, i32 %14, i32* %5)
  %16 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 0
  %18 = load i32, i32* @SCR_ERROR, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @sata_scr_write(%struct.TYPE_3__* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NV_SWNCQ_IRQ_ADDED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.ata_eh_info*, %struct.ata_eh_info** %6, align 8
  %27 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %37

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @NV_SWNCQ_IRQ_REMOVED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.ata_eh_info*, %struct.ata_eh_info** %6, align 8
  %35 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.ata_eh_info*, %struct.ata_eh_info** %6, align 8
  %39 = call i32 @ata_ehi_hotplugged(%struct.ata_eh_info* %38)
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ata_eh_info*, %struct.ata_eh_info** %6, align 8
  %42 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %46 = call i32 @ata_port_freeze(%struct.ata_port* %45)
  ret void
}

declare dso_local i32 @ata_ehi_clear_desc(%struct.ata_eh_info*) #1

declare dso_local i32 @sata_scr_read(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @sata_scr_write(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*) #1

declare dso_local i32 @ata_ehi_hotplugged(%struct.ata_eh_info*) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
