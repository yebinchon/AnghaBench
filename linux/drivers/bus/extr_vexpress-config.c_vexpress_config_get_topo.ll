; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_vexpress-config.c_vexpress_config_get_topo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_vexpress-config.c_vexpress_config_get_topo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"arm,vexpress,site\00", align 1
@VEXPRESS_SITE_MASTER = common dso_local global i64 0, align 8
@vexpress_config_site_master = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"arm,vexpress,position\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"arm,vexpress,dcc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vexpress_config_get_topo(%struct.device_node* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load %struct.device_node*, %struct.device_node** %6, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = call i32 @vexpress_config_find_prop(%struct.device_node* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64* %11)
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VEXPRESS_SITE_MASTER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* @vexpress_config_site_master, align 8
  %19 = load i64*, i64** %7, align 8
  store i64 %18, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i64, i64* @vexpress_config_site_master, align 8
  %22 = load i64, i64* @VEXPRESS_SITE_MASTER, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %37

30:                                               ; preds = %20
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = call i32 @vexpress_config_find_prop(%struct.device_node* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64* %32)
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = call i32 @vexpress_config_find_prop(%struct.device_node* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64* %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @vexpress_config_find_prop(%struct.device_node*, i8*, i64*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
