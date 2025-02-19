; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_be_openssl_set_fd.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_be_openssl_set_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*, i32, i32)* @be_openssl_set_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_openssl_set_fd(%struct.bufferevent_openssl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent_openssl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %10 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %55 [
    i32 130, label %12
    i32 129, label %30
    i32 128, label %48
  ]

12:                                               ; preds = %3
  %13 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %14 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SSL_clear(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %57

19:                                               ; preds = %12
  %20 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %21 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SSL_set_accept_state(i32 %22)
  %24 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @set_handshake_callbacks(%struct.bufferevent_openssl* %24, i32 %25)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %57

29:                                               ; preds = %19
  br label %56

30:                                               ; preds = %3
  %31 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %32 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SSL_clear(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %57

37:                                               ; preds = %30
  %38 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %39 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SSL_set_connect_state(i32 %40)
  %42 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @set_handshake_callbacks(%struct.bufferevent_openssl* %42, i32 %43)
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %57

47:                                               ; preds = %37
  br label %56

48:                                               ; preds = %3
  %49 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @set_open_callbacks(%struct.bufferevent_openssl* %49, i32 %50)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %57

54:                                               ; preds = %48
  br label %56

55:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %57

56:                                               ; preds = %54, %47, %29
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %55, %53, %46, %36, %28, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @SSL_clear(i32) #1

declare dso_local i32 @SSL_set_accept_state(i32) #1

declare dso_local i32 @set_handshake_callbacks(%struct.bufferevent_openssl*, i32) #1

declare dso_local i32 @SSL_set_connect_state(i32) #1

declare dso_local i32 @set_open_callbacks(%struct.bufferevent_openssl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
