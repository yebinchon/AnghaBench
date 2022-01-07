; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocket.c_destroy_ssl.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocket.c_destroy_ssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_socket_ssl_t = type { %struct.TYPE_8__, i32*, %struct.TYPE_7__, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.st_h2o_socket_ssl_t* }
%struct.TYPE_5__ = type { %struct.st_h2o_socket_ssl_t* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_socket_ssl_t*)* @destroy_ssl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_ssl(%struct.st_h2o_socket_ssl_t* %0) #0 {
  %2 = alloca %struct.st_h2o_socket_ssl_t*, align 8
  store %struct.st_h2o_socket_ssl_t* %0, %struct.st_h2o_socket_ssl_t** %2, align 8
  %3 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %2, align 8
  %4 = getelementptr inbounds %struct.st_h2o_socket_ssl_t, %struct.st_h2o_socket_ssl_t* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %2, align 8
  %9 = getelementptr inbounds %struct.st_h2o_socket_ssl_t, %struct.st_h2o_socket_ssl_t* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @ptls_free(i32* %10)
  %12 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %2, align 8
  %13 = getelementptr inbounds %struct.st_h2o_socket_ssl_t, %struct.st_h2o_socket_ssl_t* %12, i32 0, i32 3
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %2, align 8
  %16 = getelementptr inbounds %struct.st_h2o_socket_ssl_t, %struct.st_h2o_socket_ssl_t* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %2, align 8
  %21 = getelementptr inbounds %struct.st_h2o_socket_ssl_t, %struct.st_h2o_socket_ssl_t* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @SSL_is_server(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %19
  %26 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %2, align 8
  %27 = getelementptr inbounds %struct.st_h2o_socket_ssl_t, %struct.st_h2o_socket_ssl_t* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %29, align 8
  %31 = call i32 @free(%struct.st_h2o_socket_ssl_t* %30)
  %32 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %2, align 8
  %33 = getelementptr inbounds %struct.st_h2o_socket_ssl_t, %struct.st_h2o_socket_ssl_t* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %36, align 8
  %38 = call i32 @free(%struct.st_h2o_socket_ssl_t* %37)
  br label %39

39:                                               ; preds = %25, %19
  %40 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %2, align 8
  %41 = getelementptr inbounds %struct.st_h2o_socket_ssl_t, %struct.st_h2o_socket_ssl_t* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @SSL_free(i32* %42)
  %44 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %2, align 8
  %45 = getelementptr inbounds %struct.st_h2o_socket_ssl_t, %struct.st_h2o_socket_ssl_t* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %14
  %47 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %2, align 8
  %48 = getelementptr inbounds %struct.st_h2o_socket_ssl_t, %struct.st_h2o_socket_ssl_t* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @h2o_buffer_dispose(i32* %49)
  %51 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %2, align 8
  %52 = call i32 @clear_output_buffer(%struct.st_h2o_socket_ssl_t* %51)
  %53 = load %struct.st_h2o_socket_ssl_t*, %struct.st_h2o_socket_ssl_t** %2, align 8
  %54 = call i32 @free(%struct.st_h2o_socket_ssl_t* %53)
  ret void
}

declare dso_local i32 @ptls_free(i32*) #1

declare dso_local i32 @SSL_is_server(i32*) #1

declare dso_local i32 @free(%struct.st_h2o_socket_ssl_t*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @h2o_buffer_dispose(i32*) #1

declare dso_local i32 @clear_output_buffer(%struct.st_h2o_socket_ssl_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
