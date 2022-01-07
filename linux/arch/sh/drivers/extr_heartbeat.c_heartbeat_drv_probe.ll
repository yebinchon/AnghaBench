; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/extr_heartbeat.c_heartbeat_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/extr_heartbeat.c_heartbeat_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.heartbeat_data* }
%struct.heartbeat_data = type { i32, i32*, i32, i32, i32, i32 }
%struct.resource = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"invalid number of resources\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid resource\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@default_bit_pos = common dso_local global i32* null, align 8
@IORESOURCE_MEM_TYPE_MASK = common dso_local global i32 0, align 4
@heartbeat_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @heartbeat_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heartbeat_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.heartbeat_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = call i32 @dev_err(%struct.TYPE_2__* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %164

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %4, align 8
  %24 = load %struct.resource*, %struct.resource** %4, align 8
  %25 = icmp eq %struct.resource* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = call i32 @dev_err(%struct.TYPE_2__* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %164

35:                                               ; preds = %20
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.heartbeat_data*, %struct.heartbeat_data** %38, align 8
  %40 = icmp ne %struct.heartbeat_data* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.heartbeat_data*, %struct.heartbeat_data** %44, align 8
  store %struct.heartbeat_data* %45, %struct.heartbeat_data** %5, align 8
  br label %59

46:                                               ; preds = %35
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.heartbeat_data* @kzalloc(i32 32, i32 %47)
  store %struct.heartbeat_data* %48, %struct.heartbeat_data** %5, align 8
  %49 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %50 = icmp ne %struct.heartbeat_data* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %164

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.resource*, %struct.resource** %4, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.resource*, %struct.resource** %4, align 8
  %64 = call i32 @resource_size(%struct.resource* %63)
  %65 = call i32 @ioremap_nocache(i32 %62, i32 %64)
  %66 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %67 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %69 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %59
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 1
  %79 = call i32 @dev_err(%struct.TYPE_2__* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.heartbeat_data*, %struct.heartbeat_data** %82, align 8
  %84 = icmp ne %struct.heartbeat_data* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %87 = call i32 @kfree(%struct.heartbeat_data* %86)
  br label %88

88:                                               ; preds = %85, %76
  %89 = load i32, i32* @ENXIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %164

91:                                               ; preds = %59
  %92 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %93 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = load i32*, i32** @default_bit_pos, align 8
  %98 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %99 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %98, i32 0, i32 1
  store i32* %97, i32** %99, align 8
  %100 = load i32*, i32** @default_bit_pos, align 8
  %101 = call i32 @ARRAY_SIZE(i32* %100)
  %102 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %103 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %96, %91
  %105 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %106 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %105, i32 0, i32 2
  store i32 0, i32* %106, align 8
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %126, %104
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %110 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %107
  %114 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %115 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 1, %120
  %122 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %123 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %113
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %107

129:                                              ; preds = %107
  %130 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %131 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %151, label %134

134:                                              ; preds = %129
  %135 = load %struct.resource*, %struct.resource** %4, align 8
  %136 = getelementptr inbounds %struct.resource, %struct.resource* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @IORESOURCE_MEM_TYPE_MASK, align 4
  %139 = and i32 %137, %138
  switch i32 %139, label %147 [
    i32 129, label %140
    i32 130, label %143
    i32 128, label %146
  ]

140:                                              ; preds = %134
  %141 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %142 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %141, i32 0, i32 3
  store i32 32, i32* %142, align 4
  br label %150

143:                                              ; preds = %134
  %144 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %145 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %144, i32 0, i32 3
  store i32 16, i32* %145, align 4
  br label %150

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %134, %146
  %148 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %149 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %148, i32 0, i32 3
  store i32 8, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %143, %140
  br label %151

151:                                              ; preds = %150, %129
  %152 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %153 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %152, i32 0, i32 4
  %154 = load i32, i32* @heartbeat_timer, align 4
  %155 = call i32 @timer_setup(i32* %153, i32 %154, i32 0)
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %158 = call i32 @platform_set_drvdata(%struct.platform_device* %156, %struct.heartbeat_data* %157)
  %159 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %160 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %159, i32 0, i32 4
  %161 = load i64, i64* @jiffies, align 8
  %162 = add nsw i64 %161, 1
  %163 = call i32 @mod_timer(i32* %160, i64 %162)
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %151, %88, %55, %29, %14
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.heartbeat_data* @kzalloc(i32, i32) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @kfree(%struct.heartbeat_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.heartbeat_data*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
