; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.seq_file = type { i32 }
%struct.kernfs_root = type { i32 }

@rdt_resources_all = common dso_local global %struct.TYPE_3__* null, align 8
@RDT_RESOURCE_L3DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c",cdp\00", align 1
@RDT_RESOURCE_L2DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c",cdpl2\00", align 1
@RDT_RESOURCE_MBA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c",mba_MBps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.kernfs_root*)* @rdtgroup_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtgroup_show_options(%struct.seq_file* %0, %struct.kernfs_root* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.kernfs_root*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.kernfs_root* %1, %struct.kernfs_root** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rdt_resources_all, align 8
  %6 = load i64, i64* @RDT_RESOURCE_L3DATA, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = call i32 @seq_puts(%struct.seq_file* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rdt_resources_all, align 8
  %16 = load i64, i64* @RDT_RESOURCE_L2DATA, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rdt_resources_all, align 8
  %26 = load i64, i64* @RDT_RESOURCE_MBA, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = call i64 @is_mba_sc(%struct.TYPE_3__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = call i32 @seq_puts(%struct.seq_file* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %24
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @is_mba_sc(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
