; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_region_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_region_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseudo_lock_region = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.cpu_cacheinfo = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"CPU %u associated with cache not online\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to determine cache line size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pseudo_lock_region*)* @pseudo_lock_region_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseudo_lock_region_init(%struct.pseudo_lock_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pseudo_lock_region*, align 8
  %4 = alloca %struct.cpu_cacheinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pseudo_lock_region* %0, %struct.pseudo_lock_region** %3, align 8
  %7 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %8 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = call i32 @cpumask_first(i32* %10)
  %12 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %13 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %15 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cpu_online(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %21 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rdt_last_cmd_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %81

26:                                               ; preds = %1
  %27 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %28 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %29)
  store %struct.cpu_cacheinfo* %30, %struct.cpu_cacheinfo** %4, align 8
  %31 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %32 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %35 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %38 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @rdtgroup_cbm_to_size(%struct.TYPE_5__* %33, %struct.TYPE_6__* %36, i32 %39)
  %41 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %42 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %76, %26
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %46 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %43
  %50 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %51 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %59 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %57, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %49
  %65 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %66 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %74 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  store i32 0, i32* %2, align 4
  br label %85

75:                                               ; preds = %49
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %43

79:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  %80 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %19
  %82 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %83 = call i32 @pseudo_lock_region_clear(%struct.pseudo_lock_region* %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %64
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @rdt_last_cmd_printf(i8*, i32) #1

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

declare dso_local i32 @rdtgroup_cbm_to_size(%struct.TYPE_5__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local i32 @pseudo_lock_region_clear(%struct.pseudo_lock_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
