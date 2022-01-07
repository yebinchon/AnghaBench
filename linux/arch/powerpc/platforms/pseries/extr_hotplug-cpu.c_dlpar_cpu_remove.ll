; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-cpu.c_dlpar_cpu_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-cpu.c_dlpar_cpu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Attempting to remove CPU %pOFn, drc index: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to offline CPU %pOFn, rc: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Failed to release drc (%x) for CPU %pOFn, rc: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to detach CPU %pOFn, rc: %d\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Successfully removed CPU, drc index: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i32)* @dlpar_cpu_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlpar_cpu_remove(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = ptrtoint %struct.device_node* %8 to i32
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = call i32 @dlpar_offline_cpu(%struct.device_node* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i8*, %struct.device_node*, i32, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %17, i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %60

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dlpar_release_drc(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to %struct.device_node*
  %31 = load %struct.device_node*, %struct.device_node** %4, align 8
  %32 = ptrtoint %struct.device_node* %31 to i32
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i8*, %struct.device_node*, i32, ...) @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %30, i32 %32, i32 %33)
  %35 = load %struct.device_node*, %struct.device_node** %4, align 8
  %36 = call i32 @dlpar_online_cpu(%struct.device_node* %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %60

38:                                               ; preds = %22
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = call i32 @dlpar_detach_node(%struct.device_node* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.device_node*, %struct.device_node** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i8*, %struct.device_node*, i32, ...) @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dlpar_acquire_drc(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load %struct.device_node*, %struct.device_node** %4, align 8
  %54 = call i32 @dlpar_online_cpu(%struct.device_node* %53)
  br label %55

55:                                               ; preds = %52, %43
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %60

57:                                               ; preds = %38
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %55, %27, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @dlpar_offline_cpu(%struct.device_node*) #1

declare dso_local i32 @pr_warn(i8*, %struct.device_node*, i32, ...) #1

declare dso_local i32 @dlpar_release_drc(i32) #1

declare dso_local i32 @dlpar_online_cpu(%struct.device_node*) #1

declare dso_local i32 @dlpar_detach_node(%struct.device_node*) #1

declare dso_local i32 @dlpar_acquire_drc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
