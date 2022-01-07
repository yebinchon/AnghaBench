; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_icside.c_pata_icside_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_icside.c_pata_icside_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expansion_card = type { i32 }
%struct.ata_host = type { %struct.pata_icside_state* }
%struct.pata_icside_state = type { i64 }

@NO_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expansion_card*)* @pata_icside_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_icside_remove(%struct.expansion_card* %0) #0 {
  %2 = alloca %struct.expansion_card*, align 8
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca %struct.pata_icside_state*, align 8
  store %struct.expansion_card* %0, %struct.expansion_card** %2, align 8
  %5 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %6 = call %struct.ata_host* @ecard_get_drvdata(%struct.expansion_card* %5)
  store %struct.ata_host* %6, %struct.ata_host** %3, align 8
  %7 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %8 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %7, i32 0, i32 0
  %9 = load %struct.pata_icside_state*, %struct.pata_icside_state** %8, align 8
  store %struct.pata_icside_state* %9, %struct.pata_icside_state** %4, align 8
  %10 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %11 = call i32 @ata_host_detach(%struct.ata_host* %10)
  %12 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %13 = call i32 @pata_icside_shutdown(%struct.expansion_card* %12)
  %14 = load %struct.pata_icside_state*, %struct.pata_icside_state** %4, align 8
  %15 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NO_DMA, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.pata_icside_state*, %struct.pata_icside_state** %4, align 8
  %21 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @free_dma(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %26 = call i32 @ecard_release_resources(%struct.expansion_card* %25)
  ret void
}

declare dso_local %struct.ata_host* @ecard_get_drvdata(%struct.expansion_card*) #1

declare dso_local i32 @ata_host_detach(%struct.ata_host*) #1

declare dso_local i32 @pata_icside_shutdown(%struct.expansion_card*) #1

declare dso_local i32 @free_dma(i64) #1

declare dso_local i32 @ecard_release_resources(%struct.expansion_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
