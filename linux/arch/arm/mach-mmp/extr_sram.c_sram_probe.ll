; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_sram.c_sram_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_sram.c_sram_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sram_platdata* }
%struct.sram_platdata = type { i32, i32 }
%struct.sram_bank_info = type { %struct.sram_bank_info*, i64, i32, i32, i64, i64, i32 }
%struct.resource = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"no memory resource defined\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"create pool failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"add new chunk failed\0A\00", align 1
@sram_lock = common dso_local global i32 0, align 4
@sram_bank_list = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sram_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sram_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sram_platdata*, align 8
  %5 = alloca %struct.sram_bank_info*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.sram_platdata*, %struct.sram_platdata** %10, align 8
  store %struct.sram_platdata* %11, %struct.sram_platdata** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.sram_platdata*, %struct.sram_platdata** %4, align 8
  %13 = icmp ne %struct.sram_platdata* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.sram_platdata*, %struct.sram_platdata** %4, align 8
  %16 = getelementptr inbounds %struct.sram_platdata, %struct.sram_platdata* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %147

22:                                               ; preds = %14
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sram_bank_info* @kzalloc(i32 48, i32 %23)
  store %struct.sram_bank_info* %24, %struct.sram_bank_info** %5, align 8
  %25 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %26 = icmp ne %struct.sram_bank_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %147

30:                                               ; preds = %22
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %6, align 8
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = icmp eq %struct.resource* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_err(%struct.TYPE_3__* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %143

42:                                               ; preds = %30
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = call i64 @resource_size(%struct.resource* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %147

47:                                               ; preds = %42
  %48 = load %struct.resource*, %struct.resource** %6, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %52 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %51, i32 0, i32 5
  store i64 %50, i64* %52, align 8
  %53 = load %struct.resource*, %struct.resource** %6, align 8
  %54 = call i64 @resource_size(%struct.resource* %53)
  %55 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %56 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  %57 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %58 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %61 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @ioremap(i64 %59, i64 %62)
  %64 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %65 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.sram_platdata*, %struct.sram_platdata** %4, align 8
  %67 = getelementptr inbounds %struct.sram_platdata, %struct.sram_platdata* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.sram_bank_info* @kstrdup(i32 %68, i32 %69)
  %71 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %72 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %71, i32 0, i32 0
  store %struct.sram_bank_info* %70, %struct.sram_bank_info** %72, align 8
  %73 = load %struct.sram_platdata*, %struct.sram_platdata** %4, align 8
  %74 = getelementptr inbounds %struct.sram_platdata, %struct.sram_platdata* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %77 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %79 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ilog2(i32 %80)
  %82 = call i32 @gen_pool_create(i32 %81, i32 -1)
  %83 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %84 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %86 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %47
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @dev_err(%struct.TYPE_3__* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %134

95:                                               ; preds = %47
  %96 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %97 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %100 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %103 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %106 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @gen_pool_add_virt(i32 %98, i64 %101, i64 %104, i64 %107, i32 -1)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %95
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @dev_err(%struct.TYPE_3__* %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %7, align 4
  br label %129

117:                                              ; preds = %95
  %118 = call i32 @mutex_lock(i32* @sram_lock)
  %119 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %120 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %119, i32 0, i32 3
  %121 = call i32 @list_add(i32* %120, i32* @sram_bank_list)
  %122 = call i32 @mutex_unlock(i32* @sram_lock)
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %125 = call i32 @platform_set_drvdata(%struct.platform_device* %123, %struct.sram_bank_info* %124)
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = call i32 @dev_info(%struct.TYPE_3__* %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %147

129:                                              ; preds = %111
  %130 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %131 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @gen_pool_destroy(i32 %132)
  br label %134

134:                                              ; preds = %129, %89
  %135 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %136 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @iounmap(i64 %137)
  %139 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %140 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %139, i32 0, i32 0
  %141 = load %struct.sram_bank_info*, %struct.sram_bank_info** %140, align 8
  %142 = call i32 @kfree(%struct.sram_bank_info* %141)
  br label %143

143:                                              ; preds = %134, %36
  %144 = load %struct.sram_bank_info*, %struct.sram_bank_info** %5, align 8
  %145 = call i32 @kfree(%struct.sram_bank_info* %144)
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %143, %117, %46, %27, %19
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.sram_bank_info* @kzalloc(i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i64 @ioremap(i64, i64) #1

declare dso_local %struct.sram_bank_info* @kstrdup(i32, i32) #1

declare dso_local i32 @gen_pool_create(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @gen_pool_add_virt(i32, i64, i64, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sram_bank_info*) #1

declare dso_local i32 @dev_info(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @gen_pool_destroy(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.sram_bank_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
