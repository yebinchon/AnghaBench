; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.cpufreq_policy = type { i32, i32 }
%struct.freq_attr = type { i32 (%struct.cpufreq_policy.0*, i8*, i64)* }
%struct.cpufreq_policy.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*, i64)* @store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cpufreq_policy*, align 8
  %11 = alloca %struct.freq_attr*, align 8
  %12 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.attribute* %1, %struct.attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.kobject*, %struct.kobject** %6, align 8
  %14 = call %struct.cpufreq_policy* @to_policy(%struct.kobject* %13)
  store %struct.cpufreq_policy* %14, %struct.cpufreq_policy** %10, align 8
  %15 = load %struct.attribute*, %struct.attribute** %7, align 8
  %16 = call %struct.freq_attr* @to_attr(%struct.attribute* %15)
  store %struct.freq_attr* %16, %struct.freq_attr** %11, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = call i32 (...) @cpus_read_trylock()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %48

24:                                               ; preds = %4
  %25 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %10, align 8
  %26 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @cpu_online(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %10, align 8
  %32 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %31, i32 0, i32 0
  %33 = call i32 @down_write(i32* %32)
  %34 = load %struct.freq_attr*, %struct.freq_attr** %11, align 8
  %35 = getelementptr inbounds %struct.freq_attr, %struct.freq_attr* %34, i32 0, i32 0
  %36 = load i32 (%struct.cpufreq_policy.0*, i8*, i64)*, i32 (%struct.cpufreq_policy.0*, i8*, i64)** %35, align 8
  %37 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %10, align 8
  %38 = bitcast %struct.cpufreq_policy* %37 to %struct.cpufreq_policy.0*
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 %36(%struct.cpufreq_policy.0* %38, i8* %39, i64 %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %10, align 8
  %43 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %42, i32 0, i32 0
  %44 = call i32 @up_write(i32* %43)
  br label %45

45:                                               ; preds = %30, %24
  %46 = call i32 (...) @cpus_read_unlock()
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %21
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.cpufreq_policy* @to_policy(%struct.kobject*) #1

declare dso_local %struct.freq_attr* @to_attr(%struct.attribute*) #1

declare dso_local i32 @cpus_read_trylock(...) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @cpus_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
