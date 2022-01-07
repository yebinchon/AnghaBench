; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreutil.c_on_read_proxy_line.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreutil.c_on_read_proxy_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.st_h2o_accept_data_t*)* }
%struct.st_h2o_accept_data_t = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.st_h2o_accept_data_t*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }

@accept_data_callbacks = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@on_ssl_handshake_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*)* @on_read_proxy_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_read_proxy_line(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_accept_data_t*, align 8
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_h2o_accept_data_t*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %11, align 8
  store %struct.st_h2o_accept_data_t* %12, %struct.st_h2o_accept_data_t** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32 (%struct.st_h2o_accept_data_t*)*, i32 (%struct.st_h2o_accept_data_t*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @accept_data_callbacks, i32 0, i32 0), align 8
  %17 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %18 = call i32 %16(%struct.st_h2o_accept_data_t* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = call i32 @h2o_socket_close(%struct.TYPE_10__* %19)
  br label %84

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = bitcast %struct.sockaddr_storage* %6 to i8*
  %33 = call i32 @parse_proxy_line(i32 %26, i32 %31, i8* %32, i32* %7)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %37 [
    i32 -1, label %35
    i32 -2, label %36
  ]

35:                                               ; preds = %21
  br label %50

36:                                               ; preds = %21
  br label %84

37:                                               ; preds = %21
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @h2o_buffer_consume(%struct.TYPE_12__** %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = bitcast %struct.sockaddr_storage* %6 to i8*
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @h2o_socket_setpeername(%struct.TYPE_10__* %45, i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %37
  br label %50

50:                                               ; preds = %49, %35
  %51 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %52 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %60 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @h2o_iovec_init(i32* null, i32 0)
  %65 = load i32, i32* @on_ssl_handshake_complete, align 4
  %66 = call i32 @h2o_socket_ssl_handshake(%struct.TYPE_10__* %58, i32* %63, i32* null, i32 %64, i32 %65)
  br label %84

67:                                               ; preds = %50
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %69, align 8
  store %struct.st_h2o_accept_data_t* %70, %struct.st_h2o_accept_data_t** %9, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store %struct.st_h2o_accept_data_t* null, %struct.st_h2o_accept_data_t** %72, align 8
  %73 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %9, align 8
  %74 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %73, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %9, align 8
  %78 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @h2o_http1_accept(%struct.TYPE_11__* %75, %struct.TYPE_10__* %76, i32 %79)
  %81 = load i32 (%struct.st_h2o_accept_data_t*)*, i32 (%struct.st_h2o_accept_data_t*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @accept_data_callbacks, i32 0, i32 0), align 8
  %82 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %9, align 8
  %83 = call i32 %81(%struct.st_h2o_accept_data_t* %82)
  br label %84

84:                                               ; preds = %15, %36, %67, %57
  ret void
}

declare dso_local i32 @h2o_socket_close(%struct.TYPE_10__*) #1

declare dso_local i32 @parse_proxy_line(i32, i32, i8*, i32*) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_12__**, i32) #1

declare dso_local i32 @h2o_socket_setpeername(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @h2o_socket_ssl_handshake(%struct.TYPE_10__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @h2o_iovec_init(i32*, i32) #1

declare dso_local i32 @h2o_http1_accept(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
