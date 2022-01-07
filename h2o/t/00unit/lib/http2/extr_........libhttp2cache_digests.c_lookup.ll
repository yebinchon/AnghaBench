; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_........libhttp2cache_digests.c_lookup.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_........libhttp2cache_digests.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }

@cmp_key = common dso_local global i32 0, align 4
@H2O_CACHE_DIGESTS_STATE_FRESH = common dso_local global i32 0, align 4
@H2O_CACHE_DIGESTS_STATE_STALE = common dso_local global i32 0, align 4
@H2O_CACHE_DIGESTS_STATE_NOT_CACHED = common dso_local global i32 0, align 4
@H2O_CACHE_DIGESTS_STATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64, i8*, i64, i32, i32)* @lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup(%struct.TYPE_6__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %7
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @calc_hash(i8* %25, i64 %26, i8* %27, i64 %28)
  store i32 %29, i32* %16, align 4
  store i64 0, i64* %17, align 8
  br label %30

30:                                               ; preds = %69, %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i64, i64* %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %34
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %18, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 64, %39
  %41 = ashr i32 %36, %40
  store i32 %41, i32* %19, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %30
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @cmp_key, align 4
  %57 = call i32* @bsearch(i32* %19, i32* %51, i32 %55, i32 4, i32 %56)
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %47
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @H2O_CACHE_DIGESTS_STATE_FRESH, align 4
  br label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @H2O_CACHE_DIGESTS_STATE_STALE, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %8, align 4
  br label %86

68:                                               ; preds = %47, %30
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %17, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %17, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %30, label %76

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %7
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @H2O_CACHE_DIGESTS_STATE_NOT_CACHED, align 4
  br label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @H2O_CACHE_DIGESTS_STATE_UNKNOWN, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %66
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i32 @calc_hash(i8*, i64, i8*, i64) #1

declare dso_local i32* @bsearch(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
