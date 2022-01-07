; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_do_sender_dispose.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_do_sender_dispose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.st_h2o_mruby_middleware_sender_t = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32* }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_sender_dispose(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.st_h2o_mruby_middleware_sender_t*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.st_h2o_mruby_middleware_sender_t*
  store %struct.st_h2o_mruby_middleware_sender_t* %8, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %9 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %10 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %9, i32 0, i32 1
  %11 = call i32 @h2o_doublebuffer_dispose(i32* %10)
  %12 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %13 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %1
  %20 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %21 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mrb_nil_p(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %39 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @mrb_gc_unregister(i32 %37, i32 %43)
  %45 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %46 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %45, i32 0, i32 0
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %19, %1
  %51 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %52 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %58 = icmp eq %struct.TYPE_13__* %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %62 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %65, align 8
  %66 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %67 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = call i32 @dispose_subreq(%struct.TYPE_14__* %68)
  %70 = load %struct.st_h2o_mruby_middleware_sender_t*, %struct.st_h2o_mruby_middleware_sender_t** %3, align 8
  %71 = getelementptr inbounds %struct.st_h2o_mruby_middleware_sender_t, %struct.st_h2o_mruby_middleware_sender_t* %70, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %73 = call i32 @h2o_mruby_sender_close_body(%struct.TYPE_13__* %72)
  ret void
}

declare dso_local i32 @h2o_doublebuffer_dispose(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_gc_unregister(i32, i32) #1

declare dso_local i32 @dispose_subreq(%struct.TYPE_14__*) #1

declare dso_local i32 @h2o_mruby_sender_close_body(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
