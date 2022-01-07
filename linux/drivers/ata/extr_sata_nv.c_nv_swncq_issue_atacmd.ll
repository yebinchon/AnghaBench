; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_swncq_issue_atacmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_swncq_issue_atacmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__*, %struct.nv_swncq_port_priv* }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*, i32*)*, i32 (%struct.ata_port*, i32*)* }
%struct.nv_swncq_port_priv = type { i32, i32, i32, i32, i32 }
%struct.ata_queued_cmd = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Issued tag %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, %struct.ata_queued_cmd*)* @nv_swncq_issue_atacmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_swncq_issue_atacmd(%struct.ata_port* %0, %struct.ata_queued_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_queued_cmd*, align 8
  %6 = alloca %struct.nv_swncq_port_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_queued_cmd* %1, %struct.ata_queued_cmd** %5, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
  %9 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %8, align 8
  store %struct.nv_swncq_port_priv* %9, %struct.nv_swncq_port_priv** %6, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %11 = icmp eq %struct.ata_queued_cmd* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  %19 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %6, align 8
  %20 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @writel(i32 %18, i32 %21)
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %6, align 8
  %27 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 1, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %6, align 8
  %34 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %6, align 8
  %43 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %6, align 8
  %51 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %55 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32 (%struct.ata_port*, i32*)*, i32 (%struct.ata_port*, i32*)** %57, align 8
  %59 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %60 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %60, i32 0, i32 1
  %62 = call i32 %58(%struct.ata_port* %59, i32* %61)
  %63 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %64 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.ata_port*, i32*)*, i32 (%struct.ata_port*, i32*)** %66, align 8
  %68 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %69 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %70 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %69, i32 0, i32 1
  %71 = call i32 %67(%struct.ata_port* %68, i32* %70)
  %72 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %73 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %13, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
