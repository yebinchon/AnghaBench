; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_do_update_window.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_do_update_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1client_t = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__** }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @do_update_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_update_window(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.st_h2o_http1client_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = bitcast i8* %5 to %struct.st_h2o_http1client_t*
  store %struct.st_h2o_http1client_t* %6, %struct.st_h2o_http1client_t** %3, align 8
  %7 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %3, align 8
  %8 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %3, align 8
  %15 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %13, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %1
  %22 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %3, align 8
  %23 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = call i64 @h2o_socket_is_reading(%struct.TYPE_12__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %3, align 8
  %29 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %3, align 8
  %35 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %3, align 8
  %37 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = call i32 @h2o_socket_read_stop(%struct.TYPE_12__* %38)
  br label %40

40:                                               ; preds = %27, %21
  br label %56

41:                                               ; preds = %1
  %42 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %3, align 8
  %43 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = call i64 @h2o_socket_is_reading(%struct.TYPE_12__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %3, align 8
  %49 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %3, align 8
  %52 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @h2o_socket_read_start(%struct.TYPE_12__* %50, i32 %53)
  br label %55

55:                                               ; preds = %47, %41
  br label %56

56:                                               ; preds = %55, %40
  ret void
}

declare dso_local i64 @h2o_socket_is_reading(%struct.TYPE_12__*) #1

declare dso_local i32 @h2o_socket_read_stop(%struct.TYPE_12__*) #1

declare dso_local i32 @h2o_socket_read_start(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
