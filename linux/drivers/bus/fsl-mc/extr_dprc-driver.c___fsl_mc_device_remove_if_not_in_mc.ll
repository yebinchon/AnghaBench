; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c___fsl_mc_device_remove_if_not_in_mc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c___fsl_mc_device_remove_if_not_in_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsl_mc_child_objs = type { i32, %struct.fsl_mc_obj_desc* }
%struct.fsl_mc_obj_desc = type { i32 }
%struct.fsl_mc_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @__fsl_mc_device_remove_if_not_in_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fsl_mc_device_remove_if_not_in_mc(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_mc_child_objs*, align 8
  %7 = alloca %struct.fsl_mc_device*, align 8
  %8 = alloca %struct.fsl_mc_obj_desc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device* %9)
  store %struct.fsl_mc_device* %10, %struct.fsl_mc_device** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.fsl_mc_child_objs*
  store %struct.fsl_mc_child_objs* %12, %struct.fsl_mc_child_objs** %6, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.fsl_mc_child_objs*, %struct.fsl_mc_child_objs** %6, align 8
  %16 = getelementptr inbounds %struct.fsl_mc_child_objs, %struct.fsl_mc_child_objs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.fsl_mc_child_objs*, %struct.fsl_mc_child_objs** %6, align 8
  %21 = getelementptr inbounds %struct.fsl_mc_child_objs, %struct.fsl_mc_child_objs* %20, i32 0, i32 1
  %22 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %22, i64 %24
  store %struct.fsl_mc_obj_desc* %25, %struct.fsl_mc_obj_desc** %8, align 8
  %26 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %8, align 8
  %27 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strlen(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %7, align 8
  %33 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %8, align 8
  %34 = call i64 @fsl_mc_device_match(%struct.fsl_mc_device* %32, %struct.fsl_mc_obj_desc* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31, %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %13

41:                                               ; preds = %36, %13
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.fsl_mc_child_objs*, %struct.fsl_mc_child_objs** %6, align 8
  %44 = getelementptr inbounds %struct.fsl_mc_child_objs, %struct.fsl_mc_child_objs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %7, align 8
  %49 = call i32 @fsl_mc_device_remove(%struct.fsl_mc_device* %48)
  br label %50

50:                                               ; preds = %47, %41
  ret i32 0
}

declare dso_local %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @fsl_mc_device_match(%struct.fsl_mc_device*, %struct.fsl_mc_obj_desc*) #1

declare dso_local i32 @fsl_mc_device_remove(%struct.fsl_mc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
