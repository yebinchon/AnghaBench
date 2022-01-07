; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_cdp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_cdp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32, i32 }

@rdt_resources_all = common dso_local global %struct.rdt_resource* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @cdp_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdp_disable(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rdt_resource*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %8, i64 %10
  store %struct.rdt_resource* %11, %struct.rdt_resource** %7, align 8
  %12 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %13 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %16 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %17, i64 %19
  %21 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %25, i64 %27
  %29 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %30, i64 %32
  %34 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @set_cache_qos_cfg(i32 %35, i32 0)
  br label %37

37:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @set_cache_qos_cfg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
