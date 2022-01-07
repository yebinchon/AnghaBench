; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_list_apply_to_blob.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_list_apply_to_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_stream = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_filter_list_apply_to_blob(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.buf_stream, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @buf_stream_init(%struct.buf_stream* %8, i32* %10)
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds %struct.buf_stream, %struct.buf_stream* %8, i32 0, i32 1
  %15 = call i32 @git_filter_list_stream_blob(i32* %12, i32* %13, i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.buf_stream, %struct.buf_stream* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %17
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @buf_stream_init(%struct.buf_stream*, i32*) #1

declare dso_local i32 @git_filter_list_stream_blob(i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
