; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-dt.c_find_supply_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-dt.c_find_supply_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32 }
%struct.device_node = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"cpu0-supply\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cpu0\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cpu-supply\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"no regulator for cpu%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*)* @find_supply_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_supply_name(%struct.device* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.device_node* @of_node_get(i32 %13)
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = icmp ne %struct.device_node* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %46

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call %struct.property* @of_find_property(%struct.device_node* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %27, %struct.property** %5, align 8
  %28 = load %struct.property*, %struct.property** %5, align 8
  %29 = icmp ne %struct.property* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %42

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = call %struct.property* @of_find_property(%struct.device_node* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store %struct.property* %34, %struct.property** %5, align 8
  %35 = load %struct.property*, %struct.property** %5, align 8
  %36 = icmp ne %struct.property* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %42

38:                                               ; preds = %32
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %37, %30
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = call i32 @of_node_put(%struct.device_node* %43)
  %45 = load i8*, i8** %7, align 8
  store i8* %45, i8** %2, align 8
  br label %46

46:                                               ; preds = %42, %21
  %47 = load i8*, i8** %2, align 8
  ret i8* %47
}

declare dso_local %struct.device_node* @of_node_get(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
