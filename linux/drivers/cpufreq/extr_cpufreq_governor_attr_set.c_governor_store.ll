; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_governor_attr_set.c_governor_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_governor_attr_set.c_governor_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.gov_attr_set = type { i32, i64 }
%struct.governor_attr = type { i32 (%struct.gov_attr_set.0*, i8*, i64)* }
%struct.gov_attr_set.0 = type opaque

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*, i64)* @governor_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @governor_store(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gov_attr_set*, align 8
  %10 = alloca %struct.governor_attr*, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.kobject*, %struct.kobject** %5, align 8
  %13 = call %struct.gov_attr_set* @to_gov_attr_set(%struct.kobject* %12)
  store %struct.gov_attr_set* %13, %struct.gov_attr_set** %9, align 8
  %14 = load %struct.attribute*, %struct.attribute** %6, align 8
  %15 = call %struct.governor_attr* @to_gov_attr(%struct.attribute* %14)
  store %struct.governor_attr* %15, %struct.governor_attr** %10, align 8
  %16 = load %struct.gov_attr_set*, %struct.gov_attr_set** %9, align 8
  %17 = getelementptr inbounds %struct.gov_attr_set, %struct.gov_attr_set* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.gov_attr_set*, %struct.gov_attr_set** %9, align 8
  %20 = getelementptr inbounds %struct.gov_attr_set, %struct.gov_attr_set* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load %struct.governor_attr*, %struct.governor_attr** %10, align 8
  %25 = getelementptr inbounds %struct.governor_attr, %struct.governor_attr* %24, i32 0, i32 0
  %26 = load i32 (%struct.gov_attr_set.0*, i8*, i64)*, i32 (%struct.gov_attr_set.0*, i8*, i64)** %25, align 8
  %27 = load %struct.gov_attr_set*, %struct.gov_attr_set** %9, align 8
  %28 = bitcast %struct.gov_attr_set* %27 to %struct.gov_attr_set.0*
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 %26(%struct.gov_attr_set.0* %28, i8* %29, i64 %30)
  br label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  br label %35

35:                                               ; preds = %32, %23
  %36 = phi i32 [ %31, %23 ], [ %34, %32 ]
  store i32 %36, i32* %11, align 4
  %37 = load %struct.gov_attr_set*, %struct.gov_attr_set** %9, align 8
  %38 = getelementptr inbounds %struct.gov_attr_set, %struct.gov_attr_set* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %11, align 4
  ret i32 %40
}

declare dso_local %struct.gov_attr_set* @to_gov_attr_set(%struct.kobject*) #1

declare dso_local %struct.governor_attr* @to_gov_attr(%struct.attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
