; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_free_sampling_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_free_sampling_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sf_buffer = type { i64* }

@sfdbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"free_sampling_buffer: freed sdbt=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sf_buffer*)* @free_sampling_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_sampling_buffer(%struct.sf_buffer* %0) #0 {
  %2 = alloca %struct.sf_buffer*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store %struct.sf_buffer* %0, %struct.sf_buffer** %2, align 8
  %5 = load %struct.sf_buffer*, %struct.sf_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %66

10:                                               ; preds = %1
  %11 = load %struct.sf_buffer*, %struct.sf_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %3, align 8
  %14 = load i64*, i64** %3, align 8
  store i64* %14, i64** %4, align 8
  br label %15

15:                                               ; preds = %10, %57
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64*, i64** %3, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %15
  br label %58

23:                                               ; preds = %19
  %24 = load i64*, i64** %4, align 8
  %25 = call i64 @is_link_entry(i64* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load i64*, i64** %4, align 8
  %29 = call i64* @get_next_sdbt(i64* %28)
  store i64* %29, i64** %4, align 8
  %30 = load i64*, i64** %3, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i64*, i64** %3, align 8
  %34 = ptrtoint i64* %33 to i64
  %35 = call i32 @free_page(i64 %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i64*, i64** %4, align 8
  %38 = load %struct.sf_buffer*, %struct.sf_buffer** %2, align 8
  %39 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = icmp eq i64* %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %58

43:                                               ; preds = %36
  %44 = load i64*, i64** %4, align 8
  store i64* %44, i64** %3, align 8
  br label %45

45:                                               ; preds = %43
  br label %57

46:                                               ; preds = %23
  %47 = load i64*, i64** %4, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64*, i64** %4, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @free_page(i64 %52)
  %54 = load i64*, i64** %4, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %4, align 8
  br label %56

56:                                               ; preds = %50, %46
  br label %57

57:                                               ; preds = %56, %45
  br label %15

58:                                               ; preds = %42, %22
  %59 = load i32, i32* @sfdbg, align 4
  %60 = load %struct.sf_buffer*, %struct.sf_buffer** %2, align 8
  %61 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = call i32 @debug_sprintf_event(i32 %59, i32 5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64* %62)
  %64 = load %struct.sf_buffer*, %struct.sf_buffer** %2, align 8
  %65 = call i32 @memset(%struct.sf_buffer* %64, i32 0, i32 8)
  br label %66

66:                                               ; preds = %58, %9
  ret void
}

declare dso_local i64 @is_link_entry(i64*) #1

declare dso_local i64* @get_next_sdbt(i64*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*, i64*) #1

declare dso_local i32 @memset(%struct.sf_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
