; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_on_req_body_done.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_on_req_body_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.st_h2o_http1client_t* }
%struct.st_h2o_http1client_t = type { i32, i64, i32, %struct.TYPE_5__*, %struct.TYPE_7__*, i32 (i32*, i32, i32)* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@H2O_SEND_STATE_FINAL = common dso_local global i32 0, align 4
@H2O_SEND_STATE_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @on_req_body_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_req_body_done(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_http1client_t*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %8, align 8
  store %struct.st_h2o_http1client_t* %9, %struct.st_h2o_http1client_t** %5, align 8
  %10 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %11 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %10, i32 0, i32 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %49

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %19 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @H2O_SEND_STATE_FINAL, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @H2O_SEND_STATE_IN_PROGRESS, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %6, align 4
  %28 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %29 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %28, i32 0, i32 5
  %30 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %29, align 8
  %31 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %32 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %31, i32 0, i32 2
  %33 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %34 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %33, i32 0, i32 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 %30(i32* %32, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %26, %14
  %41 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %42 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %41, i32 0, i32 4
  %43 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %44 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %43, i32 0, i32 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @h2o_buffer_consume(%struct.TYPE_7__** %42, i32 %47)
  br label %49

49:                                               ; preds = %40, %2
  %50 = load i8*, i8** %4, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %54 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @on_whole_request_sent(i32 %55, i8* %56)
  br label %89

58:                                               ; preds = %49
  %59 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %60 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %65 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %72 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %71, i32 0, i32 2
  %73 = call i32 @h2o_iovec_init(i32* null, i32 0)
  %74 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %75 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @do_write_req(i32* %72, i32 %73, i64 %76)
  br label %89

78:                                               ; preds = %63, %58
  %79 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %80 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %85 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @on_whole_request_sent(i32 %86, i8* null)
  br label %88

88:                                               ; preds = %83, %78
  br label %89

89:                                               ; preds = %52, %88, %70
  ret void
}

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_7__**, i32) #1

declare dso_local i32 @on_whole_request_sent(i32, i8*) #1

declare dso_local i32 @do_write_req(i32*, i32, i64) #1

declare dso_local i32 @h2o_iovec_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
