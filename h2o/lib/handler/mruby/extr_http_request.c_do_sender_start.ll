; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_do_sender_start.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_do_sender_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.st_h2o_mruby_http_sender_t = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@H2O_SEND_STATE_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @do_sender_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sender_start(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.st_h2o_mruby_http_sender_t*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.st_h2o_mruby_http_sender_t*
  store %struct.st_h2o_mruby_http_sender_t* %8, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = call i32 @on_shortcut_notify(%struct.TYPE_8__* %9)
  %11 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %12 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %1
  %17 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %18 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %3, align 8
  %24 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %23, i32 0, i32 0
  %25 = call i32 @h2o_doublebuffer_prepare_empty(%struct.TYPE_9__* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = load i32, i32* @H2O_SEND_STATE_IN_PROGRESS, align 4
  %28 = call i32 @h2o_mruby_sender_do_send(%struct.TYPE_8__* %26, i32* null, i32 0, i32 %27)
  br label %29

29:                                               ; preds = %22, %16, %1
  ret void
}

declare dso_local i32 @on_shortcut_notify(%struct.TYPE_8__*) #1

declare dso_local i32 @h2o_doublebuffer_prepare_empty(%struct.TYPE_9__*) #1

declare dso_local i32 @h2o_mruby_sender_do_send(%struct.TYPE_8__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
