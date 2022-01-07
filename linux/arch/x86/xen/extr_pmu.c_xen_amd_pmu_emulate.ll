; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_xen_amd_pmu_emulate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_xen_amd_pmu_emulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_pmu_amd_ctxt = type { i32 }
%struct.xen_pmu_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xen_pmu_amd_ctxt }

@XENPMU_IRQ_PROCESSING = common dso_local global i32 0, align 4
@k7_counters_mirrored = common dso_local global i64 0, align 8
@MSR_K7_EVNTSEL0 = common dso_local global i32 0, align 4
@MSR_K7_PERFCTR3 = common dso_local global i32 0, align 4
@amd_num_counters = common dso_local global i32 0, align 4
@amd_ctrls_base = common dso_local global i32 0, align 4
@ctrls = common dso_local global i32 0, align 4
@amd_counters_base = common dso_local global i32 0, align 4
@counters = common dso_local global i32 0, align 4
@amd_msr_step = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @xen_amd_pmu_emulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_amd_pmu_emulate(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xen_pmu_amd_ctxt*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.xen_pmu_data*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = call %struct.xen_pmu_data* (...) @get_xenpmu_data()
  store %struct.xen_pmu_data* %16, %struct.xen_pmu_data** %14, align 8
  %17 = call i32 (...) @get_xenpmu_flags()
  store i32 %17, i32* %15, align 4
  %18 = load %struct.xen_pmu_data*, %struct.xen_pmu_data** %14, align 8
  %19 = icmp ne %struct.xen_pmu_data* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* @XENPMU_IRQ_PROCESSING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %3
  store i32 0, i32* %4, align 4
  br label %103

26:                                               ; preds = %20
  %27 = load i64, i64* @k7_counters_mirrored, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MSR_K7_EVNTSEL0, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @MSR_K7_PERFCTR3, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @get_fam15h_addr(i32 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %33, %29, %26
  %41 = load %struct.xen_pmu_data*, %struct.xen_pmu_data** %14, align 8
  %42 = getelementptr inbounds %struct.xen_pmu_data, %struct.xen_pmu_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store %struct.xen_pmu_amd_ctxt* %44, %struct.xen_pmu_amd_ctxt** %11, align 8
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %84, %40
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @amd_num_counters, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @amd_ctrls_base, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.xen_pmu_amd_ctxt*, %struct.xen_pmu_amd_ctxt** %11, align 8
  %57 = load i32, i32* @ctrls, align 4
  %58 = call i32* @field_offset(%struct.xen_pmu_amd_ctxt* %56, i32 %57)
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %8, align 8
  br label %87

63:                                               ; preds = %49
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @amd_counters_base, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %65, %66
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.xen_pmu_amd_ctxt*, %struct.xen_pmu_amd_ctxt** %11, align 8
  %71 = load i32, i32* @counters, align 4
  %72 = call i32* @field_offset(%struct.xen_pmu_amd_ctxt* %70, i32 %71)
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32* %76, i32** %8, align 8
  br label %87

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* @amd_msr_step, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %45

87:                                               ; preds = %69, %55, %45
  %88 = load i32*, i32** %8, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  store i32 %95, i32* %96, align 4
  br label %101

97:                                               ; preds = %90
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %93
  store i32 1, i32* %4, align 4
  br label %103

102:                                              ; preds = %87
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %101, %25
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.xen_pmu_data* @get_xenpmu_data(...) #1

declare dso_local i32 @get_xenpmu_flags(...) #1

declare dso_local i32 @get_fam15h_addr(i32) #1

declare dso_local i32* @field_offset(%struct.xen_pmu_amd_ctxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
