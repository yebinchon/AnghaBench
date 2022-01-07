; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-cpus.c_sun9i_a80_cpus_clk_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-cpus.c_sun9i_a80_cpus_clk_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }

@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @sun9i_a80_cpus_clk_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun9i_a80_cpus_clk_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %7, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %15 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %16 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %14, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %19 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %18)
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %61, %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %25, i32 %26)
  store %struct.clk_hw* %27, %struct.clk_hw** %6, align 8
  %28 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %29 = icmp ne %struct.clk_hw* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %61

31:                                               ; preds = %24
  %32 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %33 = call i32 @clk_hw_get_flags(%struct.clk_hw* %32)
  %34 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %39 = load i64, i64* %14, align 8
  %40 = call i64 @clk_hw_round_rate(%struct.clk_hw* %38, i64 %39)
  store i64 %40, i64* %10, align 8
  br label %44

41:                                               ; preds = %31
  %42 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %43 = call i64 @clk_hw_get_rate(%struct.clk_hw* %42)
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i64, i64* %14, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @sun9i_a80_cpus_clk_round(i64 %45, i32* null, i32* null, i32 %46, i64 %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %14, align 8
  %51 = icmp ule i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  store %struct.clk_hw* %57, %struct.clk_hw** %7, align 8
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %12, align 8
  store i64 %59, i64* %13, align 8
  br label %60

60:                                               ; preds = %56, %52, %44
  br label %61

61:                                               ; preds = %60, %30
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %20

64:                                               ; preds = %20
  %65 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %66 = icmp ne %struct.clk_hw* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %80

70:                                               ; preds = %64
  %71 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %72 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %73 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %72, i32 0, i32 2
  store %struct.clk_hw* %71, %struct.clk_hw** %73, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %76 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %79 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %70, %67
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i32 @clk_hw_get_flags(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i64 @sun9i_a80_cpus_clk_round(i64, i32*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
