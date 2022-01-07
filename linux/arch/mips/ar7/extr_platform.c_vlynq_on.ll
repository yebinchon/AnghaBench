; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ar7/extr_platform.c_vlynq_on.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ar7/extr_platform.c_vlynq_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlynq_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.plat_vlynq_data* }
%struct.plat_vlynq_data = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"vlynq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlynq_device*)* @vlynq_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlynq_on(%struct.vlynq_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vlynq_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.plat_vlynq_data*, align 8
  store %struct.vlynq_device* %0, %struct.vlynq_device** %3, align 8
  %6 = load %struct.vlynq_device*, %struct.vlynq_device** %3, align 8
  %7 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.plat_vlynq_data*, %struct.plat_vlynq_data** %8, align 8
  store %struct.plat_vlynq_data* %9, %struct.plat_vlynq_data** %5, align 8
  %10 = load %struct.plat_vlynq_data*, %struct.plat_vlynq_data** %5, align 8
  %11 = getelementptr inbounds %struct.plat_vlynq_data, %struct.plat_vlynq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @gpio_request(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %66

17:                                               ; preds = %1
  %18 = load %struct.plat_vlynq_data*, %struct.plat_vlynq_data** %5, align 8
  %19 = getelementptr inbounds %struct.plat_vlynq_data, %struct.plat_vlynq_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ar7_device_reset(i32 %20)
  %22 = load %struct.plat_vlynq_data*, %struct.plat_vlynq_data** %5, align 8
  %23 = getelementptr inbounds %struct.plat_vlynq_data, %struct.plat_vlynq_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ar7_gpio_disable(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %57

29:                                               ; preds = %17
  %30 = load %struct.plat_vlynq_data*, %struct.plat_vlynq_data** %5, align 8
  %31 = getelementptr inbounds %struct.plat_vlynq_data, %struct.plat_vlynq_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ar7_gpio_enable(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %57

37:                                               ; preds = %29
  %38 = load %struct.plat_vlynq_data*, %struct.plat_vlynq_data** %5, align 8
  %39 = getelementptr inbounds %struct.plat_vlynq_data, %struct.plat_vlynq_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @gpio_direction_output(i32 %40, i32 0)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %52

45:                                               ; preds = %37
  %46 = call i32 @msleep(i32 50)
  %47 = load %struct.plat_vlynq_data*, %struct.plat_vlynq_data** %5, align 8
  %48 = getelementptr inbounds %struct.plat_vlynq_data, %struct.plat_vlynq_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @gpio_set_value(i32 %49, i32 1)
  %51 = call i32 @msleep(i32 50)
  store i32 0, i32* %2, align 4
  br label %68

52:                                               ; preds = %44
  %53 = load %struct.plat_vlynq_data*, %struct.plat_vlynq_data** %5, align 8
  %54 = getelementptr inbounds %struct.plat_vlynq_data, %struct.plat_vlynq_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ar7_gpio_disable(i32 %55)
  br label %57

57:                                               ; preds = %52, %36, %28
  %58 = load %struct.plat_vlynq_data*, %struct.plat_vlynq_data** %5, align 8
  %59 = getelementptr inbounds %struct.plat_vlynq_data, %struct.plat_vlynq_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ar7_device_disable(i32 %60)
  %62 = load %struct.plat_vlynq_data*, %struct.plat_vlynq_data** %5, align 8
  %63 = getelementptr inbounds %struct.plat_vlynq_data, %struct.plat_vlynq_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @gpio_free(i32 %64)
  br label %66

66:                                               ; preds = %57, %16
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %45
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @ar7_device_reset(i32) #1

declare dso_local i32 @ar7_gpio_disable(i32) #1

declare dso_local i32 @ar7_gpio_enable(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @ar7_device_disable(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
