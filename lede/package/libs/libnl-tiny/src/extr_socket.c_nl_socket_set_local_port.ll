; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_nl_socket_set_local_port.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_nl_socket_set_local_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NL_OWN_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl_socket_set_local_port(%struct.nl_sock* %0, i64 %1) #0 {
  %3 = alloca %struct.nl_sock*, align 8
  %4 = alloca i64, align 8
  store %struct.nl_sock* %0, %struct.nl_sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = call i64 (...) @generate_local_port()
  store i64 %8, i64* %4, align 8
  %9 = load i32, i32* @NL_OWN_PORT, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.nl_sock*, %struct.nl_sock** %3, align 8
  %12 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.nl_sock*, %struct.nl_sock** %3, align 8
  %17 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NL_OWN_PORT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.nl_sock*, %struct.nl_sock** %3, align 8
  %24 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @release_local_port(i64 %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load i32, i32* @NL_OWN_PORT, align 4
  %30 = load %struct.nl_sock*, %struct.nl_sock** %3, align 8
  %31 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %28, %7
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.nl_sock*, %struct.nl_sock** %3, align 8
  %37 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  ret void
}

declare dso_local i64 @generate_local_port(...) #1

declare dso_local i32 @release_local_port(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
