; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sx4.c_pdc20621_push_hdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sx4.c_pdc20621_push_hdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pdc_host_priv* }
%struct.pdc_host_priv = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.ata_queued_cmd* }

@PDC_HDMA_Q_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*, i32, i32)* @pdc20621_push_hdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc20621_push_hdma(%struct.ata_queued_cmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ata_queued_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_port*, align 8
  %8 = alloca %struct.pdc_host_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 0
  %12 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  store %struct.ata_port* %12, %struct.ata_port** %7, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %16, align 8
  store %struct.pdc_host_priv* %17, %struct.pdc_host_priv** %8, align 8
  %18 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %8, align 8
  %19 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PDC_HDMA_Q_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %8, align 8
  %24 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %3
  %28 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @__pdc20621_push_hdma(%struct.ata_queued_cmd* %28, i32 %29, i32 %30)
  %32 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %8, align 8
  %33 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %63

34:                                               ; preds = %3
  %35 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %36 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %8, align 8
  %37 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store %struct.ata_queued_cmd* %35, %struct.ata_queued_cmd** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %8, align 8
  %45 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %43, i32* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %8, align 8
  %53 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %51, i32* %58, align 4
  %59 = load %struct.pdc_host_priv*, %struct.pdc_host_priv** %8, align 8
  %60 = getelementptr inbounds %struct.pdc_host_priv, %struct.pdc_host_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %34, %27
  ret void
}

declare dso_local i32 @__pdc20621_push_hdma(%struct.ata_queued_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
