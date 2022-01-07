; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_words_append.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_words_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_words_buffer = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.diff_words_buffer*)* @diff_words_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_words_append(i8* %0, i64 %1, %struct.diff_words_buffer* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.diff_words_buffer*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.diff_words_buffer* %2, %struct.diff_words_buffer** %6, align 8
  %7 = load %struct.diff_words_buffer*, %struct.diff_words_buffer** %6, align 8
  %8 = getelementptr inbounds %struct.diff_words_buffer, %struct.diff_words_buffer* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.diff_words_buffer*, %struct.diff_words_buffer** %6, align 8
  %12 = getelementptr inbounds %struct.diff_words_buffer, %struct.diff_words_buffer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %14, %15
  %17 = load %struct.diff_words_buffer*, %struct.diff_words_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.diff_words_buffer, %struct.diff_words_buffer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ALLOC_GROW(i8* %10, i64 %16, i32 %19)
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %5, align 8
  %25 = load %struct.diff_words_buffer*, %struct.diff_words_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.diff_words_buffer, %struct.diff_words_buffer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.diff_words_buffer*, %struct.diff_words_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.diff_words_buffer, %struct.diff_words_buffer* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @memcpy(i8* %33, i8* %34, i64 %35)
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.diff_words_buffer*, %struct.diff_words_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.diff_words_buffer, %struct.diff_words_buffer* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %37
  store i64 %42, i64* %40, align 8
  %43 = load %struct.diff_words_buffer*, %struct.diff_words_buffer** %6, align 8
  %44 = getelementptr inbounds %struct.diff_words_buffer, %struct.diff_words_buffer* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.diff_words_buffer*, %struct.diff_words_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.diff_words_buffer, %struct.diff_words_buffer* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  store i8 0, i8* %51, align 1
  ret void
}

declare dso_local i32 @ALLOC_GROW(i8*, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
