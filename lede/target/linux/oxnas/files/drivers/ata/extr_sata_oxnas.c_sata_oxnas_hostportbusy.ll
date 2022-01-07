; ModuleID = '/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_hostportbusy.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_hostportbusy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sata_oxnas_host_priv* }
%struct.sata_oxnas_host_priv = type { i32, i64 }

@SATA_COMMAND = common dso_local global i64 0, align 8
@CMD_CORE_BUSY = common dso_local global i32 0, align 4
@PORT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @sata_oxnas_hostportbusy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_oxnas_hostportbusy(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.sata_oxnas_host_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %4 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %5 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %7, align 8
  store %struct.sata_oxnas_host_priv* %8, %struct.sata_oxnas_host_priv** %3, align 8
  %9 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %3, align 8
  %10 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SATA_COMMAND, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @ioread32(i64 %13)
  %15 = load i32, i32* @CMD_CORE_BUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %1
  %19 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %3, align 8
  %20 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %3, align 8
  %25 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PORT_SIZE, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* @SATA_COMMAND, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @ioread32(i64 %30)
  %32 = load i32, i32* @CMD_CORE_BUSY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %23, %18
  %36 = phi i1 [ false, %18 ], [ %34, %23 ]
  br label %37

37:                                               ; preds = %35, %1
  %38 = phi i1 [ true, %1 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
