; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-icst.c_icst_clk_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-icst.c_icst_clk_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_icst_desc = type { i32, i32, i32 }
%struct.regmap = type { i32 }
%struct.clk_icst = type { i32, %struct.TYPE_2__, i32, i32, %struct.clk_icst*, %struct.regmap* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i64, i32* }
%struct.icst_params = type { i32, %struct.TYPE_2__, i32, i32, %struct.icst_params*, %struct.regmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@icst_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, %struct.clk_icst_desc*, i8*, i8*, %struct.regmap*, i32)* @icst_clk_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @icst_clk_setup(%struct.device* %0, %struct.clk_icst_desc* %1, i8* %2, i8* %3, %struct.regmap* %4, i32 %5) #0 {
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.clk_icst_desc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.regmap*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.clk*, align 8
  %15 = alloca %struct.clk_icst*, align 8
  %16 = alloca %struct.clk_init_data, align 8
  %17 = alloca %struct.icst_params*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.clk_icst_desc* %1, %struct.clk_icst_desc** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.regmap* %4, %struct.regmap** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.icst_params* @kzalloc(i32 40, i32 %18)
  %20 = bitcast %struct.icst_params* %19 to %struct.clk_icst*
  store %struct.clk_icst* %20, %struct.clk_icst** %15, align 8
  %21 = load %struct.clk_icst*, %struct.clk_icst** %15, align 8
  %22 = icmp ne %struct.clk_icst* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.clk* @ERR_PTR(i32 %25)
  store %struct.clk* %26, %struct.clk** %7, align 8
  br label %97

27:                                               ; preds = %6
  %28 = load %struct.clk_icst_desc*, %struct.clk_icst_desc** %9, align 8
  %29 = getelementptr inbounds %struct.clk_icst_desc, %struct.clk_icst_desc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.icst_params* @kmemdup(i32 %30, i32 40, i32 %31)
  store %struct.icst_params* %32, %struct.icst_params** %17, align 8
  %33 = load %struct.icst_params*, %struct.icst_params** %17, align 8
  %34 = icmp ne %struct.icst_params* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  %36 = load %struct.clk_icst*, %struct.clk_icst** %15, align 8
  %37 = bitcast %struct.clk_icst* %36 to %struct.icst_params*
  %38 = call i32 @kfree(%struct.icst_params* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.clk* @ERR_PTR(i32 %40)
  store %struct.clk* %41, %struct.clk** %7, align 8
  br label %97

42:                                               ; preds = %27
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 4
  store i32* @icst_ops, i32** %45, align 8
  %46 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %49
  %52 = phi i8** [ %11, %49 ], [ null, %50 ]
  %53 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 1
  store i8** %52, i8*** %53, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = load %struct.regmap*, %struct.regmap** %12, align 8
  %60 = load %struct.clk_icst*, %struct.clk_icst** %15, align 8
  %61 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %60, i32 0, i32 5
  store %struct.regmap* %59, %struct.regmap** %61, align 8
  %62 = load %struct.clk_icst*, %struct.clk_icst** %15, align 8
  %63 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.clk_init_data* %16, %struct.clk_init_data** %64, align 8
  %65 = load %struct.icst_params*, %struct.icst_params** %17, align 8
  %66 = bitcast %struct.icst_params* %65 to %struct.clk_icst*
  %67 = load %struct.clk_icst*, %struct.clk_icst** %15, align 8
  %68 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %67, i32 0, i32 4
  store %struct.clk_icst* %66, %struct.clk_icst** %68, align 8
  %69 = load %struct.clk_icst_desc*, %struct.clk_icst_desc** %9, align 8
  %70 = getelementptr inbounds %struct.clk_icst_desc, %struct.clk_icst_desc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.clk_icst*, %struct.clk_icst** %15, align 8
  %73 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.clk_icst_desc*, %struct.clk_icst_desc** %9, align 8
  %75 = getelementptr inbounds %struct.clk_icst_desc, %struct.clk_icst_desc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.clk_icst*, %struct.clk_icst** %15, align 8
  %78 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.clk_icst*, %struct.clk_icst** %15, align 8
  %81 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.device*, %struct.device** %8, align 8
  %83 = load %struct.clk_icst*, %struct.clk_icst** %15, align 8
  %84 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %83, i32 0, i32 1
  %85 = call %struct.clk* @clk_register(%struct.device* %82, %struct.TYPE_2__* %84)
  store %struct.clk* %85, %struct.clk** %14, align 8
  %86 = load %struct.clk*, %struct.clk** %14, align 8
  %87 = call i64 @IS_ERR(%struct.clk* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %51
  %90 = load %struct.icst_params*, %struct.icst_params** %17, align 8
  %91 = call i32 @kfree(%struct.icst_params* %90)
  %92 = load %struct.clk_icst*, %struct.clk_icst** %15, align 8
  %93 = bitcast %struct.clk_icst* %92 to %struct.icst_params*
  %94 = call i32 @kfree(%struct.icst_params* %93)
  br label %95

95:                                               ; preds = %89, %51
  %96 = load %struct.clk*, %struct.clk** %14, align 8
  store %struct.clk* %96, %struct.clk** %7, align 8
  br label %97

97:                                               ; preds = %95, %35, %23
  %98 = load %struct.clk*, %struct.clk** %7, align 8
  ret %struct.clk* %98
}

declare dso_local %struct.icst_params* @kzalloc(i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local %struct.icst_params* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.icst_params*) #1

declare dso_local %struct.clk* @clk_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
