; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_platform.c_ipmi_get_info_from_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_platform.c_ipmi_get_info_from_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64 }
%struct.platform_device = type { i32 }
%struct.si_sm_io = type { i64, i64, i64 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@IPMI_IO_ADDR_SPACE = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IPMI_MEM_ADDR_SPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"no I/O or memory address\0A\00", align 1
@DEFAULT_REGSPACING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.platform_device*, %struct.si_sm_io*)* @ipmi_get_info_from_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @ipmi_get_info_from_resources(%struct.platform_device* %0, %struct.si_sm_io* %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.si_sm_io*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.si_sm_io* %1, %struct.si_sm_io** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = load i32, i32* @IORESOURCE_IO, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %6, align 8
  %11 = load %struct.resource*, %struct.resource** %6, align 8
  %12 = icmp ne %struct.resource* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* @IPMI_IO_ADDR_SPACE, align 8
  %15 = load %struct.si_sm_io*, %struct.si_sm_io** %5, align 8
  %16 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %6, align 8
  %21 = load %struct.resource*, %struct.resource** %6, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i64, i64* @IPMI_MEM_ADDR_SPACE, align 8
  %25 = load %struct.si_sm_io*, %struct.si_sm_io** %5, align 8
  %26 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %17
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = icmp ne %struct.resource* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* null, %struct.resource** %3, align 8
  br label %80

35:                                               ; preds = %28
  %36 = load %struct.resource*, %struct.resource** %6, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.si_sm_io*, %struct.si_sm_io** %5, align 8
  %40 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* @DEFAULT_REGSPACING, align 8
  %42 = load %struct.si_sm_io*, %struct.si_sm_io** %5, align 8
  %43 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %45 = load %struct.si_sm_io*, %struct.si_sm_io** %5, align 8
  %46 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IPMI_IO_ADDR_SPACE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* @IORESOURCE_IO, align 4
  br label %54

52:                                               ; preds = %35
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call %struct.resource* @platform_get_resource(%struct.platform_device* %44, i32 %55, i32 1)
  store %struct.resource* %56, %struct.resource** %7, align 8
  %57 = load %struct.resource*, %struct.resource** %7, align 8
  %58 = icmp ne %struct.resource* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load %struct.resource*, %struct.resource** %7, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.si_sm_io*, %struct.si_sm_io** %5, align 8
  %64 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = load %struct.resource*, %struct.resource** %7, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.si_sm_io*, %struct.si_sm_io** %5, align 8
  %72 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load %struct.si_sm_io*, %struct.si_sm_io** %5, align 8
  %76 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %67, %59
  br label %78

78:                                               ; preds = %77, %54
  %79 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %79, %struct.resource** %3, align 8
  br label %80

80:                                               ; preds = %78, %31
  %81 = load %struct.resource*, %struct.resource** %3, align 8
  ret %struct.resource* %81
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
