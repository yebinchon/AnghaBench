; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_counts_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_counts_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device_attr_group = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.counter_device = type { i64, %struct.counter_count* }
%struct.counter_count = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"count%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device_attr_group*, %struct.counter_device*)* @counter_counts_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_counts_register(%struct.counter_device_attr_group* %0, %struct.counter_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.counter_device_attr_group*, align 8
  %5 = alloca %struct.counter_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.counter_count*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.counter_device_attr_group* %0, %struct.counter_device_attr_group** %4, align 8
  store %struct.counter_device* %1, %struct.counter_device** %5, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %60, %2
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %13 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %10
  %17 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %18 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %17, i32 0, i32 1
  %19 = load %struct.counter_count*, %struct.counter_count** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %19, i64 %20
  store %struct.counter_count* %21, %struct.counter_count** %7, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %24 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @kasprintf(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %64

32:                                               ; preds = %16
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %34, i64 %35
  %37 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i8* %33, i8** %38, align 8
  %39 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %39, i64 %40
  %42 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %43 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @counter_synapses_register(%struct.counter_device_attr_group* %41, %struct.counter_device* %42, %struct.counter_count* %43, i8* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %64

49:                                               ; preds = %32
  %50 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %50, i64 %51
  %53 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %54 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %55 = call i32 @counter_count_attributes_create(%struct.counter_device_attr_group* %52, %struct.counter_device* %53, %struct.counter_count* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %64

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %10

63:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %84

64:                                               ; preds = %58, %48, %29
  br label %65

65:                                               ; preds = %78, %64
  %66 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %66, i64 %67
  %69 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @kfree(i8* %71)
  %73 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %73, i64 %74
  %76 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %75, i32 0, i32 0
  %77 = call i32 @counter_device_attr_list_free(i32* %76)
  br label %78

78:                                               ; preds = %65
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %6, align 8
  %81 = icmp ne i64 %79, 0
  br i1 %81, label %65, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %63
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @counter_synapses_register(%struct.counter_device_attr_group*, %struct.counter_device*, %struct.counter_count*, i8*) #1

declare dso_local i32 @counter_count_attributes_create(%struct.counter_device_attr_group*, %struct.counter_device*, %struct.counter_count*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @counter_device_attr_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
