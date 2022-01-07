; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_string_buffer_extend.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_string_buffer_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_buffer = type { i32, i32, i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"tl_string_buffer_extend: b->size (%d)\0A\00", align 1
@TL_STRING_BUFFER_MIN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tl_buffer*)* @tl_string_buffer_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tl_string_buffer_extend(%struct.tl_buffer* %0) #0 {
  %2 = alloca %struct.tl_buffer*, align 8
  store %struct.tl_buffer* %0, %struct.tl_buffer** %2, align 8
  %3 = load i32, i32* @verbosity, align 4
  %4 = icmp sge i32 %3, 4
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = load %struct.tl_buffer*, %struct.tl_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %5, %1
  %12 = load %struct.tl_buffer*, %struct.tl_buffer** %2, align 8
  %13 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load i32, i32* @TL_STRING_BUFFER_MIN_SIZE, align 4
  %18 = load %struct.tl_buffer*, %struct.tl_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.tl_buffer*, %struct.tl_buffer** %2, align 8
  %21 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @malloc(i32 %22)
  %24 = load %struct.tl_buffer*, %struct.tl_buffer** %2, align 8
  %25 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tl_buffer*, %struct.tl_buffer** %2, align 8
  %27 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  br label %46

28:                                               ; preds = %11
  %29 = load %struct.tl_buffer*, %struct.tl_buffer** %2, align 8
  %30 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %30, align 8
  %33 = load %struct.tl_buffer*, %struct.tl_buffer** %2, align 8
  %34 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tl_buffer*, %struct.tl_buffer** %2, align 8
  %37 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @realloc(i32 %35, i32 %38)
  %40 = load %struct.tl_buffer*, %struct.tl_buffer** %2, align 8
  %41 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.tl_buffer*, %struct.tl_buffer** %2, align 8
  %43 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @assert(i32 %44)
  br label %46

46:                                               ; preds = %28, %16
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @realloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
