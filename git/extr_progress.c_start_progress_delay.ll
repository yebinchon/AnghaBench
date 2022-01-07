; ModuleID = '/home/carl/AnghaBench/git/extr_progress.c_start_progress_delay.c'
source_filename = "/home/carl/AnghaBench/git/extr_progress.c_start_progress_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.progress = type { i8*, i32, i32, i32, i32, i64, i32, i32, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.progress* (i8*, i32, i32, i32)* @start_progress_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.progress* @start_progress_delay(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.progress*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call %struct.progress* @xmalloc(i32 64)
  store %struct.progress* %10, %struct.progress** %9, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.progress*, %struct.progress** %9, align 8
  %13 = getelementptr inbounds %struct.progress, %struct.progress* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.progress*, %struct.progress** %9, align 8
  %16 = getelementptr inbounds %struct.progress, %struct.progress* %15, i32 0, i32 10
  store i32 %14, i32* %16, align 8
  %17 = load %struct.progress*, %struct.progress** %9, align 8
  %18 = getelementptr inbounds %struct.progress, %struct.progress* %17, i32 0, i32 1
  store i32 -1, i32* %18, align 8
  %19 = load %struct.progress*, %struct.progress** %9, align 8
  %20 = getelementptr inbounds %struct.progress, %struct.progress* %19, i32 0, i32 2
  store i32 -1, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.progress*, %struct.progress** %9, align 8
  %23 = getelementptr inbounds %struct.progress, %struct.progress* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.progress*, %struct.progress** %9, align 8
  %26 = getelementptr inbounds %struct.progress, %struct.progress* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.progress*, %struct.progress** %9, align 8
  %28 = getelementptr inbounds %struct.progress, %struct.progress* %27, i32 0, i32 9
  store i32* null, i32** %28, align 8
  %29 = call i32 (...) @getnanotime()
  %30 = load %struct.progress*, %struct.progress** %9, align 8
  %31 = getelementptr inbounds %struct.progress, %struct.progress* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load %struct.progress*, %struct.progress** %9, align 8
  %33 = getelementptr inbounds %struct.progress, %struct.progress* %32, i32 0, i32 7
  %34 = call i32 @strbuf_init(i32* %33, i32 0)
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @utf8_strwidth(i8* %35)
  %37 = load %struct.progress*, %struct.progress** %9, align 8
  %38 = getelementptr inbounds %struct.progress, %struct.progress* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.progress*, %struct.progress** %9, align 8
  %40 = getelementptr inbounds %struct.progress, %struct.progress* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = call i32 (...) @set_progress_signal()
  %42 = load %struct.progress*, %struct.progress** %9, align 8
  ret %struct.progress* %42
}

declare dso_local %struct.progress* @xmalloc(i32) #1

declare dso_local i32 @getnanotime(...) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @utf8_strwidth(i8*) #1

declare dso_local i32 @set_progress_signal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
