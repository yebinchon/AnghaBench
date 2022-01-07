; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_st.c_st_ahci_probe_resets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_st.c_st_ahci_probe_resets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { %struct.st_ahci_drv_data* }
%struct.st_ahci_drv_data = type { i32*, i32*, i32* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"pwr-dwn\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"power reset control not defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"sw-rst\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"soft reset control not defined\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"pwr-rst\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"power soft reset control not defined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_host_priv*, %struct.device*)* @st_ahci_probe_resets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_ahci_probe_resets(%struct.ahci_host_priv* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.ahci_host_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.st_ahci_drv_data*, align 8
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %6, i32 0, i32 0
  %8 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %7, align 8
  store %struct.st_ahci_drv_data* %8, %struct.st_ahci_drv_data** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i8* @devm_reset_control_get(%struct.device* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = bitcast i8* %10 to i32*
  %12 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %5, align 8
  %13 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %12, i32 0, i32 2
  store i32* %11, i32** %13, align 8
  %14 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %5, align 8
  %15 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @IS_ERR(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_info(%struct.device* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %5, align 8
  %23 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i8* @devm_reset_control_get(%struct.device* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %5, align 8
  %29 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %5, align 8
  %31 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @IS_ERR(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_info(%struct.device* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %5, align 8
  %39 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %35, %24
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i8* @devm_reset_control_get(%struct.device* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %5, align 8
  %45 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %5, align 8
  %47 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @IS_ERR(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %54 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %5, align 8
  %55 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %51, %40
  %57 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @st_ahci_deassert_resets(%struct.ahci_host_priv* %57, %struct.device* %58)
  ret i32 %59
}

declare dso_local i8* @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @st_ahci_deassert_resets(%struct.ahci_host_priv*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
