; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_socketevloop.c.h_h2o_evloop_destroy.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_socketevloop.c.h_h2o_evloop_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_evloop_socket_t = type { i32, %struct.st_h2o_evloop_socket_t*, %struct.TYPE_2__, %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t* }
%struct.TYPE_2__ = type { %struct.st_h2o_evloop_socket_t* }

@UINT64_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_evloop_destroy(%struct.st_h2o_evloop_socket_t* %0) #0 {
  %2 = alloca %struct.st_h2o_evloop_socket_t*, align 8
  %3 = alloca %struct.st_h2o_evloop_socket_t*, align 8
  store %struct.st_h2o_evloop_socket_t* %0, %struct.st_h2o_evloop_socket_t** %2, align 8
  %4 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %5 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @h2o_timerwheel_get_wake_at(i32 %6)
  %8 = load i64, i64* @UINT64_MAX, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  br label %12

12:                                               ; preds = %17, %1
  %13 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %14 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %13, i32 0, i32 5
  %15 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %14, align 8
  store %struct.st_h2o_evloop_socket_t* %15, %struct.st_h2o_evloop_socket_t** %3, align 8
  %16 = icmp ne %struct.st_h2o_evloop_socket_t* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %19 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %18, i32 0, i32 3
  %20 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %19, align 8
  %21 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %22 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %21, i32 0, i32 5
  store %struct.st_h2o_evloop_socket_t* %20, %struct.st_h2o_evloop_socket_t** %22, align 8
  %23 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %24 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %25 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %24, i32 0, i32 3
  store %struct.st_h2o_evloop_socket_t* %23, %struct.st_h2o_evloop_socket_t** %25, align 8
  %26 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %27 = bitcast %struct.st_h2o_evloop_socket_t* %26 to i32*
  %28 = call i32 @h2o_socket_close(i32* %27)
  br label %12

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %35, %29
  %31 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %32 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %31, i32 0, i32 4
  %33 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %32, align 8
  store %struct.st_h2o_evloop_socket_t* %33, %struct.st_h2o_evloop_socket_t** %3, align 8
  %34 = icmp ne %struct.st_h2o_evloop_socket_t* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %37 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %36, i32 0, i32 3
  %38 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %37, align 8
  %39 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %40 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %39, i32 0, i32 4
  store %struct.st_h2o_evloop_socket_t* %38, %struct.st_h2o_evloop_socket_t** %40, align 8
  %41 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %42 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %43 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %42, i32 0, i32 3
  store %struct.st_h2o_evloop_socket_t* %41, %struct.st_h2o_evloop_socket_t** %43, align 8
  %44 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %45 = bitcast %struct.st_h2o_evloop_socket_t* %44 to i32*
  %46 = call i32 @h2o_socket_close(i32* %45)
  br label %30

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %54, %47
  %49 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %50 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %51, align 8
  store %struct.st_h2o_evloop_socket_t* %52, %struct.st_h2o_evloop_socket_t** %3, align 8
  %53 = icmp ne %struct.st_h2o_evloop_socket_t* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %56 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %55, i32 0, i32 1
  %57 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %56, align 8
  %58 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %59 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store %struct.st_h2o_evloop_socket_t* %57, %struct.st_h2o_evloop_socket_t** %60, align 8
  %61 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %62 = call i32 @free(%struct.st_h2o_evloop_socket_t* %61)
  br label %48

63:                                               ; preds = %48
  %64 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %65 = call i32 @evloop_do_dispose(%struct.st_h2o_evloop_socket_t* %64)
  %66 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %67 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @h2o_timerwheel_destroy(i32 %68)
  %70 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %71 = call i32 @free(%struct.st_h2o_evloop_socket_t* %70)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @h2o_timerwheel_get_wake_at(i32) #1

declare dso_local i32 @h2o_socket_close(i32*) #1

declare dso_local i32 @free(%struct.st_h2o_evloop_socket_t*) #1

declare dso_local i32 @evloop_do_dispose(%struct.st_h2o_evloop_socket_t*) #1

declare dso_local i32 @h2o_timerwheel_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
