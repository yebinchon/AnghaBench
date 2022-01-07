; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_cpu-reset.c_mvebu_cpu_reset_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_cpu-reset.c_mvebu_cpu_reset_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"unable to get resource\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to request region\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@cpu_reset_base = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to map registers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cpu_reset_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i32)* @mvebu_cpu_reset_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_cpu_reset_map(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @of_address_to_resource(%struct.device_node* %7, i32 %8, %struct.resource* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @resource_size(%struct.resource* %6)
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = getelementptr inbounds %struct.device_node, %struct.device_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @request_mem_region(i32 %17, i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %45

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @resource_size(%struct.resource* %6)
  %32 = call i32 @ioremap(i32 %30, i32 %31)
  store i32 %32, i32* @cpu_reset_base, align 4
  %33 = load i32, i32* @cpu_reset_base, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @resource_size(%struct.resource* %6)
  %40 = call i32 @release_mem_region(i32 %38, i32 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %28
  %44 = call i32 @resource_size(%struct.resource* %6)
  store i32 %44, i32* @cpu_reset_size, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %35, %24, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
