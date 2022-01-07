; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_hw_collect_samples.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_hw_collect_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.hws_trailer_entry = type { i32 }
%struct.hws_basic_entry = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i64*, i64*)* @hw_collect_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_collect_samples(%struct.perf_event* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.hws_trailer_entry*, align 8
  %8 = alloca %struct.hws_basic_entry*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @trailer_entry_ptr(i64 %10)
  %12 = inttoptr i64 %11 to %struct.hws_trailer_entry*
  store %struct.hws_trailer_entry* %12, %struct.hws_trailer_entry** %7, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.hws_basic_entry*
  store %struct.hws_basic_entry* %15, %struct.hws_basic_entry** %8, align 8
  br label %16

16:                                               ; preds = %73, %3
  %17 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %18 = bitcast %struct.hws_basic_entry* %17 to i64*
  %19 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %20 = bitcast %struct.hws_trailer_entry* %19 to i64*
  %21 = icmp ult i64* %18, %20
  br i1 %21, label %22, label %78

22:                                               ; preds = %16
  %23 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %24 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %78

28:                                               ; preds = %22
  %29 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %30 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %31 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %30, i32 0, i32 0
  %32 = call i32 @SAMPL_RATE(i32* %31)
  %33 = call i32 @perf_event_count_update(%struct.perf_event* %29, i32 %32)
  %34 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %35 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %63

38:                                               ; preds = %28
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %38
  %43 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %44 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %49 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %54 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %55 = call i64 @perf_push_sample(%struct.perf_event* %53, %struct.hws_basic_entry* %54)
  %56 = load i64*, i64** %6, align 8
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %52, %47, %42
  br label %62

58:                                               ; preds = %38
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %58, %57
  br label %73

63:                                               ; preds = %28
  %64 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %65 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %66 = call i32 @debug_sample_entry(%struct.hws_basic_entry* %64, %struct.hws_trailer_entry* %65)
  %67 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %68 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %78

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %62
  %74 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %75 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %77 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %76, i32 1
  store %struct.hws_basic_entry* %77, %struct.hws_basic_entry** %8, align 8
  br label %16

78:                                               ; preds = %71, %27, %16
  ret void
}

declare dso_local i64 @trailer_entry_ptr(i64) #1

declare dso_local i32 @perf_event_count_update(%struct.perf_event*, i32) #1

declare dso_local i32 @SAMPL_RATE(i32*) #1

declare dso_local i64 @perf_push_sample(%struct.perf_event*, %struct.hws_basic_entry*) #1

declare dso_local i32 @debug_sample_entry(%struct.hws_basic_entry*, %struct.hws_trailer_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
