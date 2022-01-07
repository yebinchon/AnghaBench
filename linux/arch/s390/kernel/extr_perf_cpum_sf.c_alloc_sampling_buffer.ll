; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_alloc_sampling_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_alloc_sampling_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sf_buffer = type { i64*, i32, i64*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sfdbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"alloc_sampling_buffer: realloc_sampling_buffer failed with rc=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"alloc_sampling_buffer: tear=%p dear=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sf_buffer*, i64)* @alloc_sampling_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_sampling_buffer(%struct.sf_buffer* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sf_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sf_buffer* %0, %struct.sf_buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.sf_buffer*, %struct.sf_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i64 @get_zeroed_page(i32 %15)
  %17 = inttoptr i64 %16 to i64*
  %18 = load %struct.sf_buffer*, %struct.sf_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %18, i32 0, i32 0
  store i64* %17, i64** %19, align 8
  %20 = load %struct.sf_buffer*, %struct.sf_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %14
  %28 = load %struct.sf_buffer*, %struct.sf_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.sf_buffer*, %struct.sf_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = load %struct.sf_buffer*, %struct.sf_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.sf_buffer*, %struct.sf_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %35, i32 0, i32 2
  store i64* %34, i64** %36, align 8
  %37 = load %struct.sf_buffer*, %struct.sf_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = bitcast i64* %39 to i8*
  %41 = ptrtoint i8* %40 to i64
  %42 = add i64 %41, 1
  %43 = load %struct.sf_buffer*, %struct.sf_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  store i64 %42, i64* %45, align 8
  %46 = load %struct.sf_buffer*, %struct.sf_buffer** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @realloc_sampling_buffer(%struct.sf_buffer* %46, i64 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %27
  %53 = load %struct.sf_buffer*, %struct.sf_buffer** %4, align 8
  %54 = call i32 @free_sampling_buffer(%struct.sf_buffer* %53)
  %55 = load i32, i32* @sfdbg, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i32, i32, i8*, ...) @debug_sprintf_event(i32 %55, i32 4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %69

58:                                               ; preds = %27
  %59 = load i32, i32* @sfdbg, align 4
  %60 = load %struct.sf_buffer*, %struct.sf_buffer** %4, align 8
  %61 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.sf_buffer*, %struct.sf_buffer** %4, align 8
  %64 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 (i32, i32, i8*, ...) @debug_sprintf_event(i32 %59, i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64* %62, i8* %67)
  br label %69

69:                                               ; preds = %58, %52
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %24, %11
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @realloc_sampling_buffer(%struct.sf_buffer*, i64, i32) #1

declare dso_local i32 @free_sampling_buffer(%struct.sf_buffer*) #1

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
