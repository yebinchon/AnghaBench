; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_send_error_generic.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_send_error_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i64, i32* }
%struct.TYPE_10__ = type { i32, i8*, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION = common dso_local global i32 0, align 4
@H2O_SEND_ERROR_KEEP_HEADERS = common dso_local global i32 0, align 4
@H2O_TOKEN_CONTENT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"text/plain; charset=utf-8\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_send_error_generic(%struct.TYPE_11__* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = call %struct.TYPE_12__* @h2o_req_setup(%struct.TYPE_11__* %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %11, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = call i32 @h2o_req_bind_conf(%struct.TYPE_11__* %19, %struct.TYPE_12__* %20, i32* %22)
  br label %24

24:                                               ; preds = %16, %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @H2O_SEND_ERROR_KEEP_HEADERS, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %32
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = call i32 @memset(i32* %53, i32 0, i32 4)
  br label %55

55:                                               ; preds = %50, %32
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* @H2O_TOKEN_CONTENT_TYPE, align 4
  %62 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @h2o_add_header(i32* %57, i32* %60, i32 %61, i32* null, i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* @SIZE_MAX, align 4
  %67 = call i32 @h2o_send_inline(%struct.TYPE_11__* %64, i8* %65, i32 %66)
  ret void
}

declare dso_local %struct.TYPE_12__* @h2o_req_setup(%struct.TYPE_11__*) #1

declare dso_local i32 @h2o_req_bind_conf(%struct.TYPE_11__*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @h2o_add_header(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_send_inline(%struct.TYPE_11__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
