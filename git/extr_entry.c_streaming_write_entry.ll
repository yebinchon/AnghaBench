; ModuleID = '/home/carl/AnghaBench/git/extr_entry.c_streaming_write_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_entry.c_streaming_write_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.stream_filter = type { i32 }
%struct.checkout = type { i32 }
%struct.stat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, i8*, %struct.stream_filter*, %struct.checkout*, i32, i32*, %struct.stat*)* @streaming_write_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @streaming_write_entry(%struct.cache_entry* %0, i8* %1, %struct.stream_filter* %2, %struct.checkout* %3, i32 %4, i32* %5, %struct.stat* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cache_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stream_filter*, align 8
  %12 = alloca %struct.checkout*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.stat*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.stream_filter* %2, %struct.stream_filter** %11, align 8
  store %struct.checkout* %3, %struct.checkout** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store %struct.stat* %6, %struct.stat** %15, align 8
  store i32 0, i32* %16, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @open_output_fd(i8* %18, %struct.cache_entry* %19, i32 %20)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %49

25:                                               ; preds = %7
  %26 = load i32, i32* %17, align 4
  %27 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %28 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %27, i32 0, i32 0
  %29 = load %struct.stream_filter*, %struct.stream_filter** %11, align 8
  %30 = call i32 @stream_blob_to_fd(i32 %26, i32* %28, %struct.stream_filter* %29, i32 1)
  %31 = load i32, i32* %16, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %17, align 4
  %34 = load %struct.checkout*, %struct.checkout** %12, align 8
  %35 = load %struct.stat*, %struct.stat** %15, align 8
  %36 = call i32 @fstat_output(i32 %33, %struct.checkout* %34, %struct.stat* %35)
  %37 = load i32*, i32** %14, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %17, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load i32, i32* %16, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %25
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @unlink(i8* %45)
  br label %47

47:                                               ; preds = %44, %25
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %47, %24
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @open_output_fd(i8*, %struct.cache_entry*, i32) #1

declare dso_local i32 @stream_blob_to_fd(i32, i32*, %struct.stream_filter*, i32) #1

declare dso_local i32 @fstat_output(i32, %struct.checkout*, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
