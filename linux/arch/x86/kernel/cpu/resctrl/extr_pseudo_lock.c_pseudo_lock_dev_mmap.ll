; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_dev_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_dev_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.file = type { %struct.rdtgroup* }
%struct.rdtgroup = type { %struct.pseudo_lock_region* }
%struct.pseudo_lock_region = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i32*, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@rdtgroup_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@pseudo_mmap_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @pseudo_lock_dev_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseudo_lock_dev_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pseudo_lock_region*, align 8
  %9 = alloca %struct.rdtgroup*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = shl i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = call i32 @mutex_lock(i32* @rdtgroup_mutex)
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load %struct.rdtgroup*, %struct.rdtgroup** %26, align 8
  store %struct.rdtgroup* %27, %struct.rdtgroup** %9, align 8
  %28 = load %struct.rdtgroup*, %struct.rdtgroup** %9, align 8
  %29 = icmp ne %struct.rdtgroup* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.rdtgroup*, %struct.rdtgroup** %9, align 8
  %34 = icmp ne %struct.rdtgroup* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %2
  %36 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %136

39:                                               ; preds = %2
  %40 = load %struct.rdtgroup*, %struct.rdtgroup** %9, align 8
  %41 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %40, i32 0, i32 0
  %42 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %41, align 8
  store %struct.pseudo_lock_region* %42, %struct.pseudo_lock_region** %8, align 8
  %43 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %8, align 8
  %44 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = icmp ne %struct.TYPE_3__* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %136

51:                                               ; preds = %39
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %8, align 8
  %56 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @cpumask_subset(i32 %54, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %51
  %62 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %136

65:                                               ; preds = %51
  %66 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %8, align 8
  %67 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @__pa(i64 %68)
  %70 = load i64, i64* @PAGE_SHIFT, align 8
  %71 = lshr i64 %69, %70
  store i64 %71, i64* %10, align 8
  %72 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %8, align 8
  %73 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = sub i64 %74, %75
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %8, align 8
  %79 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ugt i64 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %65
  %83 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  %84 = load i32, i32* @ENOSPC, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %136

86:                                               ; preds = %65
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @VM_SHARED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %136

97:                                               ; preds = %86
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  %103 = load i32, i32* @ENOSPC, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %136

105:                                              ; preds = %97
  %106 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %8, align 8
  %107 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %108, %109
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @memset(i64 %110, i32 0, i64 %111)
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %115 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %119 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %117, %120
  %122 = load i64, i64* %6, align 8
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %124 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @remap_pfn_range(%struct.vm_area_struct* %113, i64 %116, i64 %121, i64 %122, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %105
  %129 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  %130 = load i32, i32* @EAGAIN, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %136

132:                                              ; preds = %105
  %133 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %134 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %133, i32 0, i32 4
  store i32* @pseudo_mmap_ops, i32** %134, align 8
  %135 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %132, %128, %101, %93, %82, %61, %47, %35
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cpumask_subset(i32, i32*) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
