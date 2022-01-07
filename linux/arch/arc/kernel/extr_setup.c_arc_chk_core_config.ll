; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_setup.c_arc_chk_core_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_setup.c_arc_chk_core_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_arc = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64 }

@cpuinfo_arc700 = common dso_local global %struct.cpuinfo_arc* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Timer0 is not present!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Timer1 is not present!\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"CONFIG_ARC_FPU_SAVE_RESTORE\00", align 1
@CONFIG_ARC_FPU_SAVE_RESTORE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"CONFIG_ARC_HAS_ACCL_REGS\00", align 1
@CONFIG_ARC_HAS_ACCL_REGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Enable %s for working apps\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Disable %s, hardware NOT present\0A\00", align 1
@CONFIG_ARC_DCCM_SZ = common dso_local global i64 0, align 8
@CONFIG_ARC_ICCM_SZ = common dso_local global i64 0, align 8
@__arc_dccm_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @arc_chk_core_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_chk_core_config() #0 {
  %1 = alloca %struct.cpuinfo_arc*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** @cpuinfo_arc700, align 8
  %6 = call i64 (...) @smp_processor_id()
  %7 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %5, i64 %6
  store %struct.cpuinfo_arc* %7, %struct.cpuinfo_arc** %1, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %8 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %1, align 8
  %9 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %1, align 8
  %17 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = call i64 (...) @is_isa_arcompact()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %27 = load i32, i32* @CONFIG_ARC_FPU_SAVE_RESTORE, align 4
  %28 = call i32 @IS_ENABLED(i32 %27)
  store i32 %28, i32* %2, align 4
  %29 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %1, align 8
  %30 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %3, align 4
  br label %50

33:                                               ; preds = %23
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %34 = load i32, i32* @CONFIG_ARC_HAS_ACCL_REGS, align 4
  %35 = call i32 @IS_ENABLED(i32 %34)
  store i32 %35, i32* %2, align 4
  %36 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %1, align 8
  %37 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %1, align 8
  %41 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %39, %43
  %45 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %1, align 8
  %46 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %44, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %33, %26
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %2, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  br label %69

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %2, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %62, %59
  br label %69

69:                                               ; preds = %68, %56
  ret void
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i64 @is_isa_arcompact(...) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
