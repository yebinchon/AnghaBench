; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sti-cpufreq.c_sti_cpufreq_fetch_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sti-cpufreq.c_sti_cpufreq_fetch_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@ddata = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"st,syscfg-eng\00", align 1
@MINOR_ID_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"No minor number offset provided %pOF [%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Failed to read the minor number from syscon [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sti_cpufreq_fetch_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_cpufreq_fetch_minor() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ddata, i32 0, i32 1), align 8
  store %struct.device* %7, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %3, align 8
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = load i32, i32* @MINOR_ID_INDEX, align 4
  %13 = call i32 @of_property_read_u32_index(%struct.device_node* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12, i32* %4)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %0
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = load %struct.device_node*, %struct.device_node** %3, align 8
  %19 = ptrtoint %struct.device_node* %18 to i32
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %1, align 4
  br label %37

23:                                               ; preds = %0
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ddata, i32 0, i32 0), align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @regmap_read(i32 %24, i32 %25, i32* %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %2, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %1, align 4
  br label %37

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 15
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %34, %29, %16
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
