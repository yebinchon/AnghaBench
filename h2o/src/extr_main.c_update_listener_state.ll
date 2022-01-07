; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_update_listener_state.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_update_listener_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.listener_ctx_t = type { i32 }

@conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@on_accept = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.listener_ctx_t*)* @update_listener_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_listener_state(%struct.listener_ctx_t* %0) #0 {
  %2 = alloca %struct.listener_ctx_t*, align 8
  %3 = alloca i64, align 8
  store %struct.listener_ctx_t* %0, %struct.listener_ctx_t** %2, align 8
  %4 = call i64 @num_connections(i32 0)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @conf, i32 0, i32 0), align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %38, %7
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @conf, i32 0, i32 1), align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @conf, i32 0, i32 2), align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %13, i64 %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %12
  %22 = load %struct.listener_ctx_t*, %struct.listener_ctx_t** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.listener_ctx_t, %struct.listener_ctx_t* %22, i64 %23
  %25 = getelementptr inbounds %struct.listener_ctx_t, %struct.listener_ctx_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @h2o_socket_is_reading(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load %struct.listener_ctx_t*, %struct.listener_ctx_t** %2, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.listener_ctx_t, %struct.listener_ctx_t* %30, i64 %31
  %33 = getelementptr inbounds %struct.listener_ctx_t, %struct.listener_ctx_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @on_accept, align 4
  %36 = call i32 @h2o_socket_read_start(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %21, %12
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %8

41:                                               ; preds = %8
  br label %76

42:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %43

43:                                               ; preds = %72, %42
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @conf, i32 0, i32 1), align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %43
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @conf, i32 0, i32 2), align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %48, i64 %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %47
  %57 = load %struct.listener_ctx_t*, %struct.listener_ctx_t** %2, align 8
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds %struct.listener_ctx_t, %struct.listener_ctx_t* %57, i64 %58
  %60 = getelementptr inbounds %struct.listener_ctx_t, %struct.listener_ctx_t* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @h2o_socket_is_reading(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load %struct.listener_ctx_t*, %struct.listener_ctx_t** %2, align 8
  %66 = load i64, i64* %3, align 8
  %67 = getelementptr inbounds %struct.listener_ctx_t, %struct.listener_ctx_t* %65, i64 %66
  %68 = getelementptr inbounds %struct.listener_ctx_t, %struct.listener_ctx_t* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @h2o_socket_read_stop(i32 %69)
  br label %71

71:                                               ; preds = %64, %56, %47
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %43

75:                                               ; preds = %43
  br label %76

76:                                               ; preds = %75, %41
  ret void
}

declare dso_local i64 @num_connections(i32) #1

declare dso_local i64 @h2o_socket_is_reading(i32) #1

declare dso_local i32 @h2o_socket_read_start(i32, i32) #1

declare dso_local i32 @h2o_socket_read_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
