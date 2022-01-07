; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_rdtgroup_pseudo_lock_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_rdtgroup_pseudo_lock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdtgroup = type { i32, i32, i32, %struct.TYPE_2__*, %struct.pseudo_lock_region* }
%struct.TYPE_2__ = type { i32 }
%struct.pseudo_lock_region = type { i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32 }
%struct.device = type opaque

@EINVAL = common dso_local global i32 0, align 4
@pseudo_lock_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pseudo_lock/%u\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Locking thread returned error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Locking thread interrupted\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Unable to obtain a new minor number\0A\00", align 1
@rdtgroup_mutex = common dso_local global i32 0, align 4
@debugfs_resctrl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"pseudo_lock_measure\00", align 1
@pseudo_measure_fops = common dso_local global i32 0, align 4
@pseudo_lock_class = common dso_local global i32 0, align 4
@pseudo_lock_major = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Failed to create character device: %d\0A\00", align 1
@RDT_DELETED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@RDT_MODE_PSEUDO_LOCKED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"cpus_list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdtgroup_pseudo_lock_create(%struct.rdtgroup* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdtgroup*, align 8
  %4 = alloca %struct.pseudo_lock_region*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.rdtgroup* %0, %struct.rdtgroup** %3, align 8
  %9 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %10 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %9, i32 0, i32 4
  %11 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %10, align 8
  store %struct.pseudo_lock_region* %11, %struct.pseudo_lock_region** %4, align 8
  %12 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %13 = call i32 @pseudo_lock_region_alloc(%struct.pseudo_lock_region* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %171

18:                                               ; preds = %1
  %19 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %20 = call i32 @pseudo_lock_cstates_constrain(%struct.pseudo_lock_region* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %166

26:                                               ; preds = %18
  %27 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %28 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @pseudo_lock_fn, align 4
  %30 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %31 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %32 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpu_to_node(i32 %33)
  %35 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %36 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.task_struct* @kthread_create_on_node(i32 %29, %struct.rdtgroup* %30, i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %37)
  store %struct.task_struct* %38, %struct.task_struct** %5, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %40 = call i64 @IS_ERR(%struct.task_struct* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %44 = call i32 @PTR_ERR(%struct.task_struct* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @rdt_last_cmd_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %163

47:                                               ; preds = %26
  %48 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %49 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %50 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @kthread_bind(%struct.task_struct* %48, i32 %51)
  %53 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %54 = call i32 @wake_up_process(%struct.task_struct* %53)
  %55 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %56 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %59 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  %62 = zext i1 %61 to i32
  %63 = call i32 @wait_event_interruptible(i32 %57, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %47
  %67 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %163

68:                                               ; preds = %47
  %69 = call i32 @pseudo_lock_minor_get(i32* %6)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %163

74:                                               ; preds = %68
  %75 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  %76 = load i32, i32* @debugfs_resctrl, align 4
  %77 = call i32 @IS_ERR_OR_NULL(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %101, label %79

79:                                               ; preds = %74
  %80 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %81 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @debugfs_resctrl, align 4
  %86 = call i32 @debugfs_create_dir(i32 %84, i32 %85)
  %87 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %88 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %90 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @IS_ERR_OR_NULL(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %79
  %95 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %96 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %99 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 128, i32 %97, %struct.rdtgroup* %98, i32* @pseudo_measure_fops)
  br label %100

100:                                              ; preds = %94, %79
  br label %101

101:                                              ; preds = %100, %74
  %102 = load i32, i32* @pseudo_lock_class, align 4
  %103 = load i32, i32* @pseudo_lock_major, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @MKDEV(i32 %103, i32 %104)
  %106 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %107 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %108 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %107, i32 0, i32 3
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call %struct.task_struct* @device_create(i32 %102, i32* null, i32 %105, %struct.rdtgroup* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  %113 = bitcast %struct.task_struct* %112 to %struct.device*
  store %struct.device* %113, %struct.device** %7, align 8
  %114 = call i32 @mutex_lock(i32* @rdtgroup_mutex)
  %115 = load %struct.device*, %struct.device** %7, align 8
  %116 = bitcast %struct.device* %115 to %struct.task_struct*
  %117 = call i64 @IS_ERR(%struct.task_struct* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %101
  %120 = load %struct.device*, %struct.device** %7, align 8
  %121 = bitcast %struct.device* %120 to %struct.task_struct*
  %122 = call i32 @PTR_ERR(%struct.task_struct* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @rdt_last_cmd_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  br label %156

125:                                              ; preds = %101
  %126 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %127 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @RDT_DELETED, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i32, i32* @ENODEV, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %8, align 4
  br label %150

135:                                              ; preds = %125
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %138 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @RDT_MODE_PSEUDO_LOCKED, align 4
  %140 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %141 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %143 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @closid_free(i32 %144)
  %146 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %147 = call i32 @rdtgroup_kn_mode_restore(%struct.rdtgroup* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 292)
  %148 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %149 = call i32 @rdtgroup_kn_mode_restore(%struct.rdtgroup* %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 292)
  store i32 0, i32* %8, align 4
  br label %169

150:                                              ; preds = %132
  %151 = load i32, i32* @pseudo_lock_class, align 4
  %152 = load i32, i32* @pseudo_lock_major, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @MKDEV(i32 %152, i32 %153)
  %155 = call i32 @device_destroy(i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %150, %119
  %157 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %158 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @debugfs_remove_recursive(i32 %159)
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @pseudo_lock_minor_release(i32 %161)
  br label %163

163:                                              ; preds = %156, %72, %66, %42
  %164 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %165 = call i32 @pseudo_lock_cstates_relax(%struct.pseudo_lock_region* %164)
  br label %166

166:                                              ; preds = %163, %23
  %167 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %168 = call i32 @pseudo_lock_region_clear(%struct.pseudo_lock_region* %167)
  br label %169

169:                                              ; preds = %166, %135
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %169, %16
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @pseudo_lock_region_alloc(%struct.pseudo_lock_region*) #1

declare dso_local i32 @pseudo_lock_cstates_constrain(%struct.pseudo_lock_region*) #1

declare dso_local %struct.task_struct* @kthread_create_on_node(i32, %struct.rdtgroup*, i32, i8*, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @rdt_last_cmd_printf(i8*, i32) #1

declare dso_local i32 @kthread_bind(%struct.task_struct*, i32) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local i32 @pseudo_lock_minor_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.rdtgroup*, i32*) #1

declare dso_local %struct.task_struct* @device_create(i32, i32*, i32, %struct.rdtgroup*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @closid_free(i32) #1

declare dso_local i32 @rdtgroup_kn_mode_restore(%struct.rdtgroup*, i8*, i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @pseudo_lock_minor_release(i32) #1

declare dso_local i32 @pseudo_lock_cstates_relax(%struct.pseudo_lock_region*) #1

declare dso_local i32 @pseudo_lock_region_clear(%struct.pseudo_lock_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
