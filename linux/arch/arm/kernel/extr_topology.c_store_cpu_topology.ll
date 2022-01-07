; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_topology.c_store_cpu_topology.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_topology.c_store_cpu_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_topology = type { i32, i32, i32 }

@cpu_topology = common dso_local global %struct.cpu_topology* null, align 8
@MPIDR_SMP_BITMASK = common dso_local global i32 0, align 4
@MPIDR_SMP_VALUE = common dso_local global i32 0, align 4
@MPIDR_MT_BITMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"CPU%u: thread %d, cpu %d, socket %d, mpidr %x\0A\00", align 1

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
  br label %89

14:                                               ; preds = %1
  %15 = call i32 (...) @read_cpuid_mpidr()
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MPIDR_SMP_BITMASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @MPIDR_SMP_VALUE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MPIDR_MT_BITMASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = call i8* @MPIDR_AFFINITY_LEVEL(i32 %27, i32 0)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %31 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i8* @MPIDR_AFFINITY_LEVEL(i32 %32, i32 1)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %36 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i8* @MPIDR_AFFINITY_LEVEL(i32 %37, i32 2)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %41 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %55

42:                                               ; preds = %21
  %43 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %44 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i8* @MPIDR_AFFINITY_LEVEL(i32 %45, i32 0)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %49 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i8* @MPIDR_AFFINITY_LEVEL(i32 %50, i32 1)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %54 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %42, %26
  br label %63

56:                                               ; preds = %14
  %57 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %58 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 4
  %59 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %60 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %62 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %61, i32 0, i32 2
  store i32 -1, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %55
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @update_siblings_masks(i32 %64)
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @update_cpu_capacity(i32 %66)
  %68 = load i32, i32* %2, align 4
  %69 = load %struct.cpu_topology*, %struct.cpu_topology** @cpu_topology, align 8
  %70 = load i32, i32* %2, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %69, i64 %71
  %73 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cpu_topology*, %struct.cpu_topology** @cpu_topology, align 8
  %76 = load i32, i32* %2, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %75, i64 %77
  %79 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cpu_topology*, %struct.cpu_topology** @cpu_topology, align 8
  %82 = load i32, i32* %2, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %81, i64 %83
  %85 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %74, i32 %80, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %63, %13
  ret void
}

declare dso_local i32 @read_cpuid_mpidr(...) #1

declare dso_local i8* @MPIDR_AFFINITY_LEVEL(i32, i32) #1

declare dso_local i32 @update_siblings_masks(i32) #1

declare dso_local i32 @update_cpu_capacity(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
