; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_alloc_priv_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_alloc_priv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_msi_priv_data = type { i64, %struct.device*, i64 }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MAX_DEV_MSIS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DOMAIN_BUS_PLATFORM_MSI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Incompatible msi_domain, giving up\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@platform_msi_devid_ida = common dso_local global i32 0, align 4
@DEV_ID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_msi_priv_data* (%struct.device*, i32, i64)* @platform_msi_alloc_priv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_msi_priv_data* @platform_msi_alloc_priv_data(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.platform_msi_priv_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.platform_msi_priv_data*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MAX_DEV_MSIS, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %17, %14, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.platform_msi_priv_data* @ERR_PTR(i32 %26)
  store %struct.platform_msi_priv_data* %27, %struct.platform_msi_priv_data** %4, align 8
  br label %88

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DOMAIN_BUS_PLATFORM_MSI, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.platform_msi_priv_data* @ERR_PTR(i32 %40)
  store %struct.platform_msi_priv_data* %41, %struct.platform_msi_priv_data** %4, align 8
  br label %88

42:                                               ; preds = %28
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @dev_to_msi_list(%struct.device* %43)
  %45 = call i32 @list_empty(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.platform_msi_priv_data* @ERR_PTR(i32 %49)
  store %struct.platform_msi_priv_data* %50, %struct.platform_msi_priv_data** %4, align 8
  br label %88

51:                                               ; preds = %42
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.platform_msi_priv_data* @kzalloc(i32 24, i32 %52)
  store %struct.platform_msi_priv_data* %53, %struct.platform_msi_priv_data** %8, align 8
  %54 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %55 = icmp ne %struct.platform_msi_priv_data* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.platform_msi_priv_data* @ERR_PTR(i32 %58)
  store %struct.platform_msi_priv_data* %59, %struct.platform_msi_priv_data** %4, align 8
  br label %88

60:                                               ; preds = %51
  %61 = load i32, i32* @DEV_ID_SHIFT, align 4
  %62 = shl i32 1, %61
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i64 @ida_simple_get(i32* @platform_msi_devid_ida, i32 0, i32 %62, i32 %63)
  %65 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %66 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %68 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %60
  %72 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %73 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  %76 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %77 = call i32 @kfree(%struct.platform_msi_priv_data* %76)
  %78 = load i32, i32* %9, align 4
  %79 = call %struct.platform_msi_priv_data* @ERR_PTR(i32 %78)
  store %struct.platform_msi_priv_data* %79, %struct.platform_msi_priv_data** %4, align 8
  br label %88

80:                                               ; preds = %60
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %83 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %86 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %85, i32 0, i32 1
  store %struct.device* %84, %struct.device** %86, align 8
  %87 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  store %struct.platform_msi_priv_data* %87, %struct.platform_msi_priv_data** %4, align 8
  br label %88

88:                                               ; preds = %80, %71, %56, %47, %36, %24
  %89 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %4, align 8
  ret %struct.platform_msi_priv_data* %89
}

declare dso_local %struct.platform_msi_priv_data* @ERR_PTR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @list_empty(i32) #1

declare dso_local i32 @dev_to_msi_list(%struct.device*) #1

declare dso_local %struct.platform_msi_priv_data* @kzalloc(i32, i32) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.platform_msi_priv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
