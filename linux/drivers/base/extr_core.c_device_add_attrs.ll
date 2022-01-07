; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_add_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_add_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32, %struct.device_type*, %struct.class* }
%struct.device_type = type { i32 }
%struct.class = type { i32 }

@dev_attr_online = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @device_add_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_add_attrs(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.class*, align 8
  %5 = alloca %struct.device_type*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 3
  %9 = load %struct.class*, %struct.class** %8, align 8
  store %struct.class* %9, %struct.class** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 2
  %12 = load %struct.device_type*, %struct.device_type** %11, align 8
  store %struct.device_type* %12, %struct.device_type** %5, align 8
  %13 = load %struct.class*, %struct.class** %4, align 8
  %14 = icmp ne %struct.class* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.class*, %struct.class** %4, align 8
  %18 = getelementptr inbounds %struct.class, %struct.class* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_add_groups(%struct.device* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %92

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.device_type*, %struct.device_type** %5, align 8
  %28 = icmp ne %struct.device_type* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load %struct.device_type*, %struct.device_type** %5, align 8
  %32 = getelementptr inbounds %struct.device_type, %struct.device_type* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_add_groups(%struct.device* %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %81

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_add_groups(%struct.device* %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %71

48:                                               ; preds = %39
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i64 @device_supports_offline(%struct.device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = call i32 @device_create_file(%struct.device* %58, i32* @dev_attr_online)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %65

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %52, %48
  store i32 0, i32* %2, align 4
  br label %92

65:                                               ; preds = %62
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @device_remove_groups(%struct.device* %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %47
  %72 = load %struct.device_type*, %struct.device_type** %5, align 8
  %73 = icmp ne %struct.device_type* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = load %struct.device_type*, %struct.device_type** %5, align 8
  %77 = getelementptr inbounds %struct.device_type, %struct.device_type* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @device_remove_groups(%struct.device* %75, i32 %78)
  br label %80

80:                                               ; preds = %74, %71
  br label %81

81:                                               ; preds = %80, %37
  %82 = load %struct.class*, %struct.class** %4, align 8
  %83 = icmp ne %struct.class* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.device*, %struct.device** %3, align 8
  %86 = load %struct.class*, %struct.class** %4, align 8
  %87 = getelementptr inbounds %struct.class, %struct.class* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @device_remove_groups(%struct.device* %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %64, %23
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @device_add_groups(%struct.device*, i32) #1

declare dso_local i64 @device_supports_offline(%struct.device*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @device_remove_groups(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
