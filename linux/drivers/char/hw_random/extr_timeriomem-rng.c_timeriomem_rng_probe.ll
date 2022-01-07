; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_timeriomem-rng.c_timeriomem_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_timeriomem-rng.c_timeriomem_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.timeriomem_rng_data* }
%struct.timeriomem_rng_data = type { i32, i32 }
%struct.timeriomem_rng_private = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"timeriomem_rng_data is missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"address must be at least four bytes wide and 32-bit aligned\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"missing period\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@timeriomem_rng_trigger = common dso_local global i32 0, align 4
@timeriomem_rng_read = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"problem registering\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"32bits from 0x%p @ %dus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @timeriomem_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timeriomem_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.timeriomem_rng_data*, align 8
  %5 = alloca %struct.timeriomem_rng_private*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.timeriomem_rng_data*, %struct.timeriomem_rng_data** %12, align 8
  store %struct.timeriomem_rng_data* %13, %struct.timeriomem_rng_data** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %1
  %20 = load %struct.timeriomem_rng_data*, %struct.timeriomem_rng_data** %4, align 8
  %21 = icmp ne %struct.timeriomem_rng_data* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_err(%struct.TYPE_10__* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %183

28:                                               ; preds = %19, %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call %struct.resource* @platform_get_resource(%struct.platform_device* %29, i32 %30, i32 0)
  store %struct.resource* %31, %struct.resource** %6, align 8
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = icmp ne %struct.resource* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %183

37:                                               ; preds = %28
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = srem i32 %40, 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = call i32 @resource_size(%struct.resource* %44)
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %53

47:                                               ; preds = %43, %37
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_err(%struct.TYPE_10__* %49, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %183

53:                                               ; preds = %43
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.timeriomem_rng_private* @devm_kzalloc(%struct.TYPE_10__* %55, i32 32, i32 %56)
  store %struct.timeriomem_rng_private* %57, %struct.timeriomem_rng_private** %5, align 8
  %58 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %59 = icmp ne %struct.timeriomem_rng_private* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %183

63:                                               ; preds = %53
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %66 = call i32 @platform_set_drvdata(%struct.platform_device* %64, %struct.timeriomem_rng_private* %65)
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %63
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @of_property_read_u32(i64 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %8, align 4
  br label %87

81:                                               ; preds = %72
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @dev_err(%struct.TYPE_10__* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %183

87:                                               ; preds = %79
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @of_property_read_u32(i64 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %97 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  br label %103

99:                                               ; preds = %87
  %100 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %101 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %94
  br label %114

104:                                              ; preds = %63
  %105 = load %struct.timeriomem_rng_data*, %struct.timeriomem_rng_data** %4, align 8
  %106 = getelementptr inbounds %struct.timeriomem_rng_data, %struct.timeriomem_rng_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %8, align 4
  %108 = load %struct.timeriomem_rng_data*, %struct.timeriomem_rng_data** %4, align 8
  %109 = getelementptr inbounds %struct.timeriomem_rng_data, %struct.timeriomem_rng_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %112 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %104, %103
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @NSEC_PER_USEC, align 4
  %117 = mul nsw i32 %115, %116
  %118 = call i32 @ns_to_ktime(i32 %117)
  %119 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %120 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %122 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %121, i32 0, i32 3
  %123 = call i32 @init_completion(i32* %122)
  %124 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %125 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %124, i32 0, i32 4
  %126 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %127 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %128 = call i32 @hrtimer_init(%struct.TYPE_9__* %125, i32 %126, i32 %127)
  %129 = load i32, i32* @timeriomem_rng_trigger, align 4
  %130 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %131 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 4
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @dev_name(%struct.TYPE_10__* %134)
  %136 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %137 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @timeriomem_rng_read, align 4
  %140 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %141 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load %struct.resource*, %struct.resource** %6, align 8
  %146 = call i32 @devm_ioremap_resource(%struct.TYPE_10__* %144, %struct.resource* %145)
  %147 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %148 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %150 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @IS_ERR(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %114
  %155 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %156 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @PTR_ERR(i32 %157)
  store i32 %158, i32* %2, align 4
  br label %183

159:                                              ; preds = %114
  %160 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %161 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %160, i32 0, i32 0
  store i32 1, i32* %161, align 4
  %162 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %163 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %162, i32 0, i32 3
  %164 = call i32 @complete(i32* %163)
  %165 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %166 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %165, i32 0, i32 2
  %167 = call i32 @hwrng_register(%struct.TYPE_8__* %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %159
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = call i32 @dev_err(%struct.TYPE_10__* %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %174 = load i32, i32* %7, align 4
  store i32 %174, i32* %2, align 4
  br label %183

175:                                              ; preds = %159
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = load %struct.timeriomem_rng_private*, %struct.timeriomem_rng_private** %5, align 8
  %179 = getelementptr inbounds %struct.timeriomem_rng_private, %struct.timeriomem_rng_private* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @dev_info(%struct.TYPE_10__* %177, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %180, i32 %181)
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %175, %170, %154, %81, %60, %47, %34, %22
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.timeriomem_rng_private* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.timeriomem_rng_private*) #1

declare dso_local i32 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @hwrng_register(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
