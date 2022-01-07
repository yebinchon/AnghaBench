; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpc5xxx_clocks.c_mpc5xxx_get_bus_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpc5xxx_clocks.c_mpc5xxx_get_bus_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mpc5xxx_get_bus_frequency(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load %struct.device_node*, %struct.device_node** %2, align 8
  %5 = call i32 @of_node_get(%struct.device_node* %4)
  br label %6

6:                                                ; preds = %15, %1
  %7 = load %struct.device_node*, %struct.device_node** %2, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load %struct.device_node*, %struct.device_node** %2, align 8
  %11 = call i32* @of_get_property(%struct.device_node* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %18

15:                                               ; preds = %9
  %16 = load %struct.device_node*, %struct.device_node** %2, align 8
  %17 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %16)
  store %struct.device_node* %17, %struct.device_node** %2, align 8
  br label %6

18:                                               ; preds = %14, %6
  %19 = load %struct.device_node*, %struct.device_node** %2, align 8
  %20 = call i32 @of_node_put(%struct.device_node* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 0, %26 ]
  %29 = zext i32 %28 to i64
  ret i64 %29
}

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
