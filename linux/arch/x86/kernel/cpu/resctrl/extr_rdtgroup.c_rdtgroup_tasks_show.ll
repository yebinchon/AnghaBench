; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_tasks_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_tasks_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.seq_file = type { i32 }
%struct.rdtgroup = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_open_file*, %struct.seq_file*, i8*)* @rdtgroup_tasks_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtgroup_tasks_show(%struct.kernfs_open_file* %0, %struct.seq_file* %1, i8* %2) #0 {
  %4 = alloca %struct.kernfs_open_file*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rdtgroup*, align 8
  %8 = alloca i32, align 4
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %4, align 8
  %10 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rdtgroup* @rdtgroup_kn_lock_live(i32 %11)
  store %struct.rdtgroup* %12, %struct.rdtgroup** %7, align 8
  %13 = load %struct.rdtgroup*, %struct.rdtgroup** %7, align 8
  %14 = icmp ne %struct.rdtgroup* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.rdtgroup*, %struct.rdtgroup** %7, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %18 = call i32 @show_rdt_tasks(%struct.rdtgroup* %16, %struct.seq_file* %17)
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %4, align 8
  %24 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rdtgroup_kn_unlock(i32 %25)
  %27 = load i32, i32* %8, align 4
  ret i32 %27
}

declare dso_local %struct.rdtgroup* @rdtgroup_kn_lock_live(i32) #1

declare dso_local i32 @show_rdt_tasks(%struct.rdtgroup*, %struct.seq_file*) #1

declare dso_local i32 @rdtgroup_kn_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
