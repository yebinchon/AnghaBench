; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdt_cdp_peer_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdt_cdp_peer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32 }
%struct.rdt_domain = type { i32 }

@rdt_resources_all = common dso_local global %struct.rdt_resource* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdt_resource*, %struct.rdt_domain*, %struct.rdt_resource**, %struct.rdt_domain**)* @rdt_cdp_peer_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdt_cdp_peer_get(%struct.rdt_resource* %0, %struct.rdt_domain* %1, %struct.rdt_resource** %2, %struct.rdt_domain** %3) #0 {
  %5 = alloca %struct.rdt_resource*, align 8
  %6 = alloca %struct.rdt_domain*, align 8
  %7 = alloca %struct.rdt_resource**, align 8
  %8 = alloca %struct.rdt_domain**, align 8
  %9 = alloca %struct.rdt_resource*, align 8
  %10 = alloca %struct.rdt_domain*, align 8
  %11 = alloca i32, align 4
  store %struct.rdt_resource* %0, %struct.rdt_resource** %5, align 8
  store %struct.rdt_domain* %1, %struct.rdt_domain** %6, align 8
  store %struct.rdt_resource** %2, %struct.rdt_resource*** %7, align 8
  store %struct.rdt_domain** %3, %struct.rdt_domain*** %8, align 8
  store %struct.rdt_resource* null, %struct.rdt_resource** %9, align 8
  store %struct.rdt_domain* null, %struct.rdt_domain** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.rdt_resource*, %struct.rdt_resource** %5, align 8
  %13 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %27 [
    i32 128, label %15
    i32 129, label %18
    i32 130, label %21
    i32 131, label %24
  ]

15:                                               ; preds = %4
  %16 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %17 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %16, i64 129
  store %struct.rdt_resource* %17, %struct.rdt_resource** %9, align 8
  br label %30

18:                                               ; preds = %4
  %19 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %20 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %19, i64 128
  store %struct.rdt_resource* %20, %struct.rdt_resource** %9, align 8
  br label %30

21:                                               ; preds = %4
  %22 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %23 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %22, i64 131
  store %struct.rdt_resource* %23, %struct.rdt_resource** %9, align 8
  br label %30

24:                                               ; preds = %4
  %25 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %26 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %25, i64 130
  store %struct.rdt_resource* %26, %struct.rdt_resource** %9, align 8
  br label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %44

30:                                               ; preds = %24, %21, %18, %15
  %31 = load %struct.rdt_resource*, %struct.rdt_resource** %9, align 8
  %32 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %33 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.rdt_domain* @rdt_find_domain(%struct.rdt_resource* %31, i32 %34, i32* null)
  store %struct.rdt_domain* %35, %struct.rdt_domain** %10, align 8
  %36 = load %struct.rdt_domain*, %struct.rdt_domain** %10, align 8
  %37 = call i32 @IS_ERR_OR_NULL(%struct.rdt_domain* %36)
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  store %struct.rdt_resource* null, %struct.rdt_resource** %9, align 8
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %30
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.rdt_resource*, %struct.rdt_resource** %9, align 8
  %46 = load %struct.rdt_resource**, %struct.rdt_resource*** %7, align 8
  store %struct.rdt_resource* %45, %struct.rdt_resource** %46, align 8
  %47 = load %struct.rdt_domain*, %struct.rdt_domain** %10, align 8
  %48 = load %struct.rdt_domain**, %struct.rdt_domain*** %8, align 8
  store %struct.rdt_domain* %47, %struct.rdt_domain** %48, align 8
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local %struct.rdt_domain* @rdt_find_domain(%struct.rdt_resource*, i32, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.rdt_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
