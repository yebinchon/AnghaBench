; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_ctl.c_experimental_utilization_batch_query_ctl.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_ctl.c_experimental_utilization_batch_query_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64, i8*, i64*, i8*, i64)* @experimental_utilization_batch_query_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @experimental_utilization_batch_query_ctl(i32* %0, i64* %1, i64 %2, i8* %3, i64* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.TYPE_2__*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %20 = call i32 @assert(i32 0)
  %21 = load i64, i64* %14, align 8
  %22 = udiv i64 %21, 8
  store i64 %22, i64* %16, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %7
  %26 = load i64*, i64** %12, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %45, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %13, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %14, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* %16, align 8
  %37 = mul i64 %36, 8
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load i64*, i64** %12, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %16, align 8
  %43 = mul i64 %42, 12
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %34, %31, %28, %25, %7
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %15, align 4
  br label %80

47:                                               ; preds = %39
  %48 = load i8*, i8** %13, align 8
  %49 = bitcast i8* %48 to i8**
  store i8** %49, i8*** %17, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %51, %struct.TYPE_2__** %18, align 8
  store i64 0, i64* %19, align 8
  br label %52

52:                                               ; preds = %76, %47
  %53 = load i64, i64* %19, align 8
  %54 = load i64, i64* %16, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @tsd_tsdn(i32* %57)
  %59 = load i8**, i8*** %17, align 8
  %60 = load i64, i64* %19, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %64 = load i64, i64* %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %68 = load i64, i64* %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %72 = load i64, i64* %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @extent_util_stats_get(i32 %58, i8* %62, i32* %66, i32* %70, i32* %74)
  br label %76

76:                                               ; preds = %56
  %77 = load i64, i64* %19, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %19, align 8
  br label %52

79:                                               ; preds = %52
  store i32 0, i32* %15, align 4
  br label %80

80:                                               ; preds = %79, %45
  %81 = load i32, i32* %15, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @extent_util_stats_get(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
