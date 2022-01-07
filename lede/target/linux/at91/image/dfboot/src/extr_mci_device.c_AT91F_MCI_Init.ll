; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_Init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@AT91C_BASE_PIOB = common dso_local global i32 0, align 4
@AT91C_PIO_PB7 = common dso_local global i32 0, align 4
@AT91C_BASE_PDC_MCI = common dso_local global i32 0, align 4
@AT91C_BASE_MCI = common dso_local global %struct.TYPE_3__* null, align 8
@AT91C_BASE_AIC = common dso_local global i32 0, align 4
@AT91C_ID_MCI = common dso_local global i32 0, align 4
@AT91C_AIC_PRIOR_HIGHEST = common dso_local global i32 0, align 4
@AT91C_AIC_SRCTYPE_INT_LEVEL_SENSITIVE = common dso_local global i32 0, align 4
@AT91F_ASM_MCI_Handler = common dso_local global i32 0, align 4
@AT91C_BASE_DBGU = common dso_local global i64 0, align 8
@AT91C_MCI_DTOR_1MEGA_CYCLES = common dso_local global i32 0, align 4
@AT91C_MCI_MR_PDCMODE = common dso_local global i32 0, align 4
@AT91C_MCI_SDCARD_4BITS_SLOTA = common dso_local global i32 0, align 4
@MCI_Device = common dso_local global i32 0, align 4
@AT91C_INIT_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AT91F_MCI_Init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @AT91C_BASE_PIOB, align 4
  %3 = load i32, i32* @AT91C_PIO_PB7, align 4
  %4 = call i32 @AT91F_PIO_CfgOutput(i32 %2, i32 %3)
  %5 = load i32, i32* @AT91C_BASE_PIOB, align 4
  %6 = load i32, i32* @AT91C_PIO_PB7, align 4
  %7 = call i32 @AT91F_PIO_SetOutput(i32 %5, i32 %6)
  %8 = call i32 (...) @AT91F_MCI_CfgPIO()
  %9 = call i32 (...) @AT91F_MCI_CfgPMC()
  %10 = load i32, i32* @AT91C_BASE_PDC_MCI, align 4
  %11 = call i32 @AT91F_PDC_Open(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AT91C_BASE_MCI, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 4
  %14 = call i32 (...) @AT91F_CfgDevice()
  %15 = load i32, i32* @AT91C_BASE_AIC, align 4
  %16 = load i32, i32* @AT91C_ID_MCI, align 4
  %17 = load i32, i32* @AT91C_AIC_PRIOR_HIGHEST, align 4
  %18 = load i32, i32* @AT91C_AIC_SRCTYPE_INT_LEVEL_SENSITIVE, align 4
  %19 = load i32, i32* @AT91F_ASM_MCI_Handler, align 4
  %20 = call i32 @AT91F_AIC_ConfigureIt(i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @AT91C_BASE_AIC, align 4
  %22 = load i32, i32* @AT91C_ID_MCI, align 4
  %23 = call i32 @AT91F_AIC_EnableIt(i32 %21, i32 %22)
  %24 = load i64, i64* @AT91C_BASE_DBGU, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @AT91F_US_EnableRx(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AT91C_BASE_MCI, align 8
  %28 = load i32, i32* @AT91C_MCI_DTOR_1MEGA_CYCLES, align 4
  %29 = load i32, i32* @AT91C_MCI_MR_PDCMODE, align 4
  %30 = load i32, i32* @AT91C_MCI_SDCARD_4BITS_SLOTA, align 4
  %31 = call i32 @AT91F_MCI_Configure(%struct.TYPE_3__* %27, i32 %28, i32 %29, i32 %30)
  %32 = call i64 @AT91F_MCI_SDCard_Init(i32* @MCI_Device)
  %33 = load i64, i64* @AT91C_INIT_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %0
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %1, align 4
  br label %39

37:                                               ; preds = %0
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @AT91F_PIO_CfgOutput(i32, i32) #1

declare dso_local i32 @AT91F_PIO_SetOutput(i32, i32) #1

declare dso_local i32 @AT91F_MCI_CfgPIO(...) #1

declare dso_local i32 @AT91F_MCI_CfgPMC(...) #1

declare dso_local i32 @AT91F_PDC_Open(i32) #1

declare dso_local i32 @AT91F_CfgDevice(...) #1

declare dso_local i32 @AT91F_AIC_ConfigureIt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @AT91F_AIC_EnableIt(i32, i32) #1

declare dso_local i32 @AT91F_US_EnableRx(i32) #1

declare dso_local i32 @AT91F_MCI_Configure(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i64 @AT91F_MCI_SDCard_Init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
