; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_do_sender_proceed.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_do_sender_proceed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.st_h2o_mruby_middleware_sender_t = type { %struct.st_mruby_subreq_t*, i32 }
%struct.st_mruby_subreq_t = type { i64, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@FINAL_RECEIVED = common dso_local global i64 0, align 8
@H2O_SEND_STATE_FINAL = common dso_local global i32 0, align 4
@H2O_SEND_STATE_IN_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_sender_proceed(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.st_h2o_mruby_middleware_sender_t*, align 8
  %7 = alloca %struct.st_mruby_subreq_t*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = bitcast %struct.TYPE_6__* %13 to i8*
  %15 = bitcast i8* %14 to %struct.st_h2o_mruby_middleware_sender_t*
  store %struct.st_h2o_mruby_middleware_sender_t* %15, %struct.st_h2o_mruby_middleware_sender_t** %6, align 8
  %16 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %6, align 8
  %17 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %16, i32 0, i32 0
  %18 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %17, align 8
  store %struct.st_mruby_subreq_t* %18, %struct.st_mruby_subreq_t** %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %79

26:                                               ; preds = %2
  %27 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %7, align 8
  %28 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %27, i32 0, i32 3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %6, align 8
  %33 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %32, i32 0, i32 1
  %34 = call i32 @h2o_doublebuffer_consume(i32* %33)
  %35 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %7, align 8
  %36 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %31
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %6, align 8
  %44 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %43, i32 0, i32 1
  %45 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %7, align 8
  %46 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %45, i32 0, i32 3
  %47 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %7, align 8
  %48 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FINAL_RECEIVED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @H2O_SEND_STATE_FINAL, align 4
  br label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @H2O_SEND_STATE_IN_PROGRESS, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @h2o_mruby_sender_do_send_buffer(%struct.TYPE_7__* %42, i32* %44, %struct.TYPE_8__** %46, i32 %57)
  br label %79

59:                                               ; preds = %31
  %60 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %7, align 8
  %61 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %60, i32 0, i32 3
  %62 = call i32 @h2o_buffer_dispose(%struct.TYPE_8__** %61)
  %63 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %7, align 8
  %64 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %63, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %64, align 8
  br label %65

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %26
  %67 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %6, align 8
  %68 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %67, i32 0, i32 0
  %69 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %68, align 8
  %70 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %6, align 8
  %75 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %74, i32 0, i32 0
  %76 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %75, align 8
  %77 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %76, i32 0, i32 1
  %78 = call i32 @h2o_proceed_response(i32* %77)
  br label %79

79:                                               ; preds = %25, %56, %73, %66
  ret void
}

declare dso_local i32 @h2o_doublebuffer_consume(i32*) #1

declare dso_local i32 @h2o_mruby_sender_do_send_buffer(%struct.TYPE_7__*, i32*, %struct.TYPE_8__**, i32) #1

declare dso_local i32 @h2o_buffer_dispose(%struct.TYPE_8__**) #1

declare dso_local i32 @h2o_proceed_response(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
