; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_powernv-op-panel.c_oppanel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_powernv-op-panel.c_oppanel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8* }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"#length\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Operator panel length property not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"#lines\00", align 1
@num_lines = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Operator panel lines property not found\0A\00", align 1
@oppanel_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"Operator panel of size %u found with %u lines of length %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@oppanel_data = common dso_local global %struct.TYPE_9__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@oppanel_lines = common dso_local global %struct.TYPE_9__* null, align 8
@oppanel_dev = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to register as misc device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @oppanel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oppanel_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = call i32 @of_property_read_u32(%struct.device_node* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %98

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* @num_lines)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %98

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @num_lines, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* @oppanel_size, align 4
  %31 = load i32, i32* @oppanel_size, align 4
  %32 = load i32, i32* @num_lines, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @pr_devel(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @oppanel_size, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.TYPE_9__* @kcalloc(i32 %35, i32 16, i32 %36)
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** @oppanel_data, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oppanel_data, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %98

43:                                               ; preds = %27
  %44 = load i32, i32* @num_lines, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.TYPE_9__* @kcalloc(i32 %44, i32 4, i32 %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** @oppanel_lines, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oppanel_lines, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %94

52:                                               ; preds = %43
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oppanel_data, align 8
  %54 = load i32, i32* @oppanel_size, align 4
  %55 = call i32 @memset(%struct.TYPE_9__* %53, i8 signext 32, i32 %54)
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %81, %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @num_lines, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = call i8* @cpu_to_be64(i32 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oppanel_lines, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i8* %62, i8** %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oppanel_data, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %5, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %72
  %74 = call i32 @__pa(%struct.TYPE_9__* %73)
  %75 = call i8* @cpu_to_be64(i32 %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oppanel_lines, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store i8* %75, i8** %80, align 8
  br label %81

81:                                               ; preds = %60
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %56

84:                                               ; preds = %56
  %85 = call i32 @misc_register(i32* @oppanel_dev)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %91

90:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %98

91:                                               ; preds = %88
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oppanel_lines, align 8
  %93 = call i32 @kfree(%struct.TYPE_9__* %92)
  br label %94

94:                                               ; preds = %91, %49
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oppanel_data, align 8
  %96 = call i32 @kfree(%struct.TYPE_9__* %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %90, %40, %24, %16
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

declare dso_local i32 @pr_devel(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i8 signext, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @__pa(%struct.TYPE_9__*) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
