; ModuleID = '/home/carl/AnghaBench/libgit2/fuzzers/extr_download_refs_fuzzer.c_fuzzer_stream_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/fuzzers/extr_download_refs_fuzzer.c_fuzzer_stream_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuzzer_stream = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fuzzer_buffer = type { i64, i64 }

@fuzzer_stream_read = common dso_local global i32 0, align 4
@fuzzer_stream_write = common dso_local global i32 0, align 4
@fuzzer_stream_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuzzer_stream**, %struct.fuzzer_buffer*)* @fuzzer_stream_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzer_stream_new(%struct.fuzzer_stream** %0, %struct.fuzzer_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fuzzer_stream**, align 8
  %5 = alloca %struct.fuzzer_buffer*, align 8
  %6 = alloca %struct.fuzzer_stream*, align 8
  store %struct.fuzzer_stream** %0, %struct.fuzzer_stream*** %4, align 8
  store %struct.fuzzer_buffer* %1, %struct.fuzzer_buffer** %5, align 8
  %7 = call %struct.fuzzer_stream* @malloc(i32 32)
  store %struct.fuzzer_stream* %7, %struct.fuzzer_stream** %6, align 8
  %8 = load %struct.fuzzer_stream*, %struct.fuzzer_stream** %6, align 8
  %9 = icmp ne %struct.fuzzer_stream* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %40

11:                                               ; preds = %2
  %12 = load %struct.fuzzer_buffer*, %struct.fuzzer_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.fuzzer_buffer, %struct.fuzzer_buffer* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.fuzzer_stream*, %struct.fuzzer_stream** %6, align 8
  %16 = getelementptr inbounds %struct.fuzzer_stream, %struct.fuzzer_stream* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load %struct.fuzzer_buffer*, %struct.fuzzer_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.fuzzer_buffer, %struct.fuzzer_buffer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fuzzer_buffer*, %struct.fuzzer_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.fuzzer_buffer, %struct.fuzzer_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.fuzzer_stream*, %struct.fuzzer_stream** %6, align 8
  %25 = getelementptr inbounds %struct.fuzzer_stream, %struct.fuzzer_stream* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* @fuzzer_stream_read, align 4
  %27 = load %struct.fuzzer_stream*, %struct.fuzzer_stream** %6, align 8
  %28 = getelementptr inbounds %struct.fuzzer_stream, %struct.fuzzer_stream* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @fuzzer_stream_write, align 4
  %31 = load %struct.fuzzer_stream*, %struct.fuzzer_stream** %6, align 8
  %32 = getelementptr inbounds %struct.fuzzer_stream, %struct.fuzzer_stream* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @fuzzer_stream_free, align 4
  %35 = load %struct.fuzzer_stream*, %struct.fuzzer_stream** %6, align 8
  %36 = getelementptr inbounds %struct.fuzzer_stream, %struct.fuzzer_stream* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.fuzzer_stream*, %struct.fuzzer_stream** %6, align 8
  %39 = load %struct.fuzzer_stream**, %struct.fuzzer_stream*** %4, align 8
  store %struct.fuzzer_stream* %38, %struct.fuzzer_stream** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %11, %10
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.fuzzer_stream* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
