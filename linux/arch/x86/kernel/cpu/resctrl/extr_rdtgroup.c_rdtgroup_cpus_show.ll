; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_cpus_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_cpus_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.seq_file = type { i32 }
%struct.rdtgroup = type { i64, %struct.cpumask, %struct.TYPE_4__* }
%struct.cpumask = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cpumask }

@RDT_MODE_PSEUDO_LOCKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Cache domain offline\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_open_file*, %struct.seq_file*, i8*)* @rdtgroup_cpus_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtgroup_cpus_show(%struct.kernfs_open_file* %0, %struct.seq_file* %1, i8* %2) #0 {
  %4 = alloca %struct.kernfs_open_file*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rdtgroup*, align 8
  %8 = alloca %struct.cpumask*, align 8
  %9 = alloca i32, align 4
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %4, align 8
  %11 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.rdtgroup* @rdtgroup_kn_lock_live(i32 %12)
  store %struct.rdtgroup* %13, %struct.rdtgroup** %7, align 8
  %14 = load %struct.rdtgroup*, %struct.rdtgroup** %7, align 8
  %15 = icmp ne %struct.rdtgroup* %14, null
  br i1 %15, label %16, label %63

16:                                               ; preds = %3
  %17 = load %struct.rdtgroup*, %struct.rdtgroup** %7, align 8
  %18 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RDT_MODE_PSEUDO_LOCKED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %16
  %23 = load %struct.rdtgroup*, %struct.rdtgroup** %7, align 8
  %24 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = call i32 (...) @rdt_last_cmd_clear()
  %31 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %50

34:                                               ; preds = %22
  %35 = load %struct.rdtgroup*, %struct.rdtgroup** %7, align 8
  %36 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store %struct.cpumask* %40, %struct.cpumask** %8, align 8
  %41 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %42 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %4, align 8
  %43 = call i64 @is_cpu_list(%struct.kernfs_open_file* %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %47 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %48 = call i32 @cpumask_pr_args(%struct.cpumask* %47)
  %49 = call i32 @seq_printf(%struct.seq_file* %41, i8* %46, i32 %48)
  br label %50

50:                                               ; preds = %34, %29
  br label %62

51:                                               ; preds = %16
  %52 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %53 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %4, align 8
  %54 = call i64 @is_cpu_list(%struct.kernfs_open_file* %53)
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %58 = load %struct.rdtgroup*, %struct.rdtgroup** %7, align 8
  %59 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %58, i32 0, i32 1
  %60 = call i32 @cpumask_pr_args(%struct.cpumask* %59)
  %61 = call i32 @seq_printf(%struct.seq_file* %52, i8* %57, i32 %60)
  br label %62

62:                                               ; preds = %51, %50
  br label %66

63:                                               ; preds = %3
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %62
  %67 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %4, align 8
  %68 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rdtgroup_kn_unlock(i32 %69)
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local %struct.rdtgroup* @rdtgroup_kn_lock_live(i32) #1

declare dso_local i32 @rdt_last_cmd_clear(...) #1

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i64 @is_cpu_list(%struct.kernfs_open_file*) #1

declare dso_local i32 @cpumask_pr_args(%struct.cpumask*) #1

declare dso_local i32 @rdtgroup_kn_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
