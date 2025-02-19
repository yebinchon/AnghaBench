; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c___rdtgroup_cbm_overlaps.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c___rdtgroup_cbm_overlaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.rdt_domain = type { i64* }

@RDT_MODE_PSEUDO_LOCKSETUP = common dso_local global i32 0, align 4
@RDT_MODE_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdt_resource*, %struct.rdt_domain*, i64, i32, i32)* @__rdtgroup_cbm_overlaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rdtgroup_cbm_overlaps(%struct.rdt_resource* %0, %struct.rdt_domain* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rdt_resource*, align 8
  %8 = alloca %struct.rdt_domain*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  store %struct.rdt_resource* %0, %struct.rdt_resource** %7, align 8
  store %struct.rdt_domain* %1, %struct.rdt_domain** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %5
  %19 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %20 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %24 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @bitmap_intersects(i64* %9, i64* %13, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %80

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %5
  %32 = load %struct.rdt_domain*, %struct.rdt_domain** %8, align 8
  %33 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  store i64* %34, i64** %14, align 8
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %74, %31
  %36 = load i32, i32* %15, align 4
  %37 = call i32 (...) @closids_supported()
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load i64*, i64** %14, align 8
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %13, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @rdtgroup_mode_by_closid(i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i64 @closid_allocated(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %39
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @RDT_MODE_PSEUDO_LOCKSETUP, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %57 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @bitmap_intersects(i64* %9, i64* %13, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @RDT_MODE_EXCLUSIVE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %80

70:                                               ; preds = %65
  br label %74

71:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  br label %80

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %51, %47, %39
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  %77 = load i64*, i64** %14, align 8
  %78 = getelementptr inbounds i64, i64* %77, i32 1
  store i64* %78, i64** %14, align 8
  br label %35

79:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %71, %69, %29
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i64 @bitmap_intersects(i64*, i64*, i32) #1

declare dso_local i32 @closids_supported(...) #1

declare dso_local i32 @rdtgroup_mode_by_closid(i32) #1

declare dso_local i64 @closid_allocated(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
