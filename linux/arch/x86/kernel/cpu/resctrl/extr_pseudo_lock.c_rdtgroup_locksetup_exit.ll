; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_rdtgroup_locksetup_exit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_rdtgroup_locksetup_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdtgroup = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rdt_mon_capable = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Out of RMIDs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdtgroup_locksetup_exit(%struct.rdtgroup* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdtgroup*, align 8
  %4 = alloca i32, align 4
  store %struct.rdtgroup* %0, %struct.rdtgroup** %3, align 8
  %5 = load i64, i64* @rdt_mon_capable, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = call i32 (...) @alloc_rmid()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %7
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %17 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %21 = call i32 @rdtgroup_locksetup_user_restore(%struct.rdtgroup* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %26 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @free_rmid(i32 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %34

31:                                               ; preds = %19
  %32 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %33 = call i32 @pseudo_lock_free(%struct.rdtgroup* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %24, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @alloc_rmid(...) #1

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local i32 @rdtgroup_locksetup_user_restore(%struct.rdtgroup*) #1

declare dso_local i32 @free_rmid(i32) #1

declare dso_local i32 @pseudo_lock_free(%struct.rdtgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
