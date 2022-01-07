; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-hisi/extr_hotplug.c_hip01_set_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-hisi/extr_hotplug.c_hip01_set_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@ctrl_base = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"hisilicon,hip01-sysctrl\00", align 1
@HIP01_PERI9 = common dso_local global i64 0, align 8
@PERI9_CPU1_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hip01_set_cpu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @ctrl_base, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = icmp ne %struct.device_node* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = call i64 @of_iomap(%struct.device_node* %16, i32 0)
  store i64 %17, i64* @ctrl_base, align 8
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = call i32 @of_node_put(%struct.device_node* %18)
  %20 = load i64, i64* @ctrl_base, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  br label %25

25:                                               ; preds = %9, %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %25
  %29 = load i64, i64* @ctrl_base, align 8
  %30 = load i64, i64* @HIP01_PERI9, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl_relaxed(i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @PERI9_CPU1_RESET, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* @ctrl_base, align 8
  %38 = load i64, i64* @HIP01_PERI9, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i32 %36, i64 %39)
  %41 = call i32 @udelay(i32 50)
  %42 = load i64, i64* @ctrl_base, align 8
  %43 = load i64, i64* @HIP01_PERI9, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl_relaxed(i64 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @PERI9_CPU1_RESET, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i64, i64* @ctrl_base, align 8
  %52 = load i64, i64* @HIP01_PERI9, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel_relaxed(i32 %50, i64 %53)
  br label %55

55:                                               ; preds = %28, %25
  ret void
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
