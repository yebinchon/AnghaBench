; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_compress.c_check_result.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_compress.c_check_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i8*, i8*, i32, i32 }

@alloc_cb = common dso_local global i32 0, align 4
@free_cb = common dso_local global i32 0, align 4
@WINDOW_BITS = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i8*, i64)* @check_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_result(%struct.TYPE_9__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add i64 %15, 1
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 32)
  %20 = load i32, i32* @alloc_cb, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 5
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @free_cb, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i8* %18, i8** %24, align 8
  %25 = trunc i64 %16 to i32
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @WINDOW_BITS, align 4
  %28 = call i32 @inflateInit2(%struct.TYPE_8__* %9, i32 %27)
  store i32 -1, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %29

29:                                               ; preds = %62, %4
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @Z_NO_FLUSH, align 4
  %49 = call i32 @inflate(%struct.TYPE_8__* %9, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = call i32 @ok(i32 0)
  store i32 1, i32* %14, align 4
  br label %86

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 @ok(i32 0)
  store i32 1, i32* %14, align 4
  br label %86

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %13, align 8
  br label %29

65:                                               ; preds = %29
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @Z_STREAM_END, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @ok(i32 %69)
  %71 = call i32 @inflateEnd(%struct.TYPE_8__* %9)
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* %8, align 8
  %76 = sub i64 %16, %75
  %77 = icmp eq i64 %74, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ok(i32 %78)
  %80 = load i8*, i8** %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i64 @memcmp(i8* %18, i8* %80, i64 %81)
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @ok(i32 %84)
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %65, %59, %53
  %87 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %14, align 4
  switch i32 %88, label %90 [
    i32 0, label %89
    i32 1, label %89
  ]

89:                                               ; preds = %86, %86
  ret void

90:                                               ; preds = %86
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @inflateInit2(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @inflate(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i32 @inflateEnd(%struct.TYPE_8__*) #2

declare dso_local i64 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
