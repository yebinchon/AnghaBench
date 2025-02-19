; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pdc_adma.c_adma_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pdc_adma.c_adma_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @adma_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adma_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ata_host*
  store %struct.ata_host* %8, %struct.ata_host** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32 @VPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %11 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %14 = call i32 @adma_intr_pkt(%struct.ata_host* %13)
  %15 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %16 = call i32 @adma_intr_mmio(%struct.ata_host* %15)
  %17 = or i32 %14, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %19 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = call i32 @VPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @IRQ_RETVAL(i32 %22)
  ret i32 %23
}

declare dso_local i32 @VPRINTK(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @adma_intr_pkt(%struct.ata_host*) #1

declare dso_local i32 @adma_intr_mmio(%struct.ata_host*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
