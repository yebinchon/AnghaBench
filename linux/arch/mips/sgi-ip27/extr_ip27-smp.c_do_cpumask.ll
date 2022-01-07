; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-smp.c_do_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-smp.c_do_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }

@do_cpumask.tot_cpus_found = internal global i32 0, align 4
@KLTYPE_IP27 = common dso_local global i32 0, align 4
@KLSTRUCT_CPU = common dso_local global i32 0, align 4
@cpuid_to_compact_node = common dso_local global i32* null, align 8
@KLINFO_ENABLE = common dso_local global i32 0, align 4
@NR_CPUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @do_cpumask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cpumask(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @KL_CONFIG_INFO(i32 %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_12__*
  %14 = load i32, i32* @KLTYPE_IP27, align 4
  %15 = call %struct.TYPE_12__* @find_lboard(%struct.TYPE_12__* %13, i32 %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %7, align 8
  br label %16

16:                                               ; preds = %87, %3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = load i32, i32* @KLSTRUCT_CPU, align 4
  %19 = call i64 @find_first_component(%struct.TYPE_12__* %17, i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %8, align 8
  br label %21

21:                                               ; preds = %70, %16
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = icmp ne %struct.TYPE_13__* %22, null
  br i1 %23, label %24, label %77

24:                                               ; preds = %21
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = call i64 @get_actual_nasid(%struct.TYPE_12__* %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = load i32*, i32** @cpuid_to_compact_node, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %24
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i64, i64* %10, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @KLINFO_ENABLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %48
  %57 = load i32, i32* @do_cpumask.tot_cpus_found, align 4
  %58 = load i32, i32* @NR_CPUS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @set_cpu_possible(i64 %61, i32 1)
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* @do_cpumask.tot_cpus_found, align 4
  %65 = call i32 @alloc_cpupda(i64 %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @do_cpumask.tot_cpus_found, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @do_cpumask.tot_cpus_found, align 4
  br label %70

70:                                               ; preds = %60, %56, %48
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = bitcast %struct.TYPE_13__* %72 to i32*
  %74 = load i32, i32* @KLSTRUCT_CPU, align 4
  %75 = call i64 @find_component(%struct.TYPE_12__* %71, i32* %73, i32 %74)
  %76 = inttoptr i64 %75 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %8, align 8
  br label %21

77:                                               ; preds = %21
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = call %struct.TYPE_12__* @KLCF_NEXT(%struct.TYPE_12__* %78)
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %7, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = icmp ne %struct.TYPE_12__* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %90

83:                                               ; preds = %77
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = load i32, i32* @KLTYPE_IP27, align 4
  %86 = call %struct.TYPE_12__* @find_lboard(%struct.TYPE_12__* %84, i32 %85)
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %7, align 8
  br label %87

87:                                               ; preds = %83
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = icmp ne %struct.TYPE_12__* %88, null
  br i1 %89, label %16, label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_12__* @find_lboard(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @KL_CONFIG_INFO(i32) #1

declare dso_local i64 @find_first_component(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @get_actual_nasid(%struct.TYPE_12__*) #1

declare dso_local i32 @set_cpu_possible(i64, i32) #1

declare dso_local i32 @alloc_cpupda(i64, i32) #1

declare dso_local i64 @find_component(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local %struct.TYPE_12__* @KLCF_NEXT(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
