; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_rdtgroup_locksetup_user_restore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_rdtgroup_locksetup_user_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdtgroup = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"tasks\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cpus_list\00", align 1
@rdt_mon_capable = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"mon_groups\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdtgroup*)* @rdtgroup_locksetup_user_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtgroup_locksetup_user_restore(%struct.rdtgroup* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdtgroup*, align 8
  %4 = alloca i32, align 4
  store %struct.rdtgroup* %0, %struct.rdtgroup** %3, align 8
  %5 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %6 = call i32 @rdtgroup_kn_mode_restore(%struct.rdtgroup* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 511)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %13 = call i32 @rdtgroup_kn_mode_restore(%struct.rdtgroup* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 511)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %40

17:                                               ; preds = %11
  %18 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %19 = call i32 @rdtgroup_kn_mode_restore(%struct.rdtgroup* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 511)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %37

23:                                               ; preds = %17
  %24 = load i64, i64* @rdt_mon_capable, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %28 = call i32 @rdtgroup_kn_mode_restore(%struct.rdtgroup* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 511)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %34

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %23
  store i32 0, i32* %4, align 4
  br label %43

34:                                               ; preds = %31
  %35 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %36 = call i32 @rdtgroup_kn_mode_restrict(%struct.rdtgroup* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %22
  %38 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %39 = call i32 @rdtgroup_kn_mode_restrict(%struct.rdtgroup* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %16
  %41 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %42 = call i32 @rdtgroup_kn_mode_restrict(%struct.rdtgroup* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @rdtgroup_kn_mode_restore(%struct.rdtgroup*, i8*, i32) #1

declare dso_local i32 @rdtgroup_kn_mode_restrict(%struct.rdtgroup*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
