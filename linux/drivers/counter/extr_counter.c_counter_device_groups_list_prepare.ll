; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_groups_list_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_groups_list_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.counter_device_attr_group* }
%struct.counter_device_attr_group = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*)* @counter_device_groups_list_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_device_groups_list_prepare(%struct.counter_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.counter_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.counter_device_attr_group*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.counter_device* %0, %struct.counter_device** %3, align 8
  %9 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %10 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %13 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %4, align 8
  store i64 0, i64* %8, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.counter_device_attr_group* @kcalloc(i64 %18, i32 4, i32 %19)
  store %struct.counter_device_attr_group* %20, %struct.counter_device_attr_group** %5, align 8
  %21 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %22 = icmp ne %struct.counter_device_attr_group* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %95

26:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %37, %26
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %32, i64 %33
  %35 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %34, i32 0, i32 0
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  br label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %27

40:                                               ; preds = %27
  %41 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %42 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %43 = call i32 @counter_signals_register(%struct.counter_device_attr_group* %41, %struct.counter_device* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %90

47:                                               ; preds = %40
  %48 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %49 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %8, align 8
  %54 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %54, i64 %55
  %57 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %58 = call i32 @counter_counts_register(%struct.counter_device_attr_group* %56, %struct.counter_device* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %90

62:                                               ; preds = %47
  %63 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %64 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %8, align 8
  %69 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %69, i64 %70
  %72 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %73 = call i32 @counter_global_attr_register(%struct.counter_device_attr_group* %71, %struct.counter_device* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %90

77:                                               ; preds = %62
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  %80 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %81 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %82 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store %struct.counter_device_attr_group* %80, %struct.counter_device_attr_group** %84, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %87 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i64 %85, i64* %89, align 8
  store i32 0, i32* %2, align 4
  br label %95

90:                                               ; preds = %76, %61, %46
  %91 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @counter_device_groups_list_free(%struct.counter_device_attr_group* %91, i64 %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %90, %77, %23
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.counter_device_attr_group* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @counter_signals_register(%struct.counter_device_attr_group*, %struct.counter_device*) #1

declare dso_local i32 @counter_counts_register(%struct.counter_device_attr_group*, %struct.counter_device*) #1

declare dso_local i32 @counter_global_attr_register(%struct.counter_device_attr_group*, %struct.counter_device*) #1

declare dso_local i32 @counter_device_groups_list_free(%struct.counter_device_attr_group*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
