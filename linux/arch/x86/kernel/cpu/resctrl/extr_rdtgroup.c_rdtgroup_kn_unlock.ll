; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_kn_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_kn_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }
%struct.rdtgroup = type { i32, i64, i32, i32 }

@rdtgroup_mutex = common dso_local global i32 0, align 4
@RDT_DELETED = common dso_local global i32 0, align 4
@RDT_MODE_PSEUDO_LOCKSETUP = common dso_local global i64 0, align 8
@RDT_MODE_PSEUDO_LOCKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdtgroup_kn_unlock(%struct.kernfs_node* %0) #0 {
  %2 = alloca %struct.kernfs_node*, align 8
  %3 = alloca %struct.rdtgroup*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %2, align 8
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %5 = call %struct.rdtgroup* @kernfs_to_rdtgroup(%struct.kernfs_node* %4)
  store %struct.rdtgroup* %5, %struct.rdtgroup** %3, align 8
  %6 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %7 = icmp ne %struct.rdtgroup* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %49

9:                                                ; preds = %1
  %10 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  %11 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %12 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %11, i32 0, i32 3
  %13 = call i64 @atomic_dec_and_test(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %9
  %16 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %17 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RDT_DELETED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %15
  %23 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %24 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RDT_MODE_PSEUDO_LOCKSETUP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %30 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RDT_MODE_PSEUDO_LOCKED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %22
  %35 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %36 = call i32 @rdtgroup_pseudo_lock_remove(%struct.rdtgroup* %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %39 = call i32 @kernfs_unbreak_active_protection(%struct.kernfs_node* %38)
  %40 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %41 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @kernfs_put(i32 %42)
  %44 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %45 = call i32 @kfree(%struct.rdtgroup* %44)
  br label %49

46:                                               ; preds = %15, %9
  %47 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %48 = call i32 @kernfs_unbreak_active_protection(%struct.kernfs_node* %47)
  br label %49

49:                                               ; preds = %8, %46, %37
  ret void
}

declare dso_local %struct.rdtgroup* @kernfs_to_rdtgroup(%struct.kernfs_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @rdtgroup_pseudo_lock_remove(%struct.rdtgroup*) #1

declare dso_local i32 @kernfs_unbreak_active_protection(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put(i32) #1

declare dso_local i32 @kfree(%struct.rdtgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
