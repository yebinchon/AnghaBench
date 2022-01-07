; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_st.c_st_ahci_deassert_resets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_st.c_st_ahci_deassert_resets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { %struct.st_ahci_drv_data* }
%struct.st_ahci_drv_data = type { i64, i64, i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"unable to bring out of pwrdwn\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to bring out of sw-rst\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unable to bring out of pwr-rst\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_host_priv*, %struct.device*)* @st_ahci_deassert_resets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_ahci_deassert_resets(%struct.ahci_host_priv* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_host_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.st_ahci_drv_data*, align 8
  %7 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %8, i32 0, i32 0
  %10 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %9, align 8
  store %struct.st_ahci_drv_data* %10, %struct.st_ahci_drv_data** %6, align 8
  %11 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %6, align 8
  %12 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %6, align 8
  %17 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @reset_control_deassert(i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %62

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %6, align 8
  %29 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %6, align 8
  %34 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @reset_control_deassert(i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %62

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %6, align 8
  %46 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %6, align 8
  %51 = getelementptr inbounds %struct.st_ahci_drv_data, %struct.st_ahci_drv_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @reset_control_deassert(i64 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %44
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %56, %39, %22
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @reset_control_deassert(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
