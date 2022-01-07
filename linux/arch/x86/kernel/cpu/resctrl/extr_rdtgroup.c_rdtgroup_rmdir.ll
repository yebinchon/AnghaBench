; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.kernfs_node* }
%struct.kernfs_node = type { i32, %struct.kernfs_node* }
%struct.rdtgroup = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@RDTCTRL_GROUP = common dso_local global i64 0, align 8
@rdtgroup_default = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RDT_MODE_PSEUDO_LOCKSETUP = common dso_local global i64 0, align 8
@RDT_MODE_PSEUDO_LOCKED = common dso_local global i64 0, align 8
@RDTMON_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*)* @rdtgroup_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtgroup_rmdir(%struct.kernfs_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca %struct.rdtgroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %3, align 8
  %8 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %9 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %8, i32 0, i32 1
  %10 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  store %struct.kernfs_node* %10, %struct.kernfs_node** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @zalloc_cpumask_var(i32* %6, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %1
  %18 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %19 = call %struct.rdtgroup* @rdtgroup_kn_lock_live(%struct.kernfs_node* %18)
  store %struct.rdtgroup* %19, %struct.rdtgroup** %5, align 8
  %20 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %21 = icmp ne %struct.rdtgroup* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %80

25:                                               ; preds = %17
  %26 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %27 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RDTCTRL_GROUP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %33 = load %struct.kernfs_node*, %struct.kernfs_node** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdtgroup_default, i32 0, i32 0), align 8
  %34 = icmp eq %struct.kernfs_node* %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %37 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RDT_MODE_PSEUDO_LOCKSETUP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %43 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RDT_MODE_PSEUDO_LOCKED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41, %35
  %48 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %49 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %50 = call i32 @rdtgroup_ctrl_remove(%struct.kernfs_node* %48, %struct.rdtgroup* %49)
  store i32 %50, i32* %7, align 4
  br label %56

51:                                               ; preds = %41
  %52 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %53 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @rdtgroup_rmdir_ctrl(%struct.kernfs_node* %52, %struct.rdtgroup* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %51, %47
  br label %79

57:                                               ; preds = %31, %25
  %58 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %59 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RDTMON_GROUP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %65 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %66 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @is_mon_groups(%struct.kernfs_node* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %72 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @rdtgroup_rmdir_mon(%struct.kernfs_node* %71, %struct.rdtgroup* %72, i32 %73)
  store i32 %74, i32* %7, align 4
  br label %78

75:                                               ; preds = %63, %57
  %76 = load i32, i32* @EPERM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %70
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %22
  %81 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %82 = call i32 @rdtgroup_kn_unlock(%struct.kernfs_node* %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @free_cpumask_var(i32 %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %80, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local %struct.rdtgroup* @rdtgroup_kn_lock_live(%struct.kernfs_node*) #1

declare dso_local i32 @rdtgroup_ctrl_remove(%struct.kernfs_node*, %struct.rdtgroup*) #1

declare dso_local i32 @rdtgroup_rmdir_ctrl(%struct.kernfs_node*, %struct.rdtgroup*, i32) #1

declare dso_local i64 @is_mon_groups(%struct.kernfs_node*, i32) #1

declare dso_local i32 @rdtgroup_rmdir_mon(%struct.kernfs_node*, %struct.rdtgroup*, i32) #1

declare dso_local i32 @rdtgroup_kn_unlock(%struct.kernfs_node*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
