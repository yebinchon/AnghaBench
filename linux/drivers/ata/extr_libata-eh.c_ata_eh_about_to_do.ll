; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_about_to_do.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_about_to_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_eh_context, %struct.ata_eh_info, %struct.ata_port* }
%struct.ata_eh_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ata_eh_info = type { i32 }
%struct.ata_port = type { i32, i32, %struct.ata_link* }
%struct.ata_device = type { i32 }

@ATA_EHI_QUIET = common dso_local global i32 0, align 4
@ATA_PFLAG_RECOVERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_eh_about_to_do(%struct.ata_link* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_port*, align 8
  %8 = alloca %struct.ata_eh_info*, align 8
  %9 = alloca %struct.ata_eh_context*, align 8
  %10 = alloca i64, align 8
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %12 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %11, i32 0, i32 2
  %13 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  store %struct.ata_port* %13, %struct.ata_port** %7, align 8
  %14 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %15 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %14, i32 0, i32 1
  store %struct.ata_eh_info* %15, %struct.ata_eh_info** %8, align 8
  %16 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %17 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %16, i32 0, i32 0
  store %struct.ata_eh_context* %17, %struct.ata_eh_context** %9, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @spin_lock_irqsave(i32 %20, i64 %21)
  %23 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %24 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %25 = load %struct.ata_eh_info*, %struct.ata_eh_info** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ata_eh_clear_action(%struct.ata_link* %23, %struct.ata_device* %24, %struct.ata_eh_info* %25, i32 %26)
  %28 = load %struct.ata_eh_context*, %struct.ata_eh_context** %9, align 8
  %29 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ATA_EHI_QUIET, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %3
  %36 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %37 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %38 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %37, i32 0, i32 2
  %39 = load %struct.ata_link*, %struct.ata_link** %38, align 8
  %40 = icmp ne %struct.ata_link* %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* @ATA_PFLAG_RECOVERED, align 4
  %43 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %35, %3
  %48 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %49 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32 %50, i64 %51)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ata_eh_clear_action(%struct.ata_link*, %struct.ata_device*, %struct.ata_eh_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
