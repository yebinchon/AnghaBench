; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_xen_intel_pmu_emulate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_xen_intel_pmu_emulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_pmu_intel_ctxt = type { i32, i32, i32, i32 }
%struct.xen_pmu_cntr_pair = type { i32, i32 }
%struct.xen_pmu_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xen_pmu_intel_ctxt }

@XENPMU_IRQ_PROCESSING = common dso_local global i32 0, align 4
@fixed_counters = common dso_local global i32 0, align 4
@arch_counters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32)* @xen_intel_pmu_emulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_intel_pmu_emulate(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.xen_pmu_intel_ctxt*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.xen_pmu_cntr_pair*, align 8
  %16 = alloca %struct.xen_pmu_data*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %18 = call %struct.xen_pmu_data* (...) @get_xenpmu_data()
  store %struct.xen_pmu_data* %18, %struct.xen_pmu_data** %16, align 8
  %19 = call i32 (...) @get_xenpmu_flags()
  store i32 %19, i32* %17, align 4
  %20 = load %struct.xen_pmu_data*, %struct.xen_pmu_data** %16, align 8
  %21 = icmp ne %struct.xen_pmu_data* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* @XENPMU_IRQ_PROCESSING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %5
  store i32 0, i32* %6, align 4
  br label %106

28:                                               ; preds = %22
  %29 = load %struct.xen_pmu_data*, %struct.xen_pmu_data** %16, align 8
  %30 = getelementptr inbounds %struct.xen_pmu_data, %struct.xen_pmu_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.xen_pmu_intel_ctxt* %32, %struct.xen_pmu_intel_ctxt** %13, align 8
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %46 [
    i32 132, label %34
    i32 131, label %37
    i32 133, label %40
    i32 134, label %43
  ]

34:                                               ; preds = %28
  %35 = load %struct.xen_pmu_intel_ctxt*, %struct.xen_pmu_intel_ctxt** %13, align 8
  %36 = getelementptr inbounds %struct.xen_pmu_intel_ctxt, %struct.xen_pmu_intel_ctxt* %35, i32 0, i32 3
  store i32* %36, i32** %12, align 8
  br label %79

37:                                               ; preds = %28
  %38 = load %struct.xen_pmu_intel_ctxt*, %struct.xen_pmu_intel_ctxt** %13, align 8
  %39 = getelementptr inbounds %struct.xen_pmu_intel_ctxt, %struct.xen_pmu_intel_ctxt* %38, i32 0, i32 0
  store i32* %39, i32** %12, align 8
  br label %79

40:                                               ; preds = %28
  %41 = load %struct.xen_pmu_intel_ctxt*, %struct.xen_pmu_intel_ctxt** %13, align 8
  %42 = getelementptr inbounds %struct.xen_pmu_intel_ctxt, %struct.xen_pmu_intel_ctxt* %41, i32 0, i32 2
  store i32* %42, i32** %12, align 8
  br label %79

43:                                               ; preds = %28
  %44 = load %struct.xen_pmu_intel_ctxt*, %struct.xen_pmu_intel_ctxt** %13, align 8
  %45 = getelementptr inbounds %struct.xen_pmu_intel_ctxt, %struct.xen_pmu_intel_ctxt* %44, i32 0, i32 1
  store i32* %45, i32** %12, align 8
  br label %79

46:                                               ; preds = %28
  %47 = load i32, i32* %9, align 4
  switch i32 %47, label %77 [
    i32 128, label %48
    i32 130, label %57
    i32 129, label %67
  ]

48:                                               ; preds = %46
  %49 = load %struct.xen_pmu_intel_ctxt*, %struct.xen_pmu_intel_ctxt** %13, align 8
  %50 = load i32, i32* @fixed_counters, align 4
  %51 = call i8* @field_offset(%struct.xen_pmu_intel_ctxt* %49, i32 %50)
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32* %56, i32** %12, align 8
  br label %78

57:                                               ; preds = %46
  %58 = load %struct.xen_pmu_intel_ctxt*, %struct.xen_pmu_intel_ctxt** %13, align 8
  %59 = load i32, i32* @arch_counters, align 4
  %60 = call i8* @field_offset(%struct.xen_pmu_intel_ctxt* %58, i32 %59)
  %61 = bitcast i8* %60 to %struct.xen_pmu_cntr_pair*
  store %struct.xen_pmu_cntr_pair* %61, %struct.xen_pmu_cntr_pair** %15, align 8
  %62 = load %struct.xen_pmu_cntr_pair*, %struct.xen_pmu_cntr_pair** %15, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.xen_pmu_cntr_pair, %struct.xen_pmu_cntr_pair* %62, i64 %64
  %66 = getelementptr inbounds %struct.xen_pmu_cntr_pair, %struct.xen_pmu_cntr_pair* %65, i32 0, i32 1
  store i32* %66, i32** %12, align 8
  br label %78

67:                                               ; preds = %46
  %68 = load %struct.xen_pmu_intel_ctxt*, %struct.xen_pmu_intel_ctxt** %13, align 8
  %69 = load i32, i32* @arch_counters, align 4
  %70 = call i8* @field_offset(%struct.xen_pmu_intel_ctxt* %68, i32 %69)
  %71 = bitcast i8* %70 to %struct.xen_pmu_cntr_pair*
  store %struct.xen_pmu_cntr_pair* %71, %struct.xen_pmu_cntr_pair** %15, align 8
  %72 = load %struct.xen_pmu_cntr_pair*, %struct.xen_pmu_cntr_pair** %15, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.xen_pmu_cntr_pair, %struct.xen_pmu_cntr_pair* %72, i64 %74
  %76 = getelementptr inbounds %struct.xen_pmu_cntr_pair, %struct.xen_pmu_cntr_pair* %75, i32 0, i32 0
  store i32* %76, i32** %12, align 8
  br label %78

77:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %106

78:                                               ; preds = %67, %57, %48
  br label %79

79:                                               ; preds = %78, %43, %40, %37, %34
  %80 = load i32*, i32** %12, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %105

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %8, align 8
  store i32 %87, i32* %88, align 4
  br label %104

89:                                               ; preds = %82
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %12, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 132
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %96, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.xen_pmu_intel_ctxt*, %struct.xen_pmu_intel_ctxt** %13, align 8
  %100 = getelementptr inbounds %struct.xen_pmu_intel_ctxt, %struct.xen_pmu_intel_ctxt* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %95, %89
  br label %104

104:                                              ; preds = %103, %85
  store i32 1, i32* %6, align 4
  br label %106

105:                                              ; preds = %79
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %104, %77, %27
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.xen_pmu_data* @get_xenpmu_data(...) #1

declare dso_local i32 @get_xenpmu_flags(...) #1

declare dso_local i8* @field_offset(%struct.xen_pmu_intel_ctxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
