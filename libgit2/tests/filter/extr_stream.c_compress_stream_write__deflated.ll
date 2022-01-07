; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_stream.c_compress_stream_write__deflated.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_stream.c_compress_stream_write__deflated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compress_stream = type { i64, i8, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i8*, i32)* }

@CHUNKSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.compress_stream*, i8*, i64)* @compress_stream_write__deflated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_stream_write__deflated(%struct.compress_stream* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.compress_stream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.compress_stream* %0, %struct.compress_stream** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %65, %3
  %11 = load i64, i64* %6, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  %14 = load %struct.compress_stream*, %struct.compress_stream** %4, align 8
  %15 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = load %struct.compress_stream*, %struct.compress_stream** %4, align 8
  %24 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %23, i32 0, i32 1
  store i8 %22, i8* %24, align 8
  br label %25

25:                                               ; preds = %18, %13
  %26 = load i64, i64* @CHUNKSIZE, align 8
  %27 = load %struct.compress_stream*, %struct.compress_stream** %4, align 8
  %28 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @min(i64 %31, i64 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.compress_stream*, %struct.compress_stream** %4, align 8
  %36 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load %struct.compress_stream*, %struct.compress_stream** %4, align 8
  %46 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CHUNKSIZE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %25
  %51 = load %struct.compress_stream*, %struct.compress_stream** %4, align 8
  %52 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_2__*, i8*, i32)*, i32 (%struct.TYPE_2__*, i8*, i32)** %54, align 8
  %56 = load %struct.compress_stream*, %struct.compress_stream** %4, align 8
  %57 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load %struct.compress_stream*, %struct.compress_stream** %4, align 8
  %60 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %59, i32 0, i32 1
  %61 = call i32 %55(%struct.TYPE_2__* %58, i8* %60, i32 1)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = load %struct.compress_stream*, %struct.compress_stream** %4, align 8
  %64 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %50, %25
  br label %10

66:                                               ; preds = %10
  ret i32 0
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @cl_git_pass(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
