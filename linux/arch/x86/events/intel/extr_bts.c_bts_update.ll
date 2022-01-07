; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_bts_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_bts_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bts_ctx = type { i32 }
%struct.debug_store = type { i64, i64, i64 }
%struct.TYPE_2__ = type { %struct.debug_store* }
%struct.bts_buffer = type { i32, i32, i32, i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_AUX_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bts_ctx*)* @bts_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bts_update(%struct.bts_ctx* %0) #0 {
  %2 = alloca %struct.bts_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.debug_store*, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca %struct.bts_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bts_ctx* %0, %struct.bts_ctx** %2, align 8
  %10 = call i32 (...) @raw_smp_processor_id()
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @cpu_hw_events, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.debug_store* @per_cpu(i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.debug_store* %13, %struct.debug_store** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %16 = load %struct.debug_store*, %struct.debug_store** %15, align 8
  store %struct.debug_store* %16, %struct.debug_store** %4, align 8
  %17 = load %struct.bts_ctx*, %struct.bts_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %17, i32 0, i32 0
  %19 = call %struct.bts_buffer* @perf_get_aux(i32* %18)
  store %struct.bts_buffer* %19, %struct.bts_buffer** %6, align 8
  %20 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %21 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %24 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  store i64 %26, i64* %7, align 8
  %27 = load %struct.bts_buffer*, %struct.bts_buffer** %6, align 8
  %28 = icmp ne %struct.bts_buffer* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %76

30:                                               ; preds = %1
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.bts_buffer*, %struct.bts_buffer** %6, align 8
  %33 = load %struct.bts_buffer*, %struct.bts_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @bts_buffer_offset(%struct.bts_buffer* %32, i32 %35)
  %37 = add i64 %31, %36
  store i64 %37, i64* %9, align 8
  %38 = load %struct.bts_buffer*, %struct.bts_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %38, i32 0, i32 2
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @local_xchg(i32* %39, i64 %40)
  store i64 %41, i64* %8, align 8
  %42 = load %struct.bts_buffer*, %struct.bts_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %30
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %76

51:                                               ; preds = %46
  %52 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %53 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %56 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp uge i64 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.bts_ctx*, %struct.bts_ctx** %2, align 8
  %61 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* @PERF_AUX_FLAG_TRUNCATED, align 4
  %63 = call i32 @perf_aux_output_flag(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %51
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = sub i64 %65, %66
  %68 = load %struct.bts_buffer*, %struct.bts_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %68, i32 0, i32 0
  %70 = call i32 @local_add(i64 %67, i32* %69)
  br label %76

71:                                               ; preds = %30
  %72 = load %struct.bts_buffer*, %struct.bts_buffer** %6, align 8
  %73 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %72, i32 0, i32 0
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @local_set(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %29, %50, %71, %64
  ret void
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.debug_store* @per_cpu(i32, i32) #1

declare dso_local %struct.bts_buffer* @perf_get_aux(i32*) #1

declare dso_local i64 @bts_buffer_offset(%struct.bts_buffer*, i32) #1

declare dso_local i64 @local_xchg(i32*, i64) #1

declare dso_local i32 @perf_aux_output_flag(i32*, i32) #1

declare dso_local i32 @local_add(i64, i32*) #1

declare dso_local i32 @local_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
