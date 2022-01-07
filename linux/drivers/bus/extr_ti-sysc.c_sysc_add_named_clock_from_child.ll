; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_add_named_clock_from_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_add_named_clock_from_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_lookup = type { i8*, %struct.clk*, i32 }
%struct.clk = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*, i8*, i8*)* @sysc_add_named_clock_from_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_add_named_clock_from_child(%struct.sysc* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.clk_lookup*, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca i8*, align 8
  store %struct.sysc* %0, %struct.sysc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.sysc*, %struct.sysc** %5, align 8
  %14 = getelementptr inbounds %struct.sysc, %struct.sysc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %12, align 8
  br label %24

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %12, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.device_node*, %struct.device_node** %8, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = call %struct.clk* @of_clk_get_by_name(%struct.device_node* %25, i8* %26)
  store %struct.clk* %27, %struct.clk** %11, align 8
  %28 = load %struct.clk*, %struct.clk** %11, align 8
  %29 = call i64 @IS_ERR(%struct.clk* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load %struct.clk*, %struct.clk** %11, align 8
  %33 = call i32 @clk_put(%struct.clk* %32)
  store i32 0, i32* %4, align 4
  br label %80

34:                                               ; preds = %24
  %35 = load %struct.device_node*, %struct.device_node** %8, align 8
  %36 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %35, i32* null)
  store %struct.device_node* %36, %struct.device_node** %9, align 8
  %37 = load %struct.device_node*, %struct.device_node** %9, align 8
  %38 = icmp ne %struct.device_node* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %80

42:                                               ; preds = %34
  %43 = load %struct.sysc*, %struct.sysc** %5, align 8
  %44 = getelementptr inbounds %struct.sysc, %struct.sysc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load %struct.device_node*, %struct.device_node** %9, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call %struct.clk* @devm_get_clk_from_child(%struct.TYPE_3__* %45, %struct.device_node* %46, i8* %47)
  store %struct.clk* %48, %struct.clk** %11, align 8
  %49 = load %struct.clk*, %struct.clk** %11, align 8
  %50 = call i64 @IS_ERR(%struct.clk* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.clk*, %struct.clk** %11, align 8
  %54 = call i32 @PTR_ERR(%struct.clk* %53)
  store i32 %54, i32* %4, align 4
  br label %80

55:                                               ; preds = %42
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.clk_lookup* @kcalloc(i32 1, i32 24, i32 %56)
  store %struct.clk_lookup* %57, %struct.clk_lookup** %10, align 8
  %58 = load %struct.clk_lookup*, %struct.clk_lookup** %10, align 8
  %59 = icmp ne %struct.clk_lookup* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %80

63:                                               ; preds = %55
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.clk_lookup*, %struct.clk_lookup** %10, align 8
  %66 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.sysc*, %struct.sysc** %5, align 8
  %68 = getelementptr inbounds %struct.sysc, %struct.sysc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = call i32 @dev_name(%struct.TYPE_3__* %69)
  %71 = load %struct.clk_lookup*, %struct.clk_lookup** %10, align 8
  %72 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.clk*, %struct.clk** %11, align 8
  %74 = load %struct.clk_lookup*, %struct.clk_lookup** %10, align 8
  %75 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %74, i32 0, i32 1
  store %struct.clk* %73, %struct.clk** %75, align 8
  %76 = load %struct.clk_lookup*, %struct.clk_lookup** %10, align 8
  %77 = call i32 @clkdev_add(%struct.clk_lookup* %76)
  %78 = load %struct.clk*, %struct.clk** %11, align 8
  %79 = call i32 @clk_put(%struct.clk* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %63, %60, %52, %39, %31
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.clk* @of_clk_get_by_name(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, i32*) #1

declare dso_local %struct.clk* @devm_get_clk_from_child(%struct.TYPE_3__*, %struct.device_node*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk_lookup* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_3__*) #1

declare dso_local i32 @clkdev_add(%struct.clk_lookup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
