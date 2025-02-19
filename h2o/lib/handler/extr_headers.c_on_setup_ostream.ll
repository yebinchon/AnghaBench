; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_headers.c_on_setup_ostream.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_headers.c_on_setup_ostream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.st_headers_filter_t = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }

@H2O_HEADERS_CMD_NULL = common dso_local global i64 0, align 8
@H2O_HEADERS_CMD_WHEN_EARLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32**)* @on_setup_ostream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_setup_ostream(i32* %0, %struct.TYPE_8__* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.st_headers_filter_t*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32** %2, i32*** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.st_headers_filter_t*
  store %struct.st_headers_filter_t* %11, %struct.st_headers_filter_t** %7, align 8
  %12 = load %struct.st_headers_filter_t*, %struct.st_headers_filter_t** %7, align 8
  %13 = getelementptr inbounds %struct.st_headers_filter_t, %struct.st_headers_filter_t* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %8, align 8
  br label %15

15:                                               ; preds = %36, %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @H2O_HEADERS_CMD_NULL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @H2O_HEADERS_CMD_WHEN_EARLY, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = call i32 @h2o_rewrite_headers(i32* %29, i32* %32, %struct.TYPE_9__* %33)
  br label %35

35:                                               ; preds = %27, %21
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 1
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %8, align 8
  br label %15

39:                                               ; preds = %15
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = load i32**, i32*** %6, align 8
  %42 = call i32 @h2o_setup_next_ostream(%struct.TYPE_8__* %40, i32** %41)
  ret void
}

declare dso_local i32 @h2o_rewrite_headers(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @h2o_setup_next_ostream(%struct.TYPE_8__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
