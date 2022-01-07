; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_highbank-cpufreq.c_hb_cpufreq_driver_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_highbank-cpufreq.c_hb_cpufreq_driver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device_info = type { i8* }
%struct.device = type { i32 }
%struct.clk = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"cpufreq-dt\00", align 1
@__const.hb_cpufreq_driver_init.devinfo = private unnamed_addr constant %struct.platform_device_info { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"calxeda,highbank\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"calxeda,ecx-2000\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to get highbank cpufreq device\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to find highbank cpufreq node\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to get cpu0 clock: %d\0A\00", align 1
@hb_cpufreq_clk_nb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"failed to register clk notifier: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hb_cpufreq_driver_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_cpufreq_driver_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.platform_device_info, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.platform_device_info* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.platform_device_info* @__const.hb_cpufreq_driver_init.devinfo to i8*), i64 8, i1 false)
  %8 = call i32 @of_machine_is_compatible(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %0
  %11 = call i32 @of_machine_is_compatible(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %1, align 4
  br label %60

16:                                               ; preds = %10, %0
  %17 = call %struct.device* @get_cpu_device(i32 0)
  store %struct.device* %17, %struct.device** %3, align 8
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = icmp ne %struct.device* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %1, align 4
  br label %60

24:                                               ; preds = %16
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.device_node* @of_node_get(i32 %27)
  store %struct.device_node* %28, %struct.device_node** %5, align 8
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = icmp ne %struct.device_node* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %1, align 4
  br label %60

35:                                               ; preds = %24
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = call %struct.clk* @clk_get(%struct.device* %36, i32* null)
  store %struct.clk* %37, %struct.clk** %4, align 8
  %38 = load %struct.clk*, %struct.clk** %4, align 8
  %39 = call i64 @IS_ERR(%struct.clk* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.clk*, %struct.clk** %4, align 8
  %43 = call i32 @PTR_ERR(%struct.clk* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  br label %56

46:                                               ; preds = %35
  %47 = load %struct.clk*, %struct.clk** %4, align 8
  %48 = call i32 @clk_notifier_register(%struct.clk* %47, i32* @hb_cpufreq_clk_nb)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  br label %56

54:                                               ; preds = %46
  %55 = call i32 @platform_device_register_full(%struct.platform_device_info* %2)
  br label %56

56:                                               ; preds = %54, %51, %41
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = call i32 @of_node_put(%struct.device_node* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %56, %31, %20, %13
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @of_machine_is_compatible(i8*) #2

declare dso_local %struct.device* @get_cpu_device(i32) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local %struct.device_node* @of_node_get(i32) #2

declare dso_local %struct.clk* @clk_get(%struct.device*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.clk*) #2

declare dso_local i32 @PTR_ERR(%struct.clk*) #2

declare dso_local i32 @clk_notifier_register(%struct.clk*, i32*) #2

declare dso_local i32 @platform_device_register_full(%struct.platform_device_info*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
