; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_read_chunk.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_buffer = type { i32 }
%struct.strbuf = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.line_buffer*, i64*, %struct.strbuf*, i64)* @read_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_chunk(%struct.line_buffer* %0, i64* %1, %struct.strbuf* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.line_buffer*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i64, align 8
  store %struct.line_buffer* %0, %struct.line_buffer** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.strbuf* %2, %struct.strbuf** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %16 = call i32 @strbuf_reset(%struct.strbuf* %15)
  %17 = load i64, i64* %9, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %17, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load %struct.line_buffer*, %struct.line_buffer** %6, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @buffer_read_binary(%struct.line_buffer* %22, %struct.strbuf* %23, i64 %24)
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21, %4
  %29 = load %struct.line_buffer*, %struct.line_buffer** %6, align 8
  %30 = call i32 @error_short_read(%struct.line_buffer* %29)
  store i32 %30, i32* %5, align 4
  br label %38

31:                                               ; preds = %21
  %32 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, %34
  store i64 %37, i64* %35, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i64 @buffer_read_binary(%struct.line_buffer*, %struct.strbuf*, i64) #1

declare dso_local i32 @error_short_read(%struct.line_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
