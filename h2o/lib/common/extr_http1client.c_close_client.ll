; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_close_client.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_close_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1client_t = type { i32*, i32*, %struct.TYPE_8__, %struct.TYPE_10__*, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1client_t*)* @close_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_client(%struct.st_h2o_http1client_t* %0) #0 {
  %2 = alloca %struct.st_h2o_http1client_t*, align 8
  store %struct.st_h2o_http1client_t* %0, %struct.st_h2o_http1client_t** %2, align 8
  %3 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %4 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %3, i32 0, i32 3
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %6 = icmp ne %struct.TYPE_10__* %5, null
  br i1 %6, label %7, label %57

7:                                                ; preds = %1
  %8 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %9 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %7
  %14 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %15 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %13
  %19 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %20 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %18
  %29 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %30 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %29, i32 0, i32 3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %34 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %33, i32 0, i32 3
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @h2o_buffer_consume(%struct.TYPE_11__** %32, i32 %39)
  %41 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %42 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %48 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %47, i32 0, i32 3
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = call i32 @h2o_socketpool_return(%struct.TYPE_9__* %46, %struct.TYPE_10__* %49)
  br label %56

51:                                               ; preds = %18, %13, %7
  %52 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %53 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %52, i32 0, i32 3
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = call i32 @h2o_socket_close(%struct.TYPE_10__* %54)
  br label %56

56:                                               ; preds = %51, %28
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %59 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = call i64 @h2o_timer_is_linked(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %65 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = call i32 @h2o_timer_unlink(i32* %66)
  br label %68

68:                                               ; preds = %63, %57
  %69 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %70 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %75 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %74, i32 0, i32 1
  %76 = call i32 @h2o_buffer_dispose(i32** %75)
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %79 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %84 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %83, i32 0, i32 0
  %85 = call i32 @h2o_buffer_dispose(i32** %84)
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %88 = call i32 @free(%struct.st_h2o_http1client_t* %87)
  ret void
}

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_11__**, i32) #1

declare dso_local i32 @h2o_socketpool_return(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @h2o_socket_close(%struct.TYPE_10__*) #1

declare dso_local i64 @h2o_timer_is_linked(i32*) #1

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @h2o_buffer_dispose(i32**) #1

declare dso_local i32 @free(%struct.st_h2o_http1client_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
