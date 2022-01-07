; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_icside.c_pata_icside_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_icside.c_pata_icside_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expansion_card = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.expansion_card*, i32)* }
%struct.ata_host = type { %struct.pata_icside_state* }
%struct.pata_icside_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expansion_card*)* @pata_icside_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_icside_shutdown(%struct.expansion_card* %0) #0 {
  %2 = alloca %struct.expansion_card*, align 8
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pata_icside_state*, align 8
  store %struct.expansion_card* %0, %struct.expansion_card** %2, align 8
  %6 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %7 = call %struct.ata_host* @ecard_get_drvdata(%struct.expansion_card* %6)
  store %struct.ata_host* %7, %struct.ata_host** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %11 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.expansion_card*, i32)*, i32 (%struct.expansion_card*, i32)** %13, align 8
  %15 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %16 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %17 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %14(%struct.expansion_card* %15, i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @local_irq_restore(i64 %20)
  %22 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %23 = icmp ne %struct.ata_host* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %1
  %25 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %26 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %25, i32 0, i32 0
  %27 = load %struct.pata_icside_state*, %struct.pata_icside_state** %26, align 8
  store %struct.pata_icside_state* %27, %struct.pata_icside_state** %5, align 8
  %28 = load %struct.pata_icside_state*, %struct.pata_icside_state** %5, align 8
  %29 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.pata_icside_state*, %struct.pata_icside_state** %5, align 8
  %34 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @writeb(i32 0, i64 %35)
  br label %37

37:                                               ; preds = %32, %24
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local %struct.ata_host* @ecard_get_drvdata(%struct.expansion_card*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
