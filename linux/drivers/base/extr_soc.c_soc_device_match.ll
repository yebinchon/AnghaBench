; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_soc.c_soc_device_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_soc.c_soc_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_device_attribute = type { i64, i64, i64, i64 }

@soc_bus_type = common dso_local global i32 0, align 4
@soc_device_match_one = common dso_local global i32 0, align 4
@early_soc_dev_attr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.soc_device_attribute* @soc_device_match(%struct.soc_device_attribute* %0) #0 {
  %2 = alloca %struct.soc_device_attribute*, align 8
  %3 = alloca %struct.soc_device_attribute*, align 8
  %4 = alloca i32, align 4
  store %struct.soc_device_attribute* %0, %struct.soc_device_attribute** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %3, align 8
  %6 = icmp ne %struct.soc_device_attribute* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.soc_device_attribute* null, %struct.soc_device_attribute** %2, align 8
  br label %62

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %60, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %61

13:                                               ; preds = %9
  %14 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %3, align 8
  %15 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %13
  %19 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %3, align 8
  %20 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %3, align 8
  %25 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %3, align 8
  %30 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %61

34:                                               ; preds = %28, %23, %18, %13
  %35 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %3, align 8
  %36 = bitcast %struct.soc_device_attribute* %35 to i8*
  %37 = load i32, i32* @soc_device_match_one, align 4
  %38 = call i32 @bus_for_each_dev(i32* @soc_bus_type, i32* null, i8* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i64, i64* @early_soc_dev_attr, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* @early_soc_dev_attr, align 8
  %46 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %3, align 8
  %47 = call i32 @soc_device_match_attr(i64 %45, %struct.soc_device_attribute* %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %41, %34
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store %struct.soc_device_attribute* null, %struct.soc_device_attribute** %2, align 8
  br label %62

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %3, align 8
  %57 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %56, i32 1
  store %struct.soc_device_attribute* %57, %struct.soc_device_attribute** %3, align 8
  br label %60

58:                                               ; preds = %52
  %59 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %3, align 8
  store %struct.soc_device_attribute* %59, %struct.soc_device_attribute** %2, align 8
  br label %62

60:                                               ; preds = %55
  br label %9

61:                                               ; preds = %33, %9
  store %struct.soc_device_attribute* null, %struct.soc_device_attribute** %2, align 8
  br label %62

62:                                               ; preds = %61, %58, %51, %7
  %63 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %2, align 8
  ret %struct.soc_device_attribute* %63
}

declare dso_local i32 @bus_for_each_dev(i32*, i32*, i8*, i32) #1

declare dso_local i32 @soc_device_match_attr(i64, %struct.soc_device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
