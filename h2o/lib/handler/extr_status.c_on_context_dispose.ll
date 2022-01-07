; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_status.c_on_context_dispose.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_status.c_on_context_dispose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.st_h2o_root_status_handler_t = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32** }
%struct.st_h2o_status_context_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @on_context_dispose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_context_dispose(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.st_h2o_root_status_handler_t*, align 8
  %6 = alloca %struct.st_h2o_status_context_t*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.st_h2o_root_status_handler_t*
  store %struct.st_h2o_root_status_handler_t* %10, %struct.st_h2o_root_status_handler_t** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %5, align 8
  %13 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %12, i32 0, i32 1
  %14 = call %struct.st_h2o_status_context_t* @h2o_context_get_handler_context(%struct.TYPE_6__* %11, i32* %13)
  store %struct.st_h2o_status_context_t* %14, %struct.st_h2o_status_context_t** %6, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %35, %2
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %5, align 8
  %18 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %16, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %5, align 8
  %24 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.st_h2o_status_context_t*, %struct.st_h2o_status_context_t** %6, align 8
  %31 = getelementptr inbounds %struct.st_h2o_status_context_t, %struct.st_h2o_status_context_t* %30, i32 0, i32 0
  %32 = icmp eq i32* %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %38

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %15

38:                                               ; preds = %33, %15
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %5, align 8
  %41 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %39, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %5, align 8
  %48 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i32*, i32** %50, i64 %51
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %5, align 8
  %55 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %5, align 8
  %61 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %63, %64
  %66 = sub i64 %65, 1
  %67 = call i32 @memmove(i32** %53, i32** %59, i64 %66)
  %68 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %5, align 8
  %69 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, -1
  store i64 %72, i64* %70, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.st_h2o_status_context_t*, %struct.st_h2o_status_context_t** %6, align 8
  %77 = getelementptr inbounds %struct.st_h2o_status_context_t, %struct.st_h2o_status_context_t* %76, i32 0, i32 0
  %78 = call i32 @h2o_multithread_unregister_receiver(i32 %75, i32* %77)
  %79 = load %struct.st_h2o_status_context_t*, %struct.st_h2o_status_context_t** %6, align 8
  %80 = call i32 @free(%struct.st_h2o_status_context_t* %79)
  ret void
}

declare dso_local %struct.st_h2o_status_context_t* @h2o_context_get_handler_context(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(i32**, i32**, i64) #1

declare dso_local i32 @h2o_multithread_unregister_receiver(i32, i32*) #1

declare dso_local i32 @free(%struct.st_h2o_status_context_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
