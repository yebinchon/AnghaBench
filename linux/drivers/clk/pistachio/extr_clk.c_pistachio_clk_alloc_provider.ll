; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk.c_pistachio_clk_alloc_provider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk.c_pistachio_clk_alloc_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pistachio_clk_provider = type { %struct.TYPE_2__, i32, %struct.device_node* }
%struct.TYPE_2__ = type { i32, %struct.pistachio_clk_provider* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to map clock provider registers\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pistachio_clk_provider* @pistachio_clk_alloc_provider(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca %struct.pistachio_clk_provider*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pistachio_clk_provider*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.pistachio_clk_provider* @kzalloc(i32 32, i32 %7)
  store %struct.pistachio_clk_provider* %8, %struct.pistachio_clk_provider** %6, align 8
  %9 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %6, align 8
  %10 = icmp ne %struct.pistachio_clk_provider* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %6, align 8
  store %struct.pistachio_clk_provider* %12, %struct.pistachio_clk_provider** %3, align 8
  br label %55

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.pistachio_clk_provider* @kcalloc(i32 %14, i32 8, i32 %15)
  %17 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %6, align 8
  %18 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store %struct.pistachio_clk_provider* %16, %struct.pistachio_clk_provider** %19, align 8
  %20 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %6, align 8
  %21 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %22, align 8
  %24 = icmp ne %struct.pistachio_clk_provider* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %13
  br label %52

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %6, align 8
  %29 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.device_node*, %struct.device_node** %4, align 8
  %32 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %6, align 8
  %33 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %32, i32 0, i32 2
  store %struct.device_node* %31, %struct.device_node** %33, align 8
  %34 = load %struct.device_node*, %struct.device_node** %4, align 8
  %35 = call i32 @of_iomap(%struct.device_node* %34, i32 0)
  %36 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %6, align 8
  %37 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %6, align 8
  %39 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %26
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %46

44:                                               ; preds = %26
  %45 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %6, align 8
  store %struct.pistachio_clk_provider* %45, %struct.pistachio_clk_provider** %3, align 8
  br label %55

46:                                               ; preds = %42
  %47 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %6, align 8
  %48 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %49, align 8
  %51 = call i32 @kfree(%struct.pistachio_clk_provider* %50)
  br label %52

52:                                               ; preds = %46, %25
  %53 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %6, align 8
  %54 = call i32 @kfree(%struct.pistachio_clk_provider* %53)
  store %struct.pistachio_clk_provider* null, %struct.pistachio_clk_provider** %3, align 8
  br label %55

55:                                               ; preds = %52, %44, %11
  %56 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %3, align 8
  ret %struct.pistachio_clk_provider* %56
}

declare dso_local %struct.pistachio_clk_provider* @kzalloc(i32, i32) #1

declare dso_local %struct.pistachio_clk_provider* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.pistachio_clk_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
