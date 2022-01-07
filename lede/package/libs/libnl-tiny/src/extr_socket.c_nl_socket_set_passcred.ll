; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_nl_socket_set_passcred.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_nl_socket_set_passcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32, i32 }

@NLE_BAD_SOCK = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_PASSCRED = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NL_SOCK_PASSCRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_socket_set_passcred(%struct.nl_sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nl_sock* %0, %struct.nl_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %8 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @NLE_BAD_SOCK, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %16 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SOL_SOCKET, align 4
  %19 = load i32, i32* @SO_PASSCRED, align 4
  %20 = call i32 @setsockopt(i32 %17, i32 %18, i32 %19, i32* %5, i32 4)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @nl_syserr2nlerr(i32 %24)
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %44

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* @NL_SOCK_PASSCRED, align 4
  %32 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %33 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %43

36:                                               ; preds = %27
  %37 = load i32, i32* @NL_SOCK_PASSCRED, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %40 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %30
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %23, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @nl_syserr2nlerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
