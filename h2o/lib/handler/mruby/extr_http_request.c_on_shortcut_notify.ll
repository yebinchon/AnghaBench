; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_on_shortcut_notify.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_on_shortcut_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.st_h2o_mruby_http_sender_t = type { %struct.TYPE_15__, %struct.TYPE_11__, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64 }

@SIZE_MAX = common dso_local global i64 0, align 8
@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @on_shortcut_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_shortcut_notify(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.st_h2o_mruby_http_sender_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__**, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.st_h2o_mruby_http_sender_t*
  store %struct.st_h2o_mruby_http_sender_t* %10, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %11 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %12 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %11, i32 0, i32 2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = icmp eq %struct.TYPE_12__* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %21 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %20, i32 0, i32 2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = call %struct.TYPE_13__** @peek_content(%struct.TYPE_14__* %22, i32* %4)
  store %struct.TYPE_13__** %23, %struct.TYPE_13__*** %5, align 8
  %24 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %25 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SIZE_MAX, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %1
  %31 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %32 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %42 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  br label %48

48:                                               ; preds = %40, %30, %1
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %55 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %54, i32 0, i32 3
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %55, align 8
  %56 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  %57 = call i32 @h2o_buffer_init(%struct.TYPE_13__** %56, i32* @h2o_socket_buffer_prototype)
  %58 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %59 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %58, i32 0, i32 3
  store %struct.TYPE_13__** %59, %struct.TYPE_13__*** %5, align 8
  %60 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %61 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %60, i32 0, i32 2
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %63, align 8
  %64 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %65 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %64, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %65, align 8
  br label %66

66:                                               ; preds = %51, %48
  %67 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %68 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %66
  %73 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %74 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %81 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %80, i32 0, i32 0
  %82 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @h2o_mruby_sender_do_send_buffer(%struct.TYPE_12__* %79, %struct.TYPE_15__* %81, %struct.TYPE_13__** %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %72, %66
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_13__** @peek_content(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @h2o_buffer_init(%struct.TYPE_13__**, i32*) #1

declare dso_local i32 @h2o_mruby_sender_do_send_buffer(%struct.TYPE_12__*, %struct.TYPE_15__*, %struct.TYPE_13__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
