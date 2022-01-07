; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_of_device_common.c_of_bus_sbus_match.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_of_device_common.c_of_bus_sbus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node* }

@.str = private unnamed_addr constant [5 x i8] c"sbus\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sbi\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_bus_sbus_match(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  store %struct.device_node* %5, %struct.device_node** %4, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = call i64 @of_node_name_eq(%struct.device_node* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call i64 @of_node_name_eq(%struct.device_node* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9
  store i32 1, i32* %2, align 4
  br label %28

18:                                               ; preds = %13
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i32* @of_find_property(%struct.device_node* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %27

23:                                               ; preds = %18
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = getelementptr inbounds %struct.device_node, %struct.device_node* %24, i32 0, i32 0
  %26 = load %struct.device_node*, %struct.device_node** %25, align 8
  store %struct.device_node* %26, %struct.device_node** %4, align 8
  br label %6

27:                                               ; preds = %22, %6
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local i32* @of_find_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
