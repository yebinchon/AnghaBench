; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm53573-ilp.c_bcm53573_ilp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm53573-ilp.c_bcm53573_ilp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.bcm53573_ilp = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@bcm53573_ilp_clk_ops = common dso_local global i32 0, align 4
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to init ILP clock: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @bcm53573_ilp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm53573_ilp_init(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.bcm53573_ilp*, align 8
  %4 = alloca %struct.clk_init_data, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %7 = bitcast %struct.clk_init_data* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 32, i1 false)
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bcm53573_ilp* @kzalloc(i32 16, i32 %8)
  store %struct.bcm53573_ilp* %9, %struct.bcm53573_ilp** %3, align 8
  %10 = load %struct.bcm53573_ilp*, %struct.bcm53573_ilp** %3, align 8
  %11 = icmp ne %struct.bcm53573_ilp* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %73

13:                                               ; preds = %1
  %14 = load %struct.device_node*, %struct.device_node** %2, align 8
  %15 = call i8* @of_clk_get_parent_name(%struct.device_node* %14, i32 0)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %68

21:                                               ; preds = %13
  %22 = load %struct.device_node*, %struct.device_node** %2, align 8
  %23 = call i32 @of_get_parent(%struct.device_node* %22)
  %24 = call i32 @syscon_node_to_regmap(i32 %23)
  %25 = load %struct.bcm53573_ilp*, %struct.bcm53573_ilp** %3, align 8
  %26 = getelementptr inbounds %struct.bcm53573_ilp, %struct.bcm53573_ilp* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.bcm53573_ilp*, %struct.bcm53573_ilp** %3, align 8
  %28 = getelementptr inbounds %struct.bcm53573_ilp, %struct.bcm53573_ilp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.bcm53573_ilp*, %struct.bcm53573_ilp** %3, align 8
  %34 = getelementptr inbounds %struct.bcm53573_ilp, %struct.bcm53573_ilp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %6, align 4
  br label %68

37:                                               ; preds = %21
  %38 = load %struct.device_node*, %struct.device_node** %2, align 8
  %39 = getelementptr inbounds %struct.device_node, %struct.device_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 3
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 2
  store i32* @bcm53573_ilp_clk_ops, i32** %42, align 8
  %43 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 0
  store i8** %5, i8*** %43, align 8
  %44 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 1
  store i32 1, i32* %44, align 8
  %45 = load %struct.bcm53573_ilp*, %struct.bcm53573_ilp** %3, align 8
  %46 = getelementptr inbounds %struct.bcm53573_ilp, %struct.bcm53573_ilp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store %struct.clk_init_data* %4, %struct.clk_init_data** %47, align 8
  %48 = load %struct.bcm53573_ilp*, %struct.bcm53573_ilp** %3, align 8
  %49 = getelementptr inbounds %struct.bcm53573_ilp, %struct.bcm53573_ilp* %48, i32 0, i32 0
  %50 = call i32 @clk_hw_register(i32* null, %struct.TYPE_4__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %68

54:                                               ; preds = %37
  %55 = load %struct.device_node*, %struct.device_node** %2, align 8
  %56 = load i32, i32* @of_clk_hw_simple_get, align 4
  %57 = load %struct.bcm53573_ilp*, %struct.bcm53573_ilp** %3, align 8
  %58 = getelementptr inbounds %struct.bcm53573_ilp, %struct.bcm53573_ilp* %57, i32 0, i32 0
  %59 = call i32 @of_clk_add_hw_provider(%struct.device_node* %55, i32 %56, %struct.TYPE_4__* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %64

63:                                               ; preds = %54
  br label %73

64:                                               ; preds = %62
  %65 = load %struct.bcm53573_ilp*, %struct.bcm53573_ilp** %3, align 8
  %66 = getelementptr inbounds %struct.bcm53573_ilp, %struct.bcm53573_ilp* %65, i32 0, i32 0
  %67 = call i32 @clk_hw_unregister(%struct.TYPE_4__* %66)
  br label %68

68:                                               ; preds = %64, %53, %32, %18
  %69 = load %struct.bcm53573_ilp*, %struct.bcm53573_ilp** %3, align 8
  %70 = call i32 @kfree(%struct.bcm53573_ilp* %69)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %63, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.bcm53573_ilp* @kzalloc(i32, i32) #2

declare dso_local i8* @of_clk_get_parent_name(%struct.device_node*, i32) #2

declare dso_local i32 @syscon_node_to_regmap(i32) #2

declare dso_local i32 @of_get_parent(%struct.device_node*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @clk_hw_register(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @of_clk_add_hw_provider(%struct.device_node*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @clk_hw_unregister(%struct.TYPE_4__*) #2

declare dso_local i32 @kfree(%struct.bcm53573_ilp*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
