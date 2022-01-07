; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_tasks_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_tasks_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.rdtgroup = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@RDT_MODE_PSEUDO_LOCKED = common dso_local global i64 0, align 8
@RDT_MODE_PSEUDO_LOCKSETUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Pseudo-locking in progress\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernfs_open_file*, i8*, i64, i32)* @rdtgroup_tasks_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rdtgroup_tasks_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rdtgroup*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @strstrip(i8* %13)
  %15 = call i64 @kstrtoint(i32 %14, i32 0, i64* %12)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %12, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %73

23:                                               ; preds = %17
  %24 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %25 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.rdtgroup* @rdtgroup_kn_lock_live(i32 %26)
  store %struct.rdtgroup* %27, %struct.rdtgroup** %10, align 8
  %28 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %29 = icmp ne %struct.rdtgroup* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %32 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rdtgroup_kn_unlock(i32 %33)
  %35 = load i64, i64* @ENOENT, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %73

37:                                               ; preds = %23
  %38 = call i32 (...) @rdt_last_cmd_clear()
  %39 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %40 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RDT_MODE_PSEUDO_LOCKED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %46 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RDT_MODE_PSEUDO_LOCKSETUP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44, %37
  %51 = load i64, i64* @EINVAL, align 8
  %52 = sub i64 0, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %60

55:                                               ; preds = %44
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %58 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %59 = call i32 @rdtgroup_move_task(i64 %56, %struct.rdtgroup* %57, %struct.kernfs_open_file* %58)
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %62 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @rdtgroup_kn_unlock(i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = sext i32 %65 to i64
  br label %71

69:                                               ; preds = %60
  %70 = load i64, i64* %8, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i64 [ %68, %67 ], [ %70, %69 ]
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %71, %30, %20
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local i64 @kstrtoint(i32, i32, i64*) #1

declare dso_local i32 @strstrip(i8*) #1

declare dso_local %struct.rdtgroup* @rdtgroup_kn_lock_live(i32) #1

declare dso_local i32 @rdtgroup_kn_unlock(i32) #1

declare dso_local i32 @rdt_last_cmd_clear(...) #1

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local i32 @rdtgroup_move_task(i64, %struct.rdtgroup*, %struct.kernfs_open_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
