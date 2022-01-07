; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_do_sender_start.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_do_sender_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.st_h2o_mruby_middleware_sender_t = type { i32, %struct.st_mruby_subreq_t* }
%struct.st_mruby_subreq_t = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@FINAL_RECEIVED = common dso_local global i64 0, align 8
@H2O_SEND_STATE_IN_PROGRESS = common dso_local global i32 0, align 4
@H2O_SEND_STATE_FINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_sender_start(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.st_h2o_mruby_middleware_sender_t*, align 8
  %4 = alloca %struct.st_mruby_subreq_t*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.st_h2o_mruby_middleware_sender_t*
  store %struct.st_h2o_mruby_middleware_sender_t* %9, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %10 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %11 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %10, i32 0, i32 1
  %12 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  store %struct.st_mruby_subreq_t* %12, %struct.st_mruby_subreq_t** %4, align 8
  %13 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %4, align 8
  %14 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %4, align 8
  %21 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FINAL_RECEIVED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %27 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %26, i32 0, i32 0
  %28 = call i32 @h2o_doublebuffer_prepare_empty(i32* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @H2O_SEND_STATE_IN_PROGRESS, align 4
  %33 = call i32 @h2o_send(i32 %31, i32* null, i32 0, i32 %32)
  br label %52

34:                                               ; preds = %19, %1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %37 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %36, i32 0, i32 0
  %38 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %4, align 8
  %39 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %38, i32 0, i32 1
  %40 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %4, align 8
  %41 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FINAL_RECEIVED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* @H2O_SEND_STATE_FINAL, align 4
  br label %49

47:                                               ; preds = %34
  %48 = load i32, i32* @H2O_SEND_STATE_IN_PROGRESS, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @h2o_mruby_sender_do_send_buffer(%struct.TYPE_5__* %35, i32* %37, %struct.TYPE_6__** %39, i32 %50)
  br label %52

52:                                               ; preds = %49, %25
  ret void
}

declare dso_local i32 @h2o_doublebuffer_prepare_empty(i32*) #1

declare dso_local i32 @h2o_send(i32, i32*, i32, i32) #1

declare dso_local i32 @h2o_mruby_sender_do_send_buffer(%struct.TYPE_5__*, i32*, %struct.TYPE_6__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
