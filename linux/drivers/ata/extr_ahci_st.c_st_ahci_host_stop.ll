; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_st.c_st_ahci_host_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_st.c_st_ahci_host_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { %struct.device*, %struct.ahci_host_priv* }
%struct.device = type { i32 }
%struct.ahci_host_priv = type { %struct.st_ahci_drv_data* }
%struct.st_ahci_drv_data = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"unable to pwrdwn\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_host*)* @st_ahci_host_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_ahci_host_stop(%struct.ata_host* %0) #0 {
  %2 = alloca %struct.ata_host*, align 8
  %3 = alloca %struct.ahci_host_priv*, align 8
  %4 = alloca %struct.st_ahci_drv_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_host* %0, %struct.ata_host** %2, align 8
  %7 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %8 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %7, i32 0, i32 1
  %9 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %8, align 8
  store %struct.ahci_host_priv* %9, %struct.ahci_host_priv** %3, align 8
  %10 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %10, i32 0, i32 0
  %12 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %11, align 8
  store %struct.st_ahci_drv_data* %12, %struct.st_ahci_drv_data** %4, align 8
  %13 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %14 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %4, align 8
  %17 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %4, align 8
  %22 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @reset_control_assert(i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %20
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %33 = call i32 @ahci_platform_disable_resources(%struct.ahci_host_priv* %32)
  ret void
}

declare dso_local i32 @reset_control_assert(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ahci_platform_disable_resources(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
