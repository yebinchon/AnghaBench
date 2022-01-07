; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_copy_shared_memory_output.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_copy_shared_memory_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_output = type { i64, i32, i64, i32 }
%struct.forth_request = type { i32, i64, i64* }

@MAX_SHARED_MEMORY_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global %struct.forth_output* null, align 8
@errno = common dso_local global i32 0, align 4
@last_mmap_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"copy_shared_memory_output, mmap failed\0A%m\0A\00", align 1
@mmap_errors = common dso_local global i32 0, align 4
@forth_output_errors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@max_task_time = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@result_living_time = common dso_local global i64 0, align 8
@all_results_memory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.forth_request*)* @copy_shared_memory_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_shared_memory_output(i64 %0, i32 %1, %struct.forth_request* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.forth_request*, align 8
  %7 = alloca %struct.forth_output*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.forth_request* %2, %struct.forth_request** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %118

11:                                               ; preds = %3
  %12 = load i32, i32* @MAX_SHARED_MEMORY_SIZE, align 4
  %13 = load i32, i32* @PROT_READ, align 4
  %14 = load i32, i32* @MAP_SHARED, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @mmap(i32* null, i32 %12, i32 %13, i32 %14, i32 %15, i32 0)
  %17 = inttoptr i64 %16 to %struct.forth_output*
  store %struct.forth_output* %17, %struct.forth_output** %7, align 8
  %18 = load %struct.forth_output*, %struct.forth_output** %7, align 8
  %19 = load %struct.forth_output*, %struct.forth_output** @MAP_FAILED, align 8
  %20 = icmp eq %struct.forth_output* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* @last_mmap_errno, align 4
  store %struct.forth_output* null, %struct.forth_output** %7, align 8
  %23 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @mmap_errors, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @mmap_errors, align 4
  br label %26

26:                                               ; preds = %21, %11
  %27 = load %struct.forth_output*, %struct.forth_output** %7, align 8
  %28 = icmp ne %struct.forth_output* %27, null
  br i1 %28, label %29, label %118

29:                                               ; preds = %26
  %30 = load %struct.forth_output*, %struct.forth_output** %7, align 8
  %31 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = load %struct.forth_output*, %struct.forth_output** %7, align 8
  %37 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.forth_output*, %struct.forth_output** %7, align 8
  %42 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 4
  br i1 %44, label %45, label %57

45:                                               ; preds = %40, %35, %29
  %46 = load i32, i32* @forth_output_errors, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @forth_output_errors, align 4
  %48 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %49 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = call i64* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %52 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %51, i32 0, i32 2
  store i64* %50, i64** %52, align 8
  %53 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %54 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = call i32 @assert(i64* %55)
  br label %102

57:                                               ; preds = %40
  %58 = load i64, i64* @max_task_time, align 8
  %59 = load %struct.forth_output*, %struct.forth_output** %7, align 8
  %60 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.forth_output*, %struct.forth_output** %7, align 8
  %65 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* @max_task_time, align 8
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.forth_output*, %struct.forth_output** %7, align 8
  %69 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %72 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %74 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  %77 = call i64* @malloc(i32 %76)
  %78 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %79 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %78, i32 0, i32 2
  store i64* %77, i64** %79, align 8
  %80 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %81 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = call i32 @assert(i64* %82)
  %84 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %85 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = load %struct.forth_output*, %struct.forth_output** %7, align 8
  %88 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %91 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @memcpy(i64* %86, i32 %89, i32 %92)
  %94 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %95 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %98 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %96, i64 %100
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %67, %45
  %103 = load i64, i64* @now, align 8
  %104 = load i64, i64* @result_living_time, align 8
  %105 = add nsw i64 %103, %104
  %106 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %107 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.forth_output*, %struct.forth_output** %7, align 8
  %109 = load i32, i32* @MAX_SHARED_MEMORY_SIZE, align 4
  %110 = call i32 @munmap(%struct.forth_output* %108, i32 %109)
  %111 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %112 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  %115 = load i32, i32* @all_results_memory, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* @all_results_memory, align 4
  %117 = call i32 (...) @forth_request_run_output_gc()
  br label %118

118:                                              ; preds = %10, %102, %26
  ret void
}

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i64* @strdup(i8*) #1

declare dso_local i32 @assert(i64*) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @munmap(%struct.forth_output*, i32) #1

declare dso_local i32 @forth_request_run_output_gc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
