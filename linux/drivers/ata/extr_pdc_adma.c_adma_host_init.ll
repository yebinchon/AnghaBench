; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pdc_adma.c_adma_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pdc_adma.c_adma_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32*, i64* }

@ADMA_MMIO_BAR = common dso_local global i64 0, align 8
@ADMA_MODE_LOCK = common dso_local global i64 0, align 8
@ADMA_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_host*, i32)* @adma_host_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adma_host_init(%struct.ata_host* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ata_host* %0, %struct.ata_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %7 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @ADMA_MMIO_BAR, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ADMA_MODE_LOCK, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writeb(i32 7, i64 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %28, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ADMA_PORTS, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %21 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @adma_reset_engine(i32 %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %15

31:                                               ; preds = %15
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @adma_reset_engine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
