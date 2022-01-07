; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_sliding_window.c_read_to_fill_or_whine.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_sliding_window.c_read_to_fill_or_whine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_buffer = type { i32 }
%struct.strbuf = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.line_buffer*, %struct.strbuf*, i64)* @read_to_fill_or_whine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_to_fill_or_whine(%struct.line_buffer* %0, %struct.strbuf* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.line_buffer*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i64, align 8
  store %struct.line_buffer* %0, %struct.line_buffer** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.line_buffer*, %struct.line_buffer** %5, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %10, %13
  %15 = call i32 @buffer_read_binary(%struct.line_buffer* %8, %struct.strbuf* %9, i64 %14)
  %16 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.line_buffer*, %struct.line_buffer** %5, align 8
  %23 = call i32 @input_error(%struct.line_buffer* %22)
  store i32 %23, i32* %4, align 4
  br label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @buffer_read_binary(%struct.line_buffer*, %struct.strbuf*, i64) #1

declare dso_local i32 @input_error(%struct.line_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
