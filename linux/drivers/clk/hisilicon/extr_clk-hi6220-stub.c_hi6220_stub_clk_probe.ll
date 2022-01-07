; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi6220-stub.c_hi6220_stub_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi6220-stub.c_hi6220_stub_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_init_data = type { i8*, i64, i64, i32* }
%struct.hi6220_stub_clk = type { %struct.clk*, %struct.TYPE_4__, %struct.clk*, %struct.TYPE_3__, i32, %struct.device* }
%struct.TYPE_4__ = type { %struct.clk_init_data* }
%struct.clk = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"hisilicon,hi6220-clk-sram\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to get sram regmap\0A\00", align 1
@HI6220_STUB_ACPU0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed get mailbox channel\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"acpu0\00", align 1
@hi6220_stub_clk_ops = common dso_local global i32 0, align 4
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to register OF clock provider\0A\00", align 1
@ACPU_DFS_FLAG = common dso_local global i32 0, align 4
@ACPU_DFS_FREQ_REQ = common dso_local global i32 0, align 4
@ACPU_DFS_FREQ_LMT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Registered clock '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi6220_stub_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6220_stub_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.clk_init_data, align 8
  %6 = alloca %struct.hi6220_stub_clk*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %8, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.hi6220_stub_clk* @devm_kzalloc(%struct.device* %16, i32 72, i32 %17)
  store %struct.hi6220_stub_clk* %18, %struct.hi6220_stub_clk** %6, align 8
  %19 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %20 = icmp ne %struct.hi6220_stub_clk* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %130

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %8, align 8
  %26 = call %struct.clk* @syscon_regmap_lookup_by_phandle(%struct.device_node* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %28 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %27, i32 0, i32 0
  store %struct.clk* %26, %struct.clk** %28, align 8
  %29 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %30 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %29, i32 0, i32 0
  %31 = load %struct.clk*, %struct.clk** %30, align 8
  %32 = call i64 @IS_ERR(%struct.clk* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %38 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %37, i32 0, i32 0
  %39 = load %struct.clk*, %struct.clk** %38, align 8
  %40 = call i32 @PTR_ERR(%struct.clk* %39)
  store i32 %40, i32* %2, align 4
  br label %130

41:                                               ; preds = %24
  %42 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %43 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct.clk_init_data* %5, %struct.clk_init_data** %44, align 8
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %47 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %46, i32 0, i32 5
  store %struct.device* %45, %struct.device** %47, align 8
  %48 = load i32, i32* @HI6220_STUB_ACPU0, align 4
  %49 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %50 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %53 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  store %struct.device* %51, %struct.device** %54, align 8
  %55 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %56 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i32* null, i32** %57, align 8
  %58 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %59 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %62 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 500, i32* %63, align 4
  %64 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %65 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  %67 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %68 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %67, i32 0, i32 3
  %69 = call %struct.clk* @mbox_request_channel(%struct.TYPE_3__* %68, i32 0)
  %70 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %71 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %70, i32 0, i32 2
  store %struct.clk* %69, %struct.clk** %71, align 8
  %72 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %73 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %72, i32 0, i32 2
  %74 = load %struct.clk*, %struct.clk** %73, align 8
  %75 = call i64 @IS_ERR(%struct.clk* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %41
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %81 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %80, i32 0, i32 2
  %82 = load %struct.clk*, %struct.clk** %81, align 8
  %83 = call i32 @PTR_ERR(%struct.clk* %82)
  store i32 %83, i32* %2, align 4
  br label %130

84:                                               ; preds = %41
  %85 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %85, align 8
  %86 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 3
  store i32* @hi6220_stub_clk_ops, i32** %86, align 8
  %87 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %91 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %90, i32 0, i32 1
  %92 = call %struct.clk* @devm_clk_register(%struct.device* %89, %struct.TYPE_4__* %91)
  store %struct.clk* %92, %struct.clk** %7, align 8
  %93 = load %struct.clk*, %struct.clk** %7, align 8
  %94 = call i64 @IS_ERR(%struct.clk* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = load %struct.clk*, %struct.clk** %7, align 8
  %98 = call i32 @PTR_ERR(%struct.clk* %97)
  store i32 %98, i32* %2, align 4
  br label %130

99:                                               ; preds = %84
  %100 = load %struct.device_node*, %struct.device_node** %8, align 8
  %101 = load i32, i32* @of_clk_src_simple_get, align 4
  %102 = load %struct.clk*, %struct.clk** %7, align 8
  %103 = call i32 @of_clk_add_provider(%struct.device_node* %100, i32 %101, %struct.clk* %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %2, align 4
  br label %130

110:                                              ; preds = %99
  %111 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %112 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %111, i32 0, i32 0
  %113 = load %struct.clk*, %struct.clk** %112, align 8
  %114 = load i32, i32* @ACPU_DFS_FLAG, align 4
  %115 = call i32 @regmap_write(%struct.clk* %113, i32 %114, i32 0)
  %116 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %117 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %116, i32 0, i32 0
  %118 = load %struct.clk*, %struct.clk** %117, align 8
  %119 = load i32, i32* @ACPU_DFS_FREQ_REQ, align 4
  %120 = call i32 @regmap_write(%struct.clk* %118, i32 %119, i32 0)
  %121 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %6, align 8
  %122 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %121, i32 0, i32 0
  %123 = load %struct.clk*, %struct.clk** %122, align 8
  %124 = load i32, i32* @ACPU_DFS_FREQ_LMT, align 4
  %125 = call i32 @regmap_write(%struct.clk* %123, i32 %124, i32 0)
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @dev_dbg(%struct.device* %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %128)
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %110, %106, %96, %77, %34, %21
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.hi6220_stub_clk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.clk* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @mbox_request_channel(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.clk* @devm_clk_register(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.clk*) #1

declare dso_local i32 @regmap_write(%struct.clk*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
