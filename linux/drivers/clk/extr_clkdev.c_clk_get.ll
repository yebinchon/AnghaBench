; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clkdev.c_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clkdev.c_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i64 }
%struct.clk_hw = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @clk_get(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i8* @dev_name(%struct.device* %11)
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi i8* [ %12, %10 ], [ null, %13 ]
  store i8* %15, i8** %6, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = icmp ne %struct.device* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.clk_hw* @of_clk_get_hw(i64 %26, i32 0, i8* %27)
  store %struct.clk_hw* %28, %struct.clk_hw** %7, align 8
  %29 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %30 = call i32 @IS_ERR(%struct.clk_hw* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %34 = call i32 @PTR_ERR(%struct.clk_hw* %33)
  %35 = load i32, i32* @EPROBE_DEFER, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32, %23
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call %struct.clk* @clk_hw_create_clk(%struct.device* %39, %struct.clk_hw* %40, i8* %41, i8* %42)
  store %struct.clk* %43, %struct.clk** %3, align 8
  br label %50

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %18, %14
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call %struct.clk* @__clk_get_sys(%struct.device* %46, i8* %47, i8* %48)
  store %struct.clk* %49, %struct.clk** %3, align 8
  br label %50

50:                                               ; preds = %45, %38
  %51 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %51
}

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.clk_hw* @of_clk_get_hw(i64, i32, i8*) #1

declare dso_local i32 @IS_ERR(%struct.clk_hw*) #1

declare dso_local i32 @PTR_ERR(%struct.clk_hw*) #1

declare dso_local %struct.clk* @clk_hw_create_clk(%struct.device*, %struct.clk_hw*, i8*, i8*) #1

declare dso_local %struct.clk* @__clk_get_sys(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
