; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_list_apply_to_data.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_list_apply_to_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.buf_stream = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_filter_list_apply_to_data(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.buf_stream, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = call i32 @git_buf_sanitize(%struct.TYPE_8__* %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = call i32 @git_buf_sanitize(%struct.TYPE_8__* %12)
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @git_buf_attach_notowned(%struct.TYPE_8__* %17, i32 %20, i32 %23)
  store i32 0, i32* %4, align 4
  br label %40

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = call i32 @buf_stream_init(%struct.buf_stream* %8, %struct.TYPE_8__* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.buf_stream, %struct.buf_stream* %8, i32 0, i32 1
  %31 = call i32 @git_filter_list_stream_data(i32* %28, %struct.TYPE_8__* %29, i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %40

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.buf_stream, %struct.buf_stream* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %33, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @git_buf_sanitize(%struct.TYPE_8__*) #1

declare dso_local i32 @git_buf_attach_notowned(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @buf_stream_init(%struct.buf_stream*, %struct.TYPE_8__*) #1

declare dso_local i32 @git_filter_list_stream_data(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
