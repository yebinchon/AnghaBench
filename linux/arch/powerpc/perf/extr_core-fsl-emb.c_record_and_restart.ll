; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-fsl-emb.c_record_and_restart.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-fsl-emb.c_record_and_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i64, i32, i32, i32 }
%struct.pt_regs = type { i32 }
%struct.perf_sample_data = type { i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i64, %struct.pt_regs*)* @record_and_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_and_restart(%struct.perf_event* %0, i64 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.perf_sample_data, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PERF_HES_STOPPED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @write_pmc(i32 %28, i64 0)
  br label %112

30:                                               ; preds = %3
  %31 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = call i64 @local64_read(i32* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %35, %36
  %38 = and i64 %37, 4294967295
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 1
  %42 = call i32 @local64_add(i64 %39, i32* %41)
  store i64 0, i64* %5, align 8
  %43 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = call i64 @local64_read(i32* %45)
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 %46, %47
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %30
  %52 = load i64, i64* %10, align 8
  %53 = icmp ule i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ule i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %60, %54
  store i32 1, i32* %11, align 4
  %63 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %64 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %68 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i64 %66, i64* %69, align 8
  br label %70

70:                                               ; preds = %62, %51
  %71 = load i64, i64* %10, align 8
  %72 = icmp ult i64 %71, 2147483648
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* %10, align 8
  %75 = sub i64 2147483648, %74
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %30
  %78 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %79 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @write_pmc(i32 %81, i64 %82)
  %84 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %85 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @local64_set(i32* %86, i64 %87)
  %89 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %90 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @local64_set(i32* %91, i64 %92)
  %94 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %95 = call i32 @perf_event_update_userpage(%struct.perf_event* %94)
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %77
  %99 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %100 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %12, i32 0, i64 %102)
  %104 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %105 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %106 = call i64 @perf_event_overflow(%struct.perf_event* %104, %struct.perf_sample_data* %12, %struct.pt_regs* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %110 = call i32 @fsl_emb_pmu_stop(%struct.perf_event* %109, i32 0)
  br label %111

111:                                              ; preds = %108, %98
  br label %112

112:                                              ; preds = %24, %111, %77
  ret void
}

declare dso_local i32 @write_pmc(i32, i64) #1

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i32 @local64_add(i64, i32*) #1

declare dso_local i32 @local64_set(i32*, i64) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i32, i64) #1

declare dso_local i64 @perf_event_overflow(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @fsl_emb_pmu_stop(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
