; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_parse_provisioning.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_parse_provisioning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ibm,xive-provision-page-size\00", align 1
@xive_provision_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ibm,xive-provision-chips\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Error %d getting provision chips array\0A\00", align 1
@xive_provision_chip_count = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@xive_provision_chips = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Error %d reading provision chips array\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"xive-provision\00", align 1
@xive_provision_cache = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to allocate provision cache\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @xive_parse_provisioning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_parse_provisioning(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = call i64 @of_property_read_u32(%struct.device_node* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* @xive_provision_size)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %52

9:                                                ; preds = %1
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = call i32 @of_property_count_elems_of_size(%struct.device_node* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 4)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  store i32 0, i32* %2, align 4
  br label %52

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* @xive_provision_chip_count, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %52

22:                                               ; preds = %17
  %23 = load i32, i32* @xive_provision_chip_count, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @kcalloc(i32 4, i32 %23, i32 %24)
  store i32 %25, i32* @xive_provision_chips, align 4
  %26 = load i32, i32* @xive_provision_chips, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %52

33:                                               ; preds = %22
  %34 = load %struct.device_node*, %struct.device_node** %3, align 8
  %35 = load i32, i32* @xive_provision_chips, align 4
  %36 = load i32, i32* @xive_provision_chip_count, align 4
  %37 = call i32 @of_property_read_u32_array(%struct.device_node* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  store i32 0, i32* %2, align 4
  br label %52

43:                                               ; preds = %33
  %44 = load i32, i32* @xive_provision_size, align 4
  %45 = load i32, i32* @xive_provision_size, align 4
  %46 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %44, i32 %45, i32 0, i32* null)
  store i32 %46, i32* @xive_provision_cache, align 4
  %47 = load i32, i32* @xive_provision_cache, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

51:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %49, %40, %32, %21, %14, %8
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32, i32) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
