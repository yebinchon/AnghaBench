; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_corgi_pm.c_corgipm_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_corgi_pm.c_corgipm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sharpsl-pm\00", align 1
@corgipm_device = common dso_local global %struct.TYPE_8__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@corgi_pm_machinfo = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @corgipm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corgipm_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @machine_is_corgi()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @machine_is_shepherd()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = call i32 (...) @machine_is_husky()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %38

14:                                               ; preds = %8, %5, %0
  %15 = call %struct.TYPE_8__* @platform_device_alloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 -1)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** @corgipm_device, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @corgipm_device, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %1, align 4
  br label %38

21:                                               ; preds = %14
  %22 = call i32 (...) @machine_is_corgi()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @corgi_pm_machinfo, i32 0, i32 0), align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @corgipm_device, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.TYPE_9__* @corgi_pm_machinfo, %struct.TYPE_9__** %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @corgipm_device, align 8
  %30 = call i32 @platform_device_add(%struct.TYPE_8__* %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @corgipm_device, align 8
  %35 = call i32 @platform_device_put(%struct.TYPE_8__* %34)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load i32, i32* %2, align 4
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %36, %18, %11
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @machine_is_corgi(...) #1

declare dso_local i32 @machine_is_shepherd(...) #1

declare dso_local i32 @machine_is_husky(...) #1

declare dso_local %struct.TYPE_8__* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
