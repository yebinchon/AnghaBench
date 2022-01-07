; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_rdtgroup_pseudo_lock_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_rdtgroup_pseudo_lock_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdtgroup = type { i64, %struct.pseudo_lock_region*, i32 }
%struct.pseudo_lock_region = type { i32, i32 }

@RDT_MODE_PSEUDO_LOCKSETUP = common dso_local global i64 0, align 8
@pseudo_lock_class = common dso_local global i32 0, align 4
@pseudo_lock_major = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdtgroup_pseudo_lock_remove(%struct.rdtgroup* %0) #0 {
  %2 = alloca %struct.rdtgroup*, align 8
  %3 = alloca %struct.pseudo_lock_region*, align 8
  store %struct.rdtgroup* %0, %struct.rdtgroup** %2, align 8
  %4 = load %struct.rdtgroup*, %struct.rdtgroup** %2, align 8
  %5 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %4, i32 0, i32 1
  %6 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %5, align 8
  store %struct.pseudo_lock_region* %6, %struct.pseudo_lock_region** %3, align 8
  %7 = load %struct.rdtgroup*, %struct.rdtgroup** %2, align 8
  %8 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RDT_MODE_PSEUDO_LOCKSETUP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.rdtgroup*, %struct.rdtgroup** %2, align 8
  %14 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @closid_free(i32 %15)
  br label %37

17:                                               ; preds = %1
  %18 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %19 = call i32 @pseudo_lock_cstates_relax(%struct.pseudo_lock_region* %18)
  %20 = load %struct.rdtgroup*, %struct.rdtgroup** %2, align 8
  %21 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %20, i32 0, i32 1
  %22 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %21, align 8
  %23 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @debugfs_remove_recursive(i32 %24)
  %26 = load i32, i32* @pseudo_lock_class, align 4
  %27 = load i32, i32* @pseudo_lock_major, align 4
  %28 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %29 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @MKDEV(i32 %27, i32 %30)
  %32 = call i32 @device_destroy(i32 %26, i32 %31)
  %33 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %34 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pseudo_lock_minor_release(i32 %35)
  br label %37

37:                                               ; preds = %17, %12
  %38 = load %struct.rdtgroup*, %struct.rdtgroup** %2, align 8
  %39 = call i32 @pseudo_lock_free(%struct.rdtgroup* %38)
  ret void
}

declare dso_local i32 @closid_free(i32) #1

declare dso_local i32 @pseudo_lock_cstates_relax(%struct.pseudo_lock_region*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @pseudo_lock_minor_release(i32) #1

declare dso_local i32 @pseudo_lock_free(%struct.rdtgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
