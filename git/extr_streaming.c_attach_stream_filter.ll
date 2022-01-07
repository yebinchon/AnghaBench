; ModuleID = '/home/carl/AnghaBench/git/extr_streaming.c_attach_stream_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_streaming.c_attach_stream_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_istream = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.filtered_istream }
%struct.filtered_istream = type { i64, i64, i64, i64, i64, %struct.stream_filter*, %struct.git_istream* }
%struct.stream_filter = type { i32 }

@filtered_vtbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.git_istream* (%struct.git_istream*, %struct.stream_filter*)* @attach_stream_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.git_istream* @attach_stream_filter(%struct.git_istream* %0, %struct.stream_filter* %1) #0 {
  %3 = alloca %struct.git_istream*, align 8
  %4 = alloca %struct.stream_filter*, align 8
  %5 = alloca %struct.git_istream*, align 8
  %6 = alloca %struct.filtered_istream*, align 8
  store %struct.git_istream* %0, %struct.git_istream** %3, align 8
  store %struct.stream_filter* %1, %struct.stream_filter** %4, align 8
  %7 = call %struct.git_istream* @xmalloc(i32 72)
  store %struct.git_istream* %7, %struct.git_istream** %5, align 8
  %8 = load %struct.git_istream*, %struct.git_istream** %5, align 8
  %9 = getelementptr inbounds %struct.git_istream, %struct.git_istream* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.filtered_istream* %10, %struct.filtered_istream** %6, align 8
  %11 = load %struct.git_istream*, %struct.git_istream** %5, align 8
  %12 = getelementptr inbounds %struct.git_istream, %struct.git_istream* %11, i32 0, i32 1
  store i32* @filtered_vtbl, i32** %12, align 8
  %13 = load %struct.git_istream*, %struct.git_istream** %3, align 8
  %14 = load %struct.filtered_istream*, %struct.filtered_istream** %6, align 8
  %15 = getelementptr inbounds %struct.filtered_istream, %struct.filtered_istream* %14, i32 0, i32 6
  store %struct.git_istream* %13, %struct.git_istream** %15, align 8
  %16 = load %struct.stream_filter*, %struct.stream_filter** %4, align 8
  %17 = load %struct.filtered_istream*, %struct.filtered_istream** %6, align 8
  %18 = getelementptr inbounds %struct.filtered_istream, %struct.filtered_istream* %17, i32 0, i32 5
  store %struct.stream_filter* %16, %struct.stream_filter** %18, align 8
  %19 = load %struct.filtered_istream*, %struct.filtered_istream** %6, align 8
  %20 = getelementptr inbounds %struct.filtered_istream, %struct.filtered_istream* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.filtered_istream*, %struct.filtered_istream** %6, align 8
  %22 = getelementptr inbounds %struct.filtered_istream, %struct.filtered_istream* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.filtered_istream*, %struct.filtered_istream** %6, align 8
  %24 = getelementptr inbounds %struct.filtered_istream, %struct.filtered_istream* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.filtered_istream*, %struct.filtered_istream** %6, align 8
  %26 = getelementptr inbounds %struct.filtered_istream, %struct.filtered_istream* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.filtered_istream*, %struct.filtered_istream** %6, align 8
  %28 = getelementptr inbounds %struct.filtered_istream, %struct.filtered_istream* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.git_istream*, %struct.git_istream** %5, align 8
  %30 = getelementptr inbounds %struct.git_istream, %struct.git_istream* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load %struct.git_istream*, %struct.git_istream** %5, align 8
  ret %struct.git_istream* %31
}

declare dso_local %struct.git_istream* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
