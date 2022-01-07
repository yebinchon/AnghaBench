; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_sysfs.c_cpuidle_add_state_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_sysfs.c_cpuidle_add_state_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { %struct.cpuidle_state_kobj**, i32*, %struct.cpuidle_device_kobj* }
%struct.cpuidle_state_kobj = type { i32, i32, %struct.cpuidle_device*, i32*, i32* }
%struct.cpuidle_device_kobj = type { i32 }
%struct.cpuidle_driver = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ktype_state_cpuidle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"state%d\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*)* @cpuidle_add_state_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuidle_add_state_sysfs(%struct.cpuidle_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuidle_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpuidle_state_kobj*, align 8
  %7 = alloca %struct.cpuidle_device_kobj*, align 8
  %8 = alloca %struct.cpuidle_driver*, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %3, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %12 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %11, i32 0, i32 2
  %13 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %12, align 8
  store %struct.cpuidle_device_kobj* %13, %struct.cpuidle_device_kobj** %7, align 8
  %14 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %15 = call %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device* %14)
  store %struct.cpuidle_driver* %15, %struct.cpuidle_driver** %8, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %78, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %8, align 8
  %19 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %16
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.cpuidle_state_kobj* @kzalloc(i32 32, i32 %23)
  store %struct.cpuidle_state_kobj* %24, %struct.cpuidle_state_kobj** %6, align 8
  %25 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %26 = icmp ne %struct.cpuidle_state_kobj* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %82

30:                                               ; preds = %22
  %31 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %8, align 8
  %32 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %38 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %37, i32 0, i32 4
  store i32* %36, i32** %38, align 8
  %39 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %40 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %46 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  %47 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %48 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %49 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %48, i32 0, i32 2
  store %struct.cpuidle_device* %47, %struct.cpuidle_device** %49, align 8
  %50 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %51 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %50, i32 0, i32 1
  %52 = call i32 @init_completion(i32* %51)
  %53 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %54 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %53, i32 0, i32 0
  %55 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %7, align 8
  %56 = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %55, i32 0, i32 0
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @kobject_init_and_add(i32* %54, i32* @ktype_state_cpuidle, i32* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %30
  %62 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %63 = call i32 @kfree(%struct.cpuidle_state_kobj* %62)
  br label %82

64:                                               ; preds = %30
  %65 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %66 = call i32 @cpuidle_add_s2idle_attr_group(%struct.cpuidle_state_kobj* %65)
  %67 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %68 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %67, i32 0, i32 0
  %69 = load i32, i32* @KOBJ_ADD, align 4
  %70 = call i32 @kobject_uevent(i32* %68, i32 %69)
  %71 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %72 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %73 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %72, i32 0, i32 0
  %74 = load %struct.cpuidle_state_kobj**, %struct.cpuidle_state_kobj*** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %74, i64 %76
  store %struct.cpuidle_state_kobj* %71, %struct.cpuidle_state_kobj** %77, align 8
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %16

81:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %97

82:                                               ; preds = %61, %27
  %83 = load i32, i32* %4, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %92, %82
  %86 = load i32, i32* %4, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @cpuidle_free_state_kobj(%struct.cpuidle_device* %89, i32 %90)
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %4, align 4
  br label %85

95:                                               ; preds = %85
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %81
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device*) #1

declare dso_local %struct.cpuidle_state_kobj* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.cpuidle_state_kobj*) #1

declare dso_local i32 @cpuidle_add_s2idle_attr_group(%struct.cpuidle_state_kobj*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @cpuidle_free_state_kobj(%struct.cpuidle_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
