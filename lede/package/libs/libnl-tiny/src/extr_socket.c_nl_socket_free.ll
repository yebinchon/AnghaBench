; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_nl_socket_free.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_nl_socket_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NL_OWN_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl_socket_free(%struct.nl_sock* %0) #0 {
  %2 = alloca %struct.nl_sock*, align 8
  store %struct.nl_sock* %0, %struct.nl_sock** %2, align 8
  %3 = load %struct.nl_sock*, %struct.nl_sock** %2, align 8
  %4 = icmp ne %struct.nl_sock* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %36

6:                                                ; preds = %1
  %7 = load %struct.nl_sock*, %struct.nl_sock** %2, align 8
  %8 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.nl_sock*, %struct.nl_sock** %2, align 8
  %13 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @close(i64 %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.nl_sock*, %struct.nl_sock** %2, align 8
  %18 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NL_OWN_PORT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = load %struct.nl_sock*, %struct.nl_sock** %2, align 8
  %25 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @release_local_port(i32 %27)
  br label %29

29:                                               ; preds = %23, %16
  %30 = load %struct.nl_sock*, %struct.nl_sock** %2, align 8
  %31 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nl_cb_put(i32 %32)
  %34 = load %struct.nl_sock*, %struct.nl_sock** %2, align 8
  %35 = call i32 @free(%struct.nl_sock* %34)
  br label %36

36:                                               ; preds = %29, %5
  ret void
}

declare dso_local i32 @close(i64) #1

declare dso_local i32 @release_local_port(i32) #1

declare dso_local i32 @nl_cb_put(i32) #1

declare dso_local i32 @free(%struct.nl_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
