; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_common.c_mcs814x_eth_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_common.c_mcs814x_eth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@mcs814x_eth_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"nuport-mac,buffer-shifting\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"nuport-mac,link-activity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mcs814x_eth_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcs814x_eth_init() #0 {
  %1 = alloca %struct.device_node*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @mcs814x_eth_ids, align 4
  %4 = call %struct.device_node* @of_find_matching_node(i32* null, i32 %3)
  store %struct.device_node* %4, %struct.device_node** %1, align 8
  %5 = load %struct.device_node*, %struct.device_node** %1, align 8
  %6 = icmp ne %struct.device_node* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %30

8:                                                ; preds = %0
  %9 = call i32 @mcs814x_eth_hardware_filter_set(i32 1)
  %10 = load %struct.device_node*, %struct.device_node** %1, align 8
  %11 = call i32* @of_get_property(%struct.device_node* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = call i32 @mcs814x_eth_buffer_shifting_set(i32 0)
  br label %18

16:                                               ; preds = %8
  %17 = call i32 @mcs814x_eth_buffer_shifting_set(i32 1)
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.device_node*, %struct.device_node** %1, align 8
  %20 = call i32* @of_get_property(%struct.device_node* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %20, i32** %2, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @be32_to_cpup(i32* %24)
  %26 = call i32 @mcs814x_eth_led_cfg_set(i32 %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.device_node*, %struct.device_node** %1, align 8
  %29 = call i32 @of_node_put(%struct.device_node* %28)
  br label %30

30:                                               ; preds = %27, %7
  ret void
}

declare dso_local %struct.device_node* @of_find_matching_node(i32*, i32) #1

declare dso_local i32 @mcs814x_eth_hardware_filter_set(i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @mcs814x_eth_buffer_shifting_set(i32) #1

declare dso_local i32 @mcs814x_eth_led_cfg_set(i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
