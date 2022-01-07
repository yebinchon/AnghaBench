; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_uncore.c_amd_uncore_cpu_starting.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_uncore.c_amd_uncore_cpu_starting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_uncore = type { i32 }

@amd_uncore_nb = common dso_local global i64 0, align 8
@amd_uncore_llc = common dso_local global i64 0, align 8
@cpu_llc_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amd_uncore_cpu_starting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_uncore_cpu_starting(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amd_uncore*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i64, i64* @amd_uncore_nb, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load i64, i64* @amd_uncore_nb, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.amd_uncore** @per_cpu_ptr(i64 %11, i32 %12)
  %14 = load %struct.amd_uncore*, %struct.amd_uncore** %13, align 8
  store %struct.amd_uncore* %14, %struct.amd_uncore** %7, align 8
  %15 = call i32 @cpuid(i32 -2147483618, i32* %3, i32* %4, i32* %5, i32* %6)
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 255
  %18 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %19 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %21 = load i64, i64* @amd_uncore_nb, align 8
  %22 = call %struct.amd_uncore* @amd_uncore_find_online_sibling(%struct.amd_uncore* %20, i64 %21)
  store %struct.amd_uncore* %22, %struct.amd_uncore** %7, align 8
  %23 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %24 = load i64, i64* @amd_uncore_nb, align 8
  %25 = load i32, i32* %2, align 4
  %26 = call %struct.amd_uncore** @per_cpu_ptr(i64 %24, i32 %25)
  store %struct.amd_uncore* %23, %struct.amd_uncore** %26, align 8
  br label %27

27:                                               ; preds = %10, %1
  %28 = load i64, i64* @amd_uncore_llc, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load i64, i64* @amd_uncore_llc, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call %struct.amd_uncore** @per_cpu_ptr(i64 %31, i32 %32)
  %34 = load %struct.amd_uncore*, %struct.amd_uncore** %33, align 8
  store %struct.amd_uncore* %34, %struct.amd_uncore** %7, align 8
  %35 = load i32, i32* @cpu_llc_id, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @per_cpu(i32 %35, i32 %36)
  %38 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %39 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %41 = load i64, i64* @amd_uncore_llc, align 8
  %42 = call %struct.amd_uncore* @amd_uncore_find_online_sibling(%struct.amd_uncore* %40, i64 %41)
  store %struct.amd_uncore* %42, %struct.amd_uncore** %7, align 8
  %43 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %44 = load i64, i64* @amd_uncore_llc, align 8
  %45 = load i32, i32* %2, align 4
  %46 = call %struct.amd_uncore** @per_cpu_ptr(i64 %44, i32 %45)
  store %struct.amd_uncore* %43, %struct.amd_uncore** %46, align 8
  br label %47

47:                                               ; preds = %30, %27
  ret i32 0
}

declare dso_local %struct.amd_uncore** @per_cpu_ptr(i64, i32) #1

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.amd_uncore* @amd_uncore_find_online_sibling(%struct.amd_uncore*, i64) #1

declare dso_local i32 @per_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
