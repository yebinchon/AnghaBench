; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_shared_cpu_map_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_shared_cpu_map_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }
%struct.cache_index_dir = type { %struct.cache* }
%struct.cache = type { %struct.cpumask }
%struct.cpumask = type { i32 }

@has_big_cores = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @shared_cpu_map_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shared_cpu_map_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobj_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cache_index_dir*, align 8
  %8 = alloca %struct.cache*, align 8
  %9 = alloca %struct.cpumask*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.kobject*, %struct.kobject** %4, align 8
  %13 = call %struct.cache_index_dir* @kobj_to_cache_index_dir(%struct.kobject* %12)
  store %struct.cache_index_dir* %13, %struct.cache_index_dir** %7, align 8
  %14 = load %struct.cache_index_dir*, %struct.cache_index_dir** %7, align 8
  %15 = getelementptr inbounds %struct.cache_index_dir, %struct.cache_index_dir* %14, i32 0, i32 0
  %16 = load %struct.cache*, %struct.cache** %15, align 8
  store %struct.cache* %16, %struct.cache** %8, align 8
  %17 = load i64, i64* @has_big_cores, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.cache_index_dir*, %struct.cache_index_dir** %7, align 8
  %21 = call i32 @index_dir_to_cpu(%struct.cache_index_dir* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.cache*, %struct.cache** %8, align 8
  %24 = call %struct.cpumask* @get_big_core_shared_cpu_map(i32 %22, %struct.cache* %23)
  store %struct.cpumask* %24, %struct.cpumask** %9, align 8
  br label %28

25:                                               ; preds = %3
  %26 = load %struct.cache*, %struct.cache** %8, align 8
  %27 = getelementptr inbounds %struct.cache, %struct.cache* %26, i32 0, i32 0
  store %struct.cpumask* %27, %struct.cpumask** %9, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = sub nsw i64 %30, 1
  %32 = load %struct.cpumask*, %struct.cpumask** %9, align 8
  %33 = call i32 @cpumask_pr_args(%struct.cpumask* %32)
  %34 = call i32 @scnprintf(i8* %29, i64 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8 10, i8* %39, align 1
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i32, i32* %10, align 4
  ret i32 %44
}

declare dso_local %struct.cache_index_dir* @kobj_to_cache_index_dir(%struct.kobject*) #1

declare dso_local i32 @index_dir_to_cpu(%struct.cache_index_dir*) #1

declare dso_local %struct.cpumask* @get_big_core_shared_cpu_map(i32, %struct.cache*) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @cpumask_pr_args(%struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
