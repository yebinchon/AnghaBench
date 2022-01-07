; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { %struct.device_node*, %struct.device*, %struct.TYPE_2__* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.clk_hw = type { %struct.clk_core* }
%struct.of_phandle_args = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_core* (%struct.clk_core*, i64)* @clk_core_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_core* @clk_core_get(%struct.clk_core* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_core*, align 8
  %4 = alloca %struct.clk_core*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.of_phandle_args, align 4
  store %struct.clk_core* %0, %struct.clk_core** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %14 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %21 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.clk_hw* @ERR_PTR(i32 %28)
  store %struct.clk_hw* %29, %struct.clk_hw** %8, align 8
  %30 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %31 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %30, i32 0, i32 1
  %32 = load %struct.device*, %struct.device** %31, align 8
  store %struct.device* %32, %struct.device** %9, align 8
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = icmp ne %struct.device* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.device*, %struct.device** %9, align 8
  %37 = call i8* @dev_name(%struct.device* %36)
  br label %39

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i8* [ %37, %35 ], [ null, %38 ]
  store i8* %40, i8** %10, align 8
  %41 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %42 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %41, i32 0, i32 0
  %43 = load %struct.device_node*, %struct.device_node** %42, align 8
  store %struct.device_node* %43, %struct.device_node** %11, align 8
  %44 = load %struct.device_node*, %struct.device_node** %11, align 8
  %45 = icmp ne %struct.device_node* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49, %46
  %53 = load %struct.device_node*, %struct.device_node** %11, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @of_parse_clkspec(%struct.device_node* %53, i32 %54, i8* %55, %struct.of_phandle_args* %12)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = call %struct.clk_hw* @of_clk_get_hw_from_clkspec(%struct.of_phandle_args* %12)
  store %struct.clk_hw* %59, %struct.clk_hw** %8, align 8
  %60 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %12, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @of_node_put(i32 %61)
  br label %71

63:                                               ; preds = %52, %49, %39
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call %struct.clk_hw* @clk_find_hw(i8* %67, i8* %68)
  store %struct.clk_hw* %69, %struct.clk_hw** %8, align 8
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70, %58
  %72 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %73 = call i64 @IS_ERR(%struct.clk_hw* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %77 = call %struct.clk_core* @ERR_CAST(%struct.clk_hw* %76)
  store %struct.clk_core* %77, %struct.clk_core** %3, align 8
  br label %82

78:                                               ; preds = %71
  %79 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %80 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %79, i32 0, i32 0
  %81 = load %struct.clk_core*, %struct.clk_core** %80, align 8
  store %struct.clk_core* %81, %struct.clk_core** %3, align 8
  br label %82

82:                                               ; preds = %78, %75
  %83 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  ret %struct.clk_core* %83
}

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @of_parse_clkspec(%struct.device_node*, i32, i8*, %struct.of_phandle_args*) #1

declare dso_local %struct.clk_hw* @of_clk_get_hw_from_clkspec(%struct.of_phandle_args*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local %struct.clk_hw* @clk_find_hw(i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk_hw*) #1

declare dso_local %struct.clk_core* @ERR_CAST(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
