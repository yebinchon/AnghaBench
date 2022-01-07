; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_port_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, i64, %struct.TYPE_2__, %struct.pata_macio_priv* }
%struct.TYPE_2__ = type { i32* }
%struct.pata_macio_priv = type { i32, i32*, i32 }

@MAX_DCMDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate DMA command list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @pata_macio_port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_macio_port_start(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.pata_macio_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %5 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %6 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %5, i32 0, i32 3
  %7 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %6, align 8
  store %struct.pata_macio_priv* %7, %struct.pata_macio_priv** %4, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %16 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MAX_DCMDS, align 4
  %19 = add nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %24 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %23, i32 0, i32 2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @dmam_alloc_coherent(i32 %17, i32 %22, i32* %24, i32 %25)
  %27 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %28 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %30 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %14
  %34 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %35 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %39 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %42 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %33, %14
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32* @dmam_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
