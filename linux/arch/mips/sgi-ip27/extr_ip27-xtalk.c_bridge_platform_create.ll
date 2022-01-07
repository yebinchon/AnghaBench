; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-xtalk.c_bridge_platform_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-xtalk.c_bridge_platform_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xtalk_bridge_platform_data = type { i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i64, i32 }
%struct.TYPE_4__ = type { i8*, i64, i32, i8* }
%struct.TYPE_3__ = type { i8*, i64, i32, i8* }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"xtalk-bridge\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@PI_INT_PEND_MOD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Bridge PCI MEM\00", align 1
@SWIN_SIZE_BITS = common dso_local global i32 0, align 4
@SWIN_SIZE = common dso_local global i8* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Bridge PCI IO\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"xtalk:n%d/%x bridge widget\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"xtalk:n%d/%x bridge create out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @bridge_platform_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_platform_create(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xtalk_bridge_platform_data*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.xtalk_bridge_platform_data* @kzalloc(i32 112, i32 %10)
  store %struct.xtalk_bridge_platform_data* %11, %struct.xtalk_bridge_platform_data** %7, align 8
  %12 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %13 = icmp ne %struct.xtalk_bridge_platform_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %109

15:                                               ; preds = %3
  %16 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %17 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.platform_device* %17, %struct.platform_device** %8, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %19 = icmp ne %struct.platform_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %22 = call i32 @kfree(%struct.xtalk_bridge_platform_data* %21)
  br label %109

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @NODE_OFFSET(i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @RAW_NODE_SWIN_BASE(i32 %26, i32 %27)
  %29 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %30 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = call i64 @BIT_ULL(i32 47)
  %32 = add nsw i64 %31, 25165824
  %33 = load i64, i64* @PI_INT_PEND_MOD, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %36 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %35, i32 0, i32 6
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %39 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %42 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %44 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SWIN_SIZE_BITS, align 4
  %49 = shl i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = add i64 %46, %50
  %52 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %53 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i64 %51, i64* %54, align 8
  %55 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %56 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i8*, i8** @SWIN_SIZE, align 8
  %60 = getelementptr i8, i8* %59, i64 %58
  %61 = getelementptr i8, i8* %60, i64 -1
  %62 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %63 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  store i8* %61, i8** %64, align 8
  %65 = load i32, i32* @IORESOURCE_MEM, align 4
  %66 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %67 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %71 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %73 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @SWIN_SIZE_BITS, align 4
  %78 = shl i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = add i64 %75, %79
  %81 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %82 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i64 %80, i64* %83, align 8
  %84 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %85 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i8*, i8** @SWIN_SIZE, align 8
  %89 = getelementptr i8, i8* %88, i64 %87
  %90 = getelementptr i8, i8* %89, i64 -1
  %91 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %92 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  store i8* %90, i8** %93, align 8
  %94 = load i32, i32* @IORESOURCE_IO, align 4
  %95 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %96 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %100 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %102 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %7, align 8
  %103 = call i32 @platform_device_add_data(%struct.platform_device* %101, %struct.xtalk_bridge_platform_data* %102, i32 112)
  %104 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %105 = call i32 @platform_device_add(%struct.platform_device* %104)
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %107)
  br label %113

109:                                              ; preds = %20, %14
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %23
  ret void
}

declare dso_local %struct.xtalk_bridge_platform_data* @kzalloc(i32, i32) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @kfree(%struct.xtalk_bridge_platform_data*) #1

declare dso_local i64 @NODE_OFFSET(i32) #1

declare dso_local i32 @RAW_NODE_SWIN_BASE(i32, i32) #1

declare dso_local i64 @BIT_ULL(i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.xtalk_bridge_platform_data*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
