; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c___rdtgroup_move_task.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c___rdtgroup_move_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32 }
%struct.rdtgroup = type { i64, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.task_move_callback = type { %struct.TYPE_6__, %struct.rdtgroup* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@move_myself = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Task exited\0A\00", align 1
@RDTCTRL_GROUP = common dso_local global i64 0, align 8
@RDTMON_GROUP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Can't move task to different control group\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.rdtgroup*)* @__rdtgroup_move_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rdtgroup_move_task(%struct.task_struct* %0, %struct.rdtgroup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.rdtgroup*, align 8
  %6 = alloca %struct.task_move_callback*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.rdtgroup* %1, %struct.rdtgroup** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.task_move_callback* @kzalloc(i32 16, i32 %8)
  store %struct.task_move_callback* %9, %struct.task_move_callback** %6, align 8
  %10 = load %struct.task_move_callback*, %struct.task_move_callback** %6, align 8
  %11 = icmp ne %struct.task_move_callback* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %90

15:                                               ; preds = %2
  %16 = load i32, i32* @move_myself, align 4
  %17 = load %struct.task_move_callback*, %struct.task_move_callback** %6, align 8
  %18 = getelementptr inbounds %struct.task_move_callback, %struct.task_move_callback* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %21 = load %struct.task_move_callback*, %struct.task_move_callback** %6, align 8
  %22 = getelementptr inbounds %struct.task_move_callback, %struct.task_move_callback* %21, i32 0, i32 1
  store %struct.rdtgroup* %20, %struct.rdtgroup** %22, align 8
  %23 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %24 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %23, i32 0, i32 3
  %25 = call i32 @atomic_inc(i32* %24)
  %26 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %27 = load %struct.task_move_callback*, %struct.task_move_callback** %6, align 8
  %28 = getelementptr inbounds %struct.task_move_callback, %struct.task_move_callback* %27, i32 0, i32 0
  %29 = call i32 @task_work_add(%struct.task_struct* %26, %struct.TYPE_6__* %28, i32 1)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %15
  %33 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %34 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %33, i32 0, i32 3
  %35 = call i32 @atomic_dec(i32* %34)
  %36 = load %struct.task_move_callback*, %struct.task_move_callback** %6, align 8
  %37 = call i32 @kfree(%struct.task_move_callback* %36)
  %38 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %88

39:                                               ; preds = %15
  %40 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %41 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RDTCTRL_GROUP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %47 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %52 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %56 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %87

57:                                               ; preds = %39
  %58 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %59 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RDTMON_GROUP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %65 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %63
  %75 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %76 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %80 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  br label %85

81:                                               ; preds = %63
  %82 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %74
  br label %86

86:                                               ; preds = %85, %57
  br label %87

87:                                               ; preds = %86, %45
  br label %88

88:                                               ; preds = %87, %32
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %12
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.task_move_callback* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @task_work_add(%struct.task_struct*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.task_move_callback*) #1

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
