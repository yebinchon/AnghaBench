; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_rdt_get_cdp_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_rdt_get_cdp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@rdt_resources_all = common dso_local global %struct.rdt_resource* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @rdt_get_cdp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdt_get_cdp_config(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdt_resource*, align 8
  %6 = alloca %struct.rdt_resource*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %7, i64 %9
  store %struct.rdt_resource* %10, %struct.rdt_resource** %5, align 8
  %11 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %11, i64 %13
  store %struct.rdt_resource* %14, %struct.rdt_resource** %6, align 8
  %15 = load %struct.rdt_resource*, %struct.rdt_resource** %5, align 8
  %16 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 2
  %19 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %20 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.rdt_resource*, %struct.rdt_resource** %5, align 8
  %22 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %26 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.rdt_resource*, %struct.rdt_resource** %5, align 8
  %29 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %32 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rdt_resource*, %struct.rdt_resource** %5, align 8
  %34 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %38 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %41 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 3
  %45 = sdiv i32 %44, 4
  %46 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %47 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %49 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %48, i32 0, i32 2
  store i32 1, i32* %49, align 4
  %50 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %51 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %50, i32 0, i32 3
  store i32 0, i32* %51, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
