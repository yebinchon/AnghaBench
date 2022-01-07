; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_gzdecode.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_gzdecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i8*, i32*, i32* }

@Z_BUF_ERROR = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_NEED_DICT = common dso_local global i32 0, align 4
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32*, i64)* @gzdecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gzdecode(i32* %0, i64* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  store i32* %12, i32** %13, align 8
  %14 = load i64, i64* %9, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = ptrtoint i8* %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @Z_BUF_ERROR, align 4
  store i32 %23, i32* %5, align 4
  br label %77

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  store i32* %25, i32** %26, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @Z_BUF_ERROR, align 4
  store i32 %38, i32* %5, align 4
  br label %77

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = call i32 @inflateInit2(%struct.TYPE_5__* %10, i32 47)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @Z_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %77

48:                                               ; preds = %39
  %49 = load i32, i32* @Z_FINISH, align 4
  %50 = call i32 @inflate(%struct.TYPE_5__* %10, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @Z_STREAM_END, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = call i32 @inflateEnd(%struct.TYPE_5__* %10)
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @Z_NEED_DICT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @Z_BUF_ERROR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %54
  %68 = load i32, i32* @Z_DATA_ERROR, align 4
  store i32 %68, i32* %5, align 4
  br label %77

69:                                               ; preds = %63, %59
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %77

71:                                               ; preds = %48
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %7, align 8
  store i64 %73, i64* %74, align 8
  %75 = call i32 @inflateEnd(%struct.TYPE_5__* %10)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %71, %69, %67, %46, %37, %22
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @inflateInit2(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
