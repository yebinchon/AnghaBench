; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_dev_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.rdtgroup* }
%struct.rdtgroup = type { i32 }

@rdtgroup_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FMODE_LSEEK = common dso_local global i32 0, align 4
@FMODE_PREAD = common dso_local global i32 0, align 4
@FMODE_PWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @pseudo_lock_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseudo_lock_dev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.rdtgroup*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = call i32 @mutex_lock(i32* @rdtgroup_mutex)
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  %10 = call %struct.rdtgroup* @region_find_by_minor(i32 %9)
  store %struct.rdtgroup* %10, %struct.rdtgroup** %6, align 8
  %11 = load %struct.rdtgroup*, %struct.rdtgroup** %6, align 8
  %12 = icmp ne %struct.rdtgroup* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.rdtgroup*, %struct.rdtgroup** %6, align 8
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  store %struct.rdtgroup* %18, %struct.rdtgroup** %20, align 8
  %21 = load %struct.rdtgroup*, %struct.rdtgroup** %6, align 8
  %22 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %21, i32 0, i32 0
  %23 = call i32 @atomic_inc(i32* %22)
  %24 = load i32, i32* @FMODE_LSEEK, align 4
  %25 = load i32, i32* @FMODE_PREAD, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FMODE_PWRITE, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %17, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.rdtgroup* @region_find_by_minor(i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
