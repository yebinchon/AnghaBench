; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_on_body_until_close.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_on_body_until_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.st_h2o_http1client_t* }
%struct.st_h2o_http1client_t = type { %struct.TYPE_15__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_15__*, i32*)* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@STREAM_STATE_CLOSED = common dso_local global i32 0, align 4
@h2o_httpclient_error_is_eos = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i8*)* @on_body_until_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_body_until_close(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_http1client_t*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %8 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %7, align 8
  store %struct.st_h2o_http1client_t* %8, %struct.st_h2o_http1client_t** %5, align 8
  %9 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %10 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = call i32 @h2o_timer_unlink(i32* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = load i32, i32* @STREAM_STATE_CLOSED, align 4
  %17 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %18 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %21 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @h2o_gettimeofday(i32 %25)
  %27 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %28 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %32 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64 (%struct.TYPE_15__*, i32*)*, i64 (%struct.TYPE_15__*, i32*)** %34, align 8
  %36 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %37 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %36, i32 0, i32 0
  %38 = load i32*, i32** @h2o_httpclient_error_is_eos, align 8
  %39 = call i64 %35(%struct.TYPE_15__* %37, i32* %38)
  %40 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %41 = call i32 @close_response(%struct.st_h2o_http1client_t* %40)
  br label %81

42:                                               ; preds = %2
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %49 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64 (%struct.TYPE_15__*, i32*)*, i64 (%struct.TYPE_15__*, i32*)** %51, align 8
  %53 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %54 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %53, i32 0, i32 0
  %55 = call i64 %52(%struct.TYPE_15__* %54, i32* null)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %59 = call i32 @close_client(%struct.st_h2o_http1client_t* %58)
  br label %81

60:                                               ; preds = %47
  %61 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %62 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %61, i32 0, i32 0
  %63 = call i32 @do_update_window(%struct.TYPE_15__* %62)
  br label %64

64:                                               ; preds = %60, %42
  %65 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %66 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %72 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %78 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = call i32 @h2o_timer_link(i32 %70, i32 %76, i32* %79)
  br label %81

81:                                               ; preds = %64, %57, %15
  ret void
}

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @h2o_gettimeofday(i32) #1

declare dso_local i32 @close_response(%struct.st_h2o_http1client_t*) #1

declare dso_local i32 @close_client(%struct.st_h2o_http1client_t*) #1

declare dso_local i32 @do_update_window(%struct.TYPE_15__*) #1

declare dso_local i32 @h2o_timer_link(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
