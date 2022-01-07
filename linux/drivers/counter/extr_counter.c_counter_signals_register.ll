; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_signals_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_signals_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device_attr_group = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.counter_device = type { i64, %struct.counter_signal* }
%struct.counter_signal = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"signal%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device_attr_group*, %struct.counter_device*)* @counter_signals_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_signals_register(%struct.counter_device_attr_group* %0, %struct.counter_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.counter_device_attr_group*, align 8
  %5 = alloca %struct.counter_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.counter_signal*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.counter_device_attr_group* %0, %struct.counter_device_attr_group** %4, align 8
  store %struct.counter_device* %1, %struct.counter_device** %5, align 8
  %11 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %12 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %51, %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %20 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %19, i32 0, i32 1
  %21 = load %struct.counter_signal*, %struct.counter_signal** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.counter_signal, %struct.counter_signal* %21, i64 %22
  store %struct.counter_signal* %23, %struct.counter_signal** %8, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load %struct.counter_signal*, %struct.counter_signal** %8, align 8
  %26 = getelementptr inbounds %struct.counter_signal, %struct.counter_signal* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @kasprintf(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %55

34:                                               ; preds = %18
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %36, i64 %37
  %39 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %35, i8** %40, align 8
  %41 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %41, i64 %42
  %44 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %45 = load %struct.counter_signal*, %struct.counter_signal** %8, align 8
  %46 = call i32 @counter_signal_attributes_create(%struct.counter_device_attr_group* %43, %struct.counter_device* %44, %struct.counter_signal* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %55

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %7, align 8
  br label %14

54:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %75

55:                                               ; preds = %49, %31
  br label %56

56:                                               ; preds = %69, %55
  %57 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %57, i64 %58
  %60 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @kfree(i8* %62)
  %64 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %64, i64 %65
  %67 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %66, i32 0, i32 0
  %68 = call i32 @counter_device_attr_list_free(i32* %67)
  br label %69

69:                                               ; preds = %56
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* %7, align 8
  %72 = icmp ne i64 %70, 0
  br i1 %72, label %56, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %54
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @counter_signal_attributes_create(%struct.counter_device_attr_group*, %struct.counter_device*, %struct.counter_signal*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @counter_device_attr_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
