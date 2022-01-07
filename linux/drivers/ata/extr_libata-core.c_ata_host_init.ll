; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, %struct.ata_port_operations*, %struct.device*, i32, i32, i32 }
%struct.device = type { i32 }
%struct.ata_port_operations = type { i32 }

@ATA_MAX_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_host_init(%struct.ata_host* %0, %struct.device* %1, %struct.ata_port_operations* %2) #0 {
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ata_port_operations*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.ata_port_operations* %2, %struct.ata_port_operations** %6, align 8
  %7 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %8 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %7, i32 0, i32 5
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %11 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %10, i32 0, i32 4
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %14 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %15 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %18 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %17, i32 0, i32 2
  store %struct.device* %16, %struct.device** %18, align 8
  %19 = load %struct.ata_port_operations*, %struct.ata_port_operations** %6, align 8
  %20 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %21 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %20, i32 0, i32 1
  store %struct.ata_port_operations* %19, %struct.ata_port_operations** %21, align 8
  %22 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %23 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %22, i32 0, i32 0
  %24 = call i32 @kref_init(i32* %23)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
