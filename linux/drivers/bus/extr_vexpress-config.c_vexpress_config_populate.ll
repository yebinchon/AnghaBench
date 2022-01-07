; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_vexpress-config.c_vexpress_config_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_vexpress-config.c_vexpress_config_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"arm,vexpress,config-bridge\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@vexpress_config_class = common dso_local global i32 0, align 4
@vexpress_config_node_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @vexpress_config_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vexpress_config_populate(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %7 = load %struct.device_node*, %struct.device_node** %3, align 8
  %8 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %8, %struct.device_node** %4, align 8
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load i32, i32* @vexpress_config_class, align 4
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = load i32, i32* @vexpress_config_node_match, align 4
  %18 = call %struct.device* @class_find_device(i32 %15, i32* null, %struct.device_node* %16, i32 %17)
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i32 @of_node_put(%struct.device_node* %19)
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = icmp ne %struct.device* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %14
  %31 = load %struct.device_node*, %struct.device_node** %3, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @of_platform_populate(%struct.device_node* %31, i32* null, i32* null, %struct.device* %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i32 @put_device(%struct.device* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %27, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.device* @class_find_device(i32, i32*, %struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32*, i32*, %struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
