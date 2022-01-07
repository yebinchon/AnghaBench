; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_topology.c_store_cpu_topology.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_topology.c_store_cpu_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_topology = type { i32, i32, i32 }

@cpu_topology = common dso_local global %struct.cpu_topology* null, align 8
@MPIDR_UP_BITMASK = common dso_local global i32 0, align 4
@MPIDR_MT_BITMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"CPU%u: cluster %d core %d thread %d mpidr %#016llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_cpu_topology(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpu_topology*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.cpu_topology*, %struct.cpu_topology** @cpu_topology, align 8
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %5, i64 %7
  store %struct.cpu_topology* %8, %struct.cpu_topology** %3, align 8
  %9 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %10 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %75

14:                                               ; preds = %1
  %15 = call i32 (...) @read_cpuid_mpidr()
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MPIDR_UP_BITMASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %78

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MPIDR_MT_BITMASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %27, i32 0)
  %29 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %30 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %31, i32 1)
  %33 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %34 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %35, i32 2)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %37, i32 3)
  %39 = shl i32 %38, 8
  %40 = or i32 %36, %39
  %41 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %42 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %62

43:                                               ; preds = %21
  %44 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %45 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %44, i32 0, i32 1
  store i32 -1, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %46, i32 0)
  %48 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %49 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %50, i32 1)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %52, i32 2)
  %54 = shl i32 %53, 8
  %55 = or i32 %51, %54
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %56, i32 3)
  %58 = shl i32 %57, 16
  %59 = or i32 %55, %58
  %60 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %61 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %43, %26
  %63 = load i32, i32* %2, align 4
  %64 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %65 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %68 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %71 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66, i32 %69, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %62, %13
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @update_siblings_masks(i32 %76)
  br label %78

78:                                               ; preds = %75, %20
  ret void
}

declare dso_local i32 @read_cpuid_mpidr(...) #1

declare dso_local i32 @MPIDR_AFFINITY_LEVEL(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @update_siblings_masks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
