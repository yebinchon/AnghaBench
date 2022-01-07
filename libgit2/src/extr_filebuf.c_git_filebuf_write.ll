; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filebuf.c_git_filebuf_write.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filebuf.c_git_filebuf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i8*, i64)*, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_filebuf_write(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = call i32 @ENSURE_BUF_OK(%struct.TYPE_7__* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_7__*, i8*, i64)*, i32 (%struct.TYPE_7__*, i8*, i64)** %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 %20(%struct.TYPE_7__* %21, i8* %22, i64 %23)
  store i32 %24, i32* %4, align 4
  br label %58

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %51, %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %29, %32
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @add_to_cache(%struct.TYPE_7__* %38, i8* %39, i64 %40)
  store i32 0, i32* %4, align 4
  br label %58

42:                                               ; preds = %26
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @add_to_cache(%struct.TYPE_7__* %43, i8* %44, i64 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = call i64 @flush_buffer(%struct.TYPE_7__* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %58

51:                                               ; preds = %42
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %8, align 8
  br label %26

58:                                               ; preds = %50, %37, %17
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @ENSURE_BUF_OK(%struct.TYPE_7__*) #1

declare dso_local i32 @add_to_cache(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i64 @flush_buffer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
