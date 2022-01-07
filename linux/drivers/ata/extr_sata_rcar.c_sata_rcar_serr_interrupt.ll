; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_serr_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_serr_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }
%struct.TYPE_3__ = type { %struct.sata_rcar_priv* }
%struct.sata_rcar_priv = type { i64 }

@SCRSERR_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"SError @host_intr: 0x%x\0A\00", align 1
@SERR_DEV_XCHG = common dso_local global i32 0, align 4
@SERR_PHYRDY_CHG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"hotplug\00", align 1
@SERR_COMM_WAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @sata_rcar_serr_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_rcar_serr_interrupt(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.sata_rcar_priv*, align 8
  %4 = alloca %struct.ata_eh_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %10, align 8
  store %struct.sata_rcar_priv* %11, %struct.sata_rcar_priv** %3, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.ata_eh_info* %14, %struct.ata_eh_info** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %3, align 8
  %16 = getelementptr inbounds %struct.sata_rcar_priv, %struct.sata_rcar_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SCRSERR_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread32(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %55

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.ata_eh_info*, %struct.ata_eh_info** %4, align 8
  %28 = call i32 @ata_ehi_clear_desc(%struct.ata_eh_info* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SERR_DEV_XCHG, align 4
  %31 = load i32, i32* @SERR_PHYRDY_CHG, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %24
  %36 = load %struct.ata_eh_info*, %struct.ata_eh_info** %4, align 8
  %37 = call i32 @ata_ehi_hotplugged(%struct.ata_eh_info* %36)
  %38 = load %struct.ata_eh_info*, %struct.ata_eh_info** %4, align 8
  %39 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SERR_COMM_WAKE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 1
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %35, %24
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %51 = call i32 @ata_port_freeze(%struct.ata_port* %50)
  br label %55

52:                                               ; preds = %46
  %53 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %54 = call i32 @ata_port_abort(%struct.ata_port* %53)
  br label %55

55:                                               ; preds = %23, %52, %49
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @ata_ehi_clear_desc(%struct.ata_eh_info*) #1

declare dso_local i32 @ata_ehi_hotplugged(%struct.ata_eh_info*) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, i8*) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

declare dso_local i32 @ata_port_abort(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
