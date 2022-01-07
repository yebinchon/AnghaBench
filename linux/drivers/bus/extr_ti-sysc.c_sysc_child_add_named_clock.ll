; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_child_add_named_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_child_add_named_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { %struct.device* }
%struct.device = type { i32 }
%struct.clk = type { i32 }
%struct.clk_lookup = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*, %struct.device*, i8*)* @sysc_child_add_named_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_child_add_named_clock(%struct.sysc* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca %struct.clk_lookup*, align 8
  %10 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.clk* @clk_get(%struct.device* %15, i8* %16)
  store %struct.clk* %17, %struct.clk** %8, align 8
  %18 = load %struct.clk*, %struct.clk** %8, align 8
  %19 = call i64 @IS_ERR(%struct.clk* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.clk*, %struct.clk** %8, align 8
  %23 = call i32 @clk_put(%struct.clk* %22)
  %24 = load i32, i32* @EEXIST, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %53

26:                                               ; preds = %14
  %27 = load %struct.sysc*, %struct.sysc** %5, align 8
  %28 = getelementptr inbounds %struct.sysc, %struct.sysc* %27, i32 0, i32 0
  %29 = load %struct.device*, %struct.device** %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call %struct.clk* @clk_get(%struct.device* %29, i8* %30)
  store %struct.clk* %31, %struct.clk** %8, align 8
  %32 = load %struct.clk*, %struct.clk** %8, align 8
  %33 = call i64 @IS_ERR(%struct.clk* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %26
  %39 = load %struct.clk*, %struct.clk** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @dev_name(%struct.device* %41)
  %43 = call %struct.clk_lookup* @clkdev_create(%struct.clk* %39, i8* %40, i32 %42)
  store %struct.clk_lookup* %43, %struct.clk_lookup** %9, align 8
  %44 = load %struct.clk_lookup*, %struct.clk_lookup** %9, align 8
  %45 = icmp ne %struct.clk_lookup* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46, %38
  %50 = load %struct.clk*, %struct.clk** %8, align 8
  %51 = call i32 @clk_put(%struct.clk* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %35, %21, %13
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.clk* @clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local %struct.clk_lookup* @clkdev_create(%struct.clk*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
