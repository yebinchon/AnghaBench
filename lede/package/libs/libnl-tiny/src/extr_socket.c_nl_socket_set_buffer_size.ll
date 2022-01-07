; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_nl_socket_set_buffer_size.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_nl_socket_set_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32, i32 }

@NLE_BAD_SOCK = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@NL_SOCK_BUFSIZE_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_socket_set_buffer_size(%struct.nl_sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nl_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nl_sock* %0, %struct.nl_sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 32768, i32* %6, align 4
  br label %12

12:                                               ; preds = %11, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 32768, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %18 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @NLE_BAD_SOCK, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %16
  %25 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %26 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SOL_SOCKET, align 4
  %29 = load i32, i32* @SO_SNDBUF, align 4
  %30 = call i32 @setsockopt(i32 %27, i32 %28, i32 %29, i32* %7, i32 4)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @nl_syserr2nlerr(i32 %34)
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %56

37:                                               ; preds = %24
  %38 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %39 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SOL_SOCKET, align 4
  %42 = load i32, i32* @SO_RCVBUF, align 4
  %43 = call i32 @setsockopt(i32 %40, i32 %41, i32 %42, i32* %6, i32 4)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @nl_syserr2nlerr(i32 %47)
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %56

50:                                               ; preds = %37
  %51 = load i32, i32* @NL_SOCK_BUFSIZE_SET, align 4
  %52 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %53 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %46, %33, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @nl_syserr2nlerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
