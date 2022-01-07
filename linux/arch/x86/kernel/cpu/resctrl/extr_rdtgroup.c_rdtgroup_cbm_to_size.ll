; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_cbm_to_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_cbm_to_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rdt_domain = type { i32 }
%struct.cpu_cacheinfo = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdtgroup_cbm_to_size(%struct.rdt_resource* %0, %struct.rdt_domain* %1, i64 %2) #0 {
  %4 = alloca %struct.rdt_resource*, align 8
  %5 = alloca %struct.rdt_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cpu_cacheinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rdt_resource* %0, %struct.rdt_resource** %4, align 8
  store %struct.rdt_domain* %1, %struct.rdt_domain** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %12 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @bitmap_weight(i64* %6, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %17 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %16, i32 0, i32 0
  %18 = call i32 @cpumask_any(i32* %17)
  %19 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %18)
  store %struct.cpu_cacheinfo* %19, %struct.cpu_cacheinfo** %7, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %56, %3
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %7, align 8
  %23 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %20
  %27 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %7, align 8
  %28 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %36 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %26
  %40 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %7, align 8
  %41 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %49 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %47, %51
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %8, align 4
  br label %59

55:                                               ; preds = %26
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %20

59:                                               ; preds = %39, %20
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @bitmap_weight(i64*, i32) #1

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

declare dso_local i32 @cpumask_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
