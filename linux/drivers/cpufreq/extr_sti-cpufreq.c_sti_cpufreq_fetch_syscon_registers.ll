; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sti-cpufreq.c_sti_cpufreq_fetch_syscon_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sti-cpufreq.c_sti_cpufreq_fetch_syscon_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@ddata = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\22st,syscfg\22 not supplied\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"st,syscfg-eng\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\22st,syscfg-eng\22 not supplied\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sti_cpufreq_fetch_syscon_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_cpufreq_fetch_syscon_registers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ddata, i32 0, i32 2), align 8
  store %struct.device* %4, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %7, %struct.device_node** %3, align 8
  %8 = load %struct.device_node*, %struct.device_node** %3, align 8
  %9 = call i8* @syscon_regmap_lookup_by_phandle(%struct.device_node* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ddata, i32 0, i32 1), align 8
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ddata, i32 0, i32 1), align 8
  %11 = call i64 @IS_ERR(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = call i32 @dev_err(%struct.device* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ddata, i32 0, i32 1), align 8
  %17 = call i32 @PTR_ERR(i8* %16)
  store i32 %17, i32* %1, align 4
  br label %30

18:                                               ; preds = %0
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = call i8* @syscon_regmap_lookup_by_phandle(%struct.device_node* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ddata, i32 0, i32 0), align 8
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ddata, i32 0, i32 0), align 8
  %22 = call i64 @IS_ERR(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ddata, i32 0, i32 0), align 8
  %28 = call i32 @PTR_ERR(i8* %27)
  store i32 %28, i32* %1, align 4
  br label %30

29:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %24, %13
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i8* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
