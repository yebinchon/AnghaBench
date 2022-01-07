; ModuleID = '/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_qc_new.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_qc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sata_oxnas_host_priv* }
%struct.sata_oxnas_host_priv = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @sata_oxnas_qc_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_oxnas_qc_new(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.sata_oxnas_host_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %5 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %6 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %8, align 8
  store %struct.sata_oxnas_host_priv* %9, %struct.sata_oxnas_host_priv** %4, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @DPRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 (...) @smp_rmb()
  %15 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %16 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %21 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %1
  store i32 1, i32* %2, align 4
  br label %31

25:                                               ; preds = %19
  %26 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %27 = call i32 @sata_oxnas_acquire_hw(%struct.ata_port* %26, i32 0, i32 0)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %25, %24
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @sata_oxnas_acquire_hw(%struct.ata_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
