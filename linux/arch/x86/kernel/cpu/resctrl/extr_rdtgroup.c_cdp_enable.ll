; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_cdp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_cdp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32, i32 }

@rdt_resources_all = common dso_local global %struct.rdt_resource* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @cdp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdp_enable(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rdt_resource*, align 8
  %9 = alloca %struct.rdt_resource*, align 8
  %10 = alloca %struct.rdt_resource*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %12, i64 %14
  store %struct.rdt_resource* %15, %struct.rdt_resource** %8, align 8
  %16 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %16, i64 %18
  store %struct.rdt_resource* %19, %struct.rdt_resource** %9, align 8
  %20 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %20, i64 %22
  store %struct.rdt_resource* %23, %struct.rdt_resource** %10, align 8
  %24 = load %struct.rdt_resource*, %struct.rdt_resource** %10, align 8
  %25 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %3
  %29 = load %struct.rdt_resource*, %struct.rdt_resource** %8, align 8
  %30 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.rdt_resource*, %struct.rdt_resource** %9, align 8
  %35 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %28, %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %55

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @set_cache_qos_cfg(i32 %42, i32 1)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load %struct.rdt_resource*, %struct.rdt_resource** %10, align 8
  %48 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.rdt_resource*, %struct.rdt_resource** %8, align 8
  %50 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load %struct.rdt_resource*, %struct.rdt_resource** %9, align 8
  %52 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %38
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @set_cache_qos_cfg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
