; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_process_request.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1_conn_t = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_9__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"h2c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-14\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-16\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1_conn_t*)* @process_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_request(%struct.st_h2o_http1_conn_t* %0) #0 {
  %2 = alloca %struct.st_h2o_http1_conn_t*, align 8
  store %struct.st_h2o_http1_conn_t* %0, %struct.st_h2o_http1_conn_t** %2, align 8
  %3 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %4 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %3, i32 0, i32 2
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %88

9:                                                ; preds = %1
  %10 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %11 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %88

16:                                               ; preds = %9
  %17 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %18 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %88

27:                                               ; preds = %16
  %28 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %29 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 3
  br i1 %33, label %34, label %88

34:                                               ; preds = %27
  %35 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %36 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %41 = call i64 @h2o_lcstris(i32* %39, i32 3, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %88

43:                                               ; preds = %34
  %44 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %45 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %77, label %50

50:                                               ; preds = %43
  %51 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %52 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 6
  br i1 %56, label %57, label %88

57:                                               ; preds = %50
  %58 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %59 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i64 @memcmp(i32* %63, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %57
  %68 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %69 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i64 @memcmp(i32* %73, i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %67, %57, %43
  %78 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %79 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %78, i32 0, i32 0
  %80 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %81 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @h2o_http2_handle_upgrade(%struct.TYPE_15__* %79, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %92

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %67, %50, %34, %27, %16, %9, %1
  %89 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %90 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %89, i32 0, i32 0
  %91 = call i32 @h2o_process_request(%struct.TYPE_15__* %90)
  br label %92

92:                                               ; preds = %88, %86
  ret void
}

declare dso_local i64 @h2o_lcstris(i32*, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i64 @memcmp(i32*, i32) #1

declare dso_local i64 @h2o_http2_handle_upgrade(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @h2o_process_request(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
