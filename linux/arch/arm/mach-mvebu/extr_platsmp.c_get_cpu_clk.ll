; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_platsmp.c_get_cpu_clk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_platsmp.c_get_cpu_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"missing cpu node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (i32)* @get_cpu_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @get_cpu_clk(i32 %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.device_node*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.device_node* @of_get_cpu_node(i32 %6, i32* null)
  store %struct.device_node* %7, %struct.device_node** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %5, align 8
  %9 = icmp ne %struct.device_node* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.clk* null, %struct.clk** %2, align 8
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = call %struct.clk* @of_clk_get(%struct.device_node* %16, i32 0)
  store %struct.clk* %17, %struct.clk** %4, align 8
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = call i32 @IS_ERR(%struct.clk* %18)
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store %struct.clk* null, %struct.clk** %2, align 8
  br label %25

23:                                               ; preds = %15
  %24 = load %struct.clk*, %struct.clk** %4, align 8
  store %struct.clk* %24, %struct.clk** %2, align 8
  br label %25

25:                                               ; preds = %23, %22, %14
  %26 = load %struct.clk*, %struct.clk** %2, align 8
  ret %struct.clk* %26
}

declare dso_local %struct.device_node* @of_get_cpu_node(i32, i32*) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local %struct.clk* @of_clk_get(%struct.device_node*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
