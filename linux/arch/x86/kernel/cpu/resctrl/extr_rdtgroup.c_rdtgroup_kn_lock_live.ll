; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_kn_lock_live.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_kn_lock_live.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdtgroup = type { i32, i32 }
%struct.kernfs_node = type { i32 }

@rdtgroup_mutex = common dso_local global i32 0, align 4
@RDT_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rdtgroup* @rdtgroup_kn_lock_live(%struct.kernfs_node* %0) #0 {
  %2 = alloca %struct.rdtgroup*, align 8
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.rdtgroup*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %3, align 8
  %5 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %6 = call %struct.rdtgroup* @kernfs_to_rdtgroup(%struct.kernfs_node* %5)
  store %struct.rdtgroup* %6, %struct.rdtgroup** %4, align 8
  %7 = load %struct.rdtgroup*, %struct.rdtgroup** %4, align 8
  %8 = icmp ne %struct.rdtgroup* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.rdtgroup* null, %struct.rdtgroup** %2, align 8
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.rdtgroup*, %struct.rdtgroup** %4, align 8
  %12 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %11, i32 0, i32 1
  %13 = call i32 @atomic_inc(i32* %12)
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %15 = call i32 @kernfs_break_active_protection(%struct.kernfs_node* %14)
  %16 = call i32 @mutex_lock(i32* @rdtgroup_mutex)
  %17 = load %struct.rdtgroup*, %struct.rdtgroup** %4, align 8
  %18 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RDT_DELETED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  store %struct.rdtgroup* null, %struct.rdtgroup** %2, align 8
  br label %26

24:                                               ; preds = %10
  %25 = load %struct.rdtgroup*, %struct.rdtgroup** %4, align 8
  store %struct.rdtgroup* %25, %struct.rdtgroup** %2, align 8
  br label %26

26:                                               ; preds = %24, %23, %9
  %27 = load %struct.rdtgroup*, %struct.rdtgroup** %2, align 8
  ret %struct.rdtgroup* %27
}

declare dso_local %struct.rdtgroup* @kernfs_to_rdtgroup(%struct.kernfs_node*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kernfs_break_active_protection(%struct.kernfs_node*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
