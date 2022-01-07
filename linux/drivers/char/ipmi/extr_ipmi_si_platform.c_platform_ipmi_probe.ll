; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_platform.c_platform_ipmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_platform.c_platform_ipmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.si_sm_io = type { i32, i64, i64, i32, i64, i32, i32*, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"addr-source\00", align 1
@SI_PLATFORM = common dso_local global i64 0, align 8
@SI_LAST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SI_SMBIOS = common dso_local global i64 0, align 8
@si_trydmi = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SI_HARDCODED = common dso_local global i64 0, align 8
@si_tryplatform = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ipmi-type\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"probing via %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ipmi-type property is invalid\0A\00", align 1
@DEFAULT_REGSIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"reg-size\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"slave-addr\00", align 1
@ipmi_std_irq_setup = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"ipmi_si: %s: %s %#lx regsize %d spacing %d irq %d\0A\00", align 1
@IPMI_IO_ADDR_SPACE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @platform_ipmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_ipmi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.si_sm_io, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @device_property_read_u8(i32* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64* %7)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @SI_PLATFORM, align 8
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @SI_LAST, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %153

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @SI_SMBIOS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* @si_trydmi, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %153

35:                                               ; preds = %29
  br label %48

36:                                               ; preds = %25
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @SI_HARDCODED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* @si_tryplatform, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %153

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %36
  br label %48

48:                                               ; preds = %47, %35
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @device_property_read_u8(i32* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64* %5)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %153

57:                                               ; preds = %48
  %58 = call i32 @memset(%struct.si_sm_io* %4, i32 0, i32 88)
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 10
  store i64 %59, i64* %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @ipmi_addr_src_to_str(i64 %63)
  %65 = call i32 @dev_info(i32* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i64, i64* %5, align 8
  switch i64 %66, label %73 [
    i64 130, label %67
    i64 129, label %67
    i64 131, label %67
    i64 128, label %70
  ]

67:                                               ; preds = %57, %57, %57
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 9
  store i64 %68, i64* %69, align 8
  br label %79

70:                                               ; preds = %57
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %153

73:                                               ; preds = %57
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %153

79:                                               ; preds = %67
  %80 = load i64, i64* @DEFAULT_REGSIZE, align 8
  %81 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 4
  store i64 %80, i64* %81, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @device_property_read_u8(i32* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64* %8)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %79
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 4
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %79
  %91 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 8
  store i64 0, i64* %91, align 8
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @device_property_read_u8(i32* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64* %9)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 8
  store i64 %98, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %90
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = call i32 @ipmi_get_info_from_resources(%struct.platform_device* %101, %struct.si_sm_io* %4)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %153

107:                                              ; preds = %100
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @device_property_read_u8(i32* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64* %6)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 0
  store i32 32, i32* %114, align 8
  br label %119

115:                                              ; preds = %107
  %116 = load i64, i64* %6, align 8
  %117 = trunc i64 %116 to i32
  %118 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 0
  store i32 %117, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %113
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = call i64 @platform_get_irq(%struct.platform_device* %120, i32 0)
  %122 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 1
  store i64 %121, i64* %122, align 8
  %123 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32, i32* @ipmi_std_irq_setup, align 4
  %128 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 7
  store i32 %127, i32* %128, align 8
  br label %131

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 1
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %129, %126
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 6
  store i32* %133, i32** %134, align 8
  %135 = load i64, i64* %7, align 8
  %136 = call i32 @ipmi_addr_src_to_str(i64 %135)
  %137 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @IPMI_IO_ADDR_SPACE, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %143 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %4, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %136, i8* %142, i32 %144, i64 %146, i32 %148, i64 %150)
  %152 = call i32 @ipmi_si_add_smi(%struct.si_sm_io* %4)
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %131, %104, %73, %70, %54, %43, %32, %22
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @device_property_read_u8(i32*, i8*, i64*) #1

declare dso_local i32 @memset(%struct.si_sm_io*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @ipmi_addr_src_to_str(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ipmi_get_info_from_resources(%struct.platform_device*, %struct.si_sm_io*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i8*, i32, i64, i32, i64) #1

declare dso_local i32 @ipmi_si_add_smi(%struct.si_sm_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
