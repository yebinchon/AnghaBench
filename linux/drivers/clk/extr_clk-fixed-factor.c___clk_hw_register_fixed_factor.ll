; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-fixed-factor.c___clk_hw_register_fixed_factor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-fixed-factor.c___clk_hw_register_fixed_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i64, i8**, i32, %struct.clk_parent_data*, i32* }
%struct.clk_parent_data = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.clk_fixed_factor = type { i32, i32, %struct.clk_hw }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_fixed_factor_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.device*, %struct.device_node*, i8*, i8*, i32, i64, i32, i32)* @__clk_hw_register_fixed_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @__clk_hw_register_fixed_factor(%struct.device* %0, %struct.device_node* %1, i8* %2, i8* %3, i32 %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.clk_hw*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.clk_fixed_factor*, align 8
  %19 = alloca %struct.clk_init_data, align 8
  %20 = alloca %struct.clk_parent_data, align 4
  %21 = alloca %struct.clk_hw*, align 8
  %22 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %10, align 8
  store %struct.device_node* %1, %struct.device_node** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = bitcast %struct.clk_init_data* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 48, i1 false)
  %24 = getelementptr inbounds %struct.clk_parent_data, %struct.clk_parent_data* %20, i32 0, i32 0
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.clk_fixed_factor* @kmalloc(i32 16, i32 %26)
  store %struct.clk_fixed_factor* %27, %struct.clk_fixed_factor** %18, align 8
  %28 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %18, align 8
  %29 = icmp ne %struct.clk_fixed_factor* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %8
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.clk_hw* @ERR_PTR(i32 %32)
  store %struct.clk_hw* %33, %struct.clk_hw** %9, align 8
  br label %79

34:                                               ; preds = %8
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %18, align 8
  %37 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %17, align 4
  %39 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %18, align 8
  %40 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %18, align 8
  %42 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %42, i32 0, i32 0
  store %struct.clk_init_data* %19, %struct.clk_init_data** %43, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %19, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %19, i32 0, i32 5
  store i32* @clk_fixed_factor_ops, i32** %46, align 8
  %47 = load i64, i64* %15, align 8
  %48 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %19, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %19, i32 0, i32 2
  store i8** %13, i8*** %52, align 8
  br label %55

53:                                               ; preds = %34
  %54 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %19, i32 0, i32 4
  store %struct.clk_parent_data* %20, %struct.clk_parent_data** %54, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %19, i32 0, i32 3
  store i32 1, i32* %56, align 8
  %57 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %18, align 8
  %58 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %57, i32 0, i32 2
  store %struct.clk_hw* %58, %struct.clk_hw** %21, align 8
  %59 = load %struct.device*, %struct.device** %10, align 8
  %60 = icmp ne %struct.device* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.device*, %struct.device** %10, align 8
  %63 = load %struct.clk_hw*, %struct.clk_hw** %21, align 8
  %64 = call i32 @clk_hw_register(%struct.device* %62, %struct.clk_hw* %63)
  store i32 %64, i32* %22, align 4
  br label %69

65:                                               ; preds = %55
  %66 = load %struct.device_node*, %struct.device_node** %11, align 8
  %67 = load %struct.clk_hw*, %struct.clk_hw** %21, align 8
  %68 = call i32 @of_clk_hw_register(%struct.device_node* %66, %struct.clk_hw* %67)
  store i32 %68, i32* %22, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %22, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %18, align 8
  %74 = call i32 @kfree(%struct.clk_fixed_factor* %73)
  %75 = load i32, i32* %22, align 4
  %76 = call %struct.clk_hw* @ERR_PTR(i32 %75)
  store %struct.clk_hw* %76, %struct.clk_hw** %21, align 8
  br label %77

77:                                               ; preds = %72, %69
  %78 = load %struct.clk_hw*, %struct.clk_hw** %21, align 8
  store %struct.clk_hw* %78, %struct.clk_hw** %9, align 8
  br label %79

79:                                               ; preds = %77, %30
  %80 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  ret %struct.clk_hw* %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.clk_fixed_factor* @kmalloc(i32, i32) #2

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #2

declare dso_local i32 @clk_hw_register(%struct.device*, %struct.clk_hw*) #2

declare dso_local i32 @of_clk_hw_register(%struct.device_node*, %struct.clk_hw*) #2

declare dso_local i32 @kfree(%struct.clk_fixed_factor*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
