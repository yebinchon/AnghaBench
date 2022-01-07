; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_bind.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32 }
%struct.evhttp_bound_socket = type { i32 }

@HTTP_BIND_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Could not start web server\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evhttp*, i64*, i32)* @http_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_bind(%struct.evhttp* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evhttp*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.evhttp_bound_socket*, align 8
  %10 = alloca i32, align 4
  store %struct.evhttp* %0, %struct.evhttp** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @HTTP_BIND_IPV6, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.evhttp_bound_socket* @evhttp_bind_socket_with_handle(%struct.evhttp* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %19)
  store %struct.evhttp_bound_socket* %20, %struct.evhttp_bound_socket** %9, align 8
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.evhttp_bound_socket* @evhttp_bind_socket_with_handle(%struct.evhttp* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  store %struct.evhttp_bound_socket* %25, %struct.evhttp_bound_socket** %9, align 8
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %9, align 8
  %28 = icmp eq %struct.evhttp_bound_socket* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %47

33:                                               ; preds = %29
  %34 = call i32 @event_errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35, %26
  %37 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %9, align 8
  %38 = call i32 @evhttp_bound_socket_get_fd(%struct.evhttp_bound_socket* %37)
  %39 = call i32 @regress_get_socket_port(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %47

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64*, i64** %6, align 8
  store i64 %45, i64* %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %42, %32
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.evhttp_bound_socket* @evhttp_bind_socket_with_handle(%struct.evhttp*, i8*, i64) #1

declare dso_local i32 @event_errx(i32, i8*) #1

declare dso_local i32 @regress_get_socket_port(i32) #1

declare dso_local i32 @evhttp_bound_socket_get_fd(%struct.evhttp_bound_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
