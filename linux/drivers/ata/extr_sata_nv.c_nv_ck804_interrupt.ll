; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_ck804_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_ck804_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i64* }

@NV_MMIO_BAR = common dso_local global i64 0, align 8
@NV_INT_STATUS_CK804 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nv_ck804_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_ck804_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ata_host*
  store %struct.ata_host* %9, %struct.ata_host** %5, align 8
  %10 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %11 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %14 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @NV_MMIO_BAR, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NV_INT_STATUS_CK804, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readb(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @nv_do_interrupt(%struct.ata_host* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %26 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @nv_do_interrupt(%struct.ata_host*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
