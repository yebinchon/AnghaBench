; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_stream.c_compress_stream_write__inflated.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_stream.c_compress_stream_write__inflated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compress_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i8*, i32)* }

@CHUNKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.compress_stream*, i8*, i64)* @compress_stream_write__inflated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_stream_write__inflated(%struct.compress_stream* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.compress_stream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.compress_stream* %0, %struct.compress_stream** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @CHUNKSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %47, %3
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* @CHUNKSIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i8, i8* %14, i64 %30
  store i8 %29, i8* %31, align 1
  br label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %10, align 8
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.compress_stream*, %struct.compress_stream** %4, align 8
  %37 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_2__*, i8*, i32)*, i32 (%struct.TYPE_2__*, i8*, i32)** %39, align 8
  %41 = load %struct.compress_stream*, %struct.compress_stream** %4, align 8
  %42 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* @CHUNKSIZE, align 4
  %45 = call i32 %40(%struct.TYPE_2__* %43, i8* %14, i32 %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  br label %47

47:                                               ; preds = %35
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %15

50:                                               ; preds = %15
  %51 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %51)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cl_git_pass(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
