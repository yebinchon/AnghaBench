; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_realloc_sampling_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_realloc_sampling_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sf_buffer = type { i64, i64*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@sfdbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"realloc_sampling_buffer: sampling buffer is not linked: origin=%ptail=%p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"realloc_sampling_buffer: new buffer settings: sdbt=%lu sdb=%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sf_buffer*, i64, i32)* @realloc_sampling_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realloc_sampling_buffer(%struct.sf_buffer* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sf_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store %struct.sf_buffer* %0, %struct.sf_buffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sf_buffer*, %struct.sf_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.sf_buffer*, %struct.sf_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %119

24:                                               ; preds = %16
  %25 = load %struct.sf_buffer*, %struct.sf_buffer** %5, align 8
  %26 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = call i32 @is_link_entry(i64* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %119

33:                                               ; preds = %24
  %34 = load %struct.sf_buffer*, %struct.sf_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %11, align 8
  %37 = load %struct.sf_buffer*, %struct.sf_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = call i64 @get_next_sdbt(i64* %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load i32, i32* @sfdbg, align 4
  %45 = load %struct.sf_buffer*, %struct.sf_buffer** %5, align 8
  %46 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load i64*, i64** %11, align 8
  %50 = bitcast i64* %49 to i8*
  %51 = call i32 @debug_sprintf_event(i32 %44, i32 3, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %119

54:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %98, %54
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %6, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %101

60:                                               ; preds = %55
  %61 = load i64*, i64** %11, align 8
  %62 = call i64 @require_table_link(i64* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @get_zeroed_page(i32 %65)
  %67 = inttoptr i64 %66 to i64*
  store i64* %67, i64** %10, align 8
  %68 = load i64*, i64** %10, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %101

73:                                               ; preds = %64
  %74 = load %struct.sf_buffer*, %struct.sf_buffer** %5, align 8
  %75 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %75, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = bitcast i64* %78 to i8*
  %80 = ptrtoint i8* %79 to i64
  %81 = add i64 %80, 1
  %82 = load i64*, i64** %11, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i64*, i64** %10, align 8
  store i64* %83, i64** %11, align 8
  br label %84

84:                                               ; preds = %73, %60
  %85 = load i64*, i64** %11, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @alloc_sample_data_block(i64* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %101

91:                                               ; preds = %84
  %92 = load %struct.sf_buffer*, %struct.sf_buffer** %5, align 8
  %93 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %93, align 8
  %96 = load i64*, i64** %11, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %11, align 8
  br label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %55

101:                                              ; preds = %90, %70, %55
  %102 = load %struct.sf_buffer*, %struct.sf_buffer** %5, align 8
  %103 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  %106 = load i64*, i64** %11, align 8
  store i64 %105, i64* %106, align 8
  %107 = load i64*, i64** %11, align 8
  %108 = load %struct.sf_buffer*, %struct.sf_buffer** %5, align 8
  %109 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %108, i32 0, i32 1
  store i64* %107, i64** %109, align 8
  %110 = load i32, i32* @sfdbg, align 4
  %111 = load %struct.sf_buffer*, %struct.sf_buffer** %5, align 8
  %112 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.sf_buffer*, %struct.sf_buffer** %5, align 8
  %115 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @debug_sprintf_event(i32 %110, i32 4, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %113, i8* %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %101, %43, %30, %21
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @is_link_entry(i64*) #1

declare dso_local i64 @get_next_sdbt(i64*) #1

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*, i8*, i8*) #1

declare dso_local i64 @require_table_link(i64*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @alloc_sample_data_block(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
