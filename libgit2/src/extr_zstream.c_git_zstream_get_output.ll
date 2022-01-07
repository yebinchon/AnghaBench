; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_zstream.c_git_zstream_get_output.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_zstream.c_git_zstream_get_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@Z_STREAM_END = common dso_local global i64 0, align 8
@GIT_ERROR_ZLIB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"zlib input had trailing garbage\00", align 1
@Z_FINISH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_zstream_get_output(i8* %0, i64* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @Z_STREAM_END, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @GIT_ERROR_ZLIB, align 4
  %24 = call i32 @git_error_set(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %71

25:                                               ; preds = %16, %3
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i64, i64* %8, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @Z_STREAM_END, align 8
  %34 = icmp ne i64 %32, %33
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i1 [ false, %26 ], [ %34, %29 ]
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %9, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = call i64 @git_zstream_get_output_chunk(i8* %39, i64* %9, %struct.TYPE_4__* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %71

44:                                               ; preds = %37
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %8, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %5, align 8
  br label %26

51:                                               ; preds = %35
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @Z_FINISH, align 8
  %61 = icmp eq i64 %59, %60
  br label %62

62:                                               ; preds = %56, %51
  %63 = phi i1 [ true, %51 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i64*, i64** %6, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = sub i64 %67, %68
  %70 = load i64*, i64** %6, align 8
  store i64 %69, i64* %70, align 8
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %62, %43, %22
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i64 @git_zstream_get_output_chunk(i8*, i64*, %struct.TYPE_4__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
