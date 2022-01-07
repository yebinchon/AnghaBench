; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_rdtgroup_locksetup_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_rdtgroup_locksetup_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdtgroup = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@rdtgroup_default = common dso_local global %struct.rdtgroup zeroinitializer, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot pseudo-lock default group\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@rdt_resources_all = common dso_local global %struct.TYPE_4__* null, align 8
@RDT_RESOURCE_L3DATA = common dso_local global i64 0, align 8
@RDT_RESOURCE_L2DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"CDP enabled\0A\00", align 1
@prefetch_disable_bits = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Pseudo-locking not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Monitoring in progress\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Tasks assigned to resource group\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"CPUs assigned to resource group\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Unable to modify resctrl permissions\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Unable to init pseudo-lock region\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdtgroup_locksetup_enter(%struct.rdtgroup* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdtgroup*, align 8
  %4 = alloca i32, align 4
  store %struct.rdtgroup* %0, %struct.rdtgroup** %3, align 8
  %5 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %6 = icmp eq %struct.rdtgroup* %5, @rdtgroup_default
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %88

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rdt_resources_all, align 8
  %13 = load i64, i64* @RDT_RESOURCE_L3DATA, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rdt_resources_all, align 8
  %20 = load i64, i64* @RDT_RESOURCE_L2DATA, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18, %11
  %26 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %88

29:                                               ; preds = %18
  %30 = call i64 (...) @get_prefetch_disable_bits()
  store i64 %30, i64* @prefetch_disable_bits, align 8
  %31 = load i64, i64* @prefetch_disable_bits, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %88

37:                                               ; preds = %29
  %38 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %39 = call i64 @rdtgroup_monitor_in_progress(%struct.rdtgroup* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %88

45:                                               ; preds = %37
  %46 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %47 = call i64 @rdtgroup_tasks_assigned(%struct.rdtgroup* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %88

53:                                               ; preds = %45
  %54 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %55 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %54, i32 0, i32 1
  %56 = call i32 @cpumask_empty(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %88

62:                                               ; preds = %53
  %63 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %64 = call i64 @rdtgroup_locksetup_user_restrict(%struct.rdtgroup* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %88

70:                                               ; preds = %62
  %71 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %72 = call i32 @pseudo_lock_init(%struct.rdtgroup* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %83

77:                                               ; preds = %70
  %78 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %79 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @free_rmid(i32 %81)
  store i32 0, i32* %4, align 4
  br label %86

83:                                               ; preds = %75
  %84 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %85 = call i32 @rdtgroup_locksetup_user_restore(%struct.rdtgroup* %84)
  br label %86

86:                                               ; preds = %83, %77
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %66, %58, %49, %41, %33, %25, %7
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local i64 @get_prefetch_disable_bits(...) #1

declare dso_local i64 @rdtgroup_monitor_in_progress(%struct.rdtgroup*) #1

declare dso_local i64 @rdtgroup_tasks_assigned(%struct.rdtgroup*) #1

declare dso_local i32 @cpumask_empty(i32*) #1

declare dso_local i64 @rdtgroup_locksetup_user_restrict(%struct.rdtgroup*) #1

declare dso_local i32 @pseudo_lock_init(%struct.rdtgroup*) #1

declare dso_local i32 @free_rmid(i32) #1

declare dso_local i32 @rdtgroup_locksetup_user_restore(%struct.rdtgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
