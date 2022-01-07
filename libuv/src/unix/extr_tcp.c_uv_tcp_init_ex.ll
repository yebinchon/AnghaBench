; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_tcp.c_uv_tcp_init_ex.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_tcp.c_uv_tcp_init_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_tcp_init_ex(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 255
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @AF_INET, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @AF_INET6, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @AF_UNSPEC, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @UV_EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %53

25:                                               ; preds = %19, %15, %3
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, -256
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @UV_EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %53

31:                                               ; preds = %25
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = bitcast %struct.TYPE_4__* %33 to i32*
  %35 = load i32, i32* @UV_TCP, align 4
  %36 = call i32 @uv__stream_init(i32* %32, i32* %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @AF_UNSPEC, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @maybe_new_socket(%struct.TYPE_4__* %41, i32 %42, i32 0)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @QUEUE_REMOVE(i32* %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %53

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %31
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %46, %29, %23
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @uv__stream_init(i32*, i32*, i32) #1

declare dso_local i32 @maybe_new_socket(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @QUEUE_REMOVE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
