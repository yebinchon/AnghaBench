; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sx4.c_pdc20621_pop_hdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sx4.c_pdc20621_pop_hdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pdc_host_priv* }
%struct.pdc_host_priv = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@PDC_HDMA_Q_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @pdc20621_pop_hdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc20621_pop_hdma(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.pdc_host_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 0
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %3, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %12, align 8
  store %struct.pdc_host_priv* %13, %struct.pdc_host_priv** %4, align 8
  %14 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %4, align 8
  %15 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PDC_HDMA_Q_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %4, align 8
  %20 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %4, align 8
  %23 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %4, align 8
  %28 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  br label %59

29:                                               ; preds = %1
  %30 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %4, align 8
  %31 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %4, align 8
  %39 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %4, align 8
  %47 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__pdc20621_push_hdma(i32 %37, i32 %45, i32 %53)
  %55 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %4, align 8
  %56 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %29, %26
  ret void
}

declare dso_local i32 @__pdc20621_push_hdma(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
