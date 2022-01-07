; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv_close.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@UV_HANDLE_CLOSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_close(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call i32 @uv__is_closing(%struct.TYPE_5__* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* @UV_HANDLE_CLOSING, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %78 [
    i32 136, label %22
    i32 129, label %26
    i32 131, label %30
    i32 128, label %34
    i32 134, label %38
    i32 140, label %42
    i32 137, label %46
    i32 141, label %50
    i32 130, label %54
    i32 133, label %58
    i32 139, label %62
    i32 135, label %66
    i32 138, label %70
    i32 132, label %74
  ]

22:                                               ; preds = %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = bitcast %struct.TYPE_5__* %23 to i32*
  %25 = call i32 @uv__pipe_close(i32* %24)
  br label %80

26:                                               ; preds = %2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = bitcast %struct.TYPE_5__* %27 to i32*
  %29 = call i32 @uv__stream_close(i32* %28)
  br label %80

30:                                               ; preds = %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = bitcast %struct.TYPE_5__* %31 to i32*
  %33 = call i32 @uv__tcp_close(i32* %32)
  br label %80

34:                                               ; preds = %2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = bitcast %struct.TYPE_5__* %35 to i32*
  %37 = call i32 @uv__udp_close(i32* %36)
  br label %80

38:                                               ; preds = %2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = bitcast %struct.TYPE_5__* %39 to i32*
  %41 = call i32 @uv__prepare_close(i32* %40)
  br label %80

42:                                               ; preds = %2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = bitcast %struct.TYPE_5__* %43 to i32*
  %45 = call i32 @uv__check_close(i32* %44)
  br label %80

46:                                               ; preds = %2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = bitcast %struct.TYPE_5__* %47 to i32*
  %49 = call i32 @uv__idle_close(i32* %48)
  br label %80

50:                                               ; preds = %2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = bitcast %struct.TYPE_5__* %51 to i32*
  %53 = call i32 @uv__async_close(i32* %52)
  br label %80

54:                                               ; preds = %2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = bitcast %struct.TYPE_5__* %55 to i32*
  %57 = call i32 @uv__timer_close(i32* %56)
  br label %80

58:                                               ; preds = %2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = bitcast %struct.TYPE_5__* %59 to i32*
  %61 = call i32 @uv__process_close(i32* %60)
  br label %80

62:                                               ; preds = %2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = bitcast %struct.TYPE_5__* %63 to i32*
  %65 = call i32 @uv__fs_event_close(i32* %64)
  br label %80

66:                                               ; preds = %2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = bitcast %struct.TYPE_5__* %67 to i32*
  %69 = call i32 @uv__poll_close(i32* %68)
  br label %80

70:                                               ; preds = %2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = bitcast %struct.TYPE_5__* %71 to i32*
  %73 = call i32 @uv__fs_poll_close(i32* %72)
  br label %83

74:                                               ; preds = %2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = bitcast %struct.TYPE_5__* %75 to i32*
  %77 = call i32 @uv__signal_close(i32* %76)
  br label %83

78:                                               ; preds = %2
  %79 = call i32 @assert(i32 0)
  br label %80

80:                                               ; preds = %78, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = call i32 @uv__make_close_pending(%struct.TYPE_5__* %81)
  br label %83

83:                                               ; preds = %80, %74, %70
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv__is_closing(%struct.TYPE_5__*) #1

declare dso_local i32 @uv__pipe_close(i32*) #1

declare dso_local i32 @uv__stream_close(i32*) #1

declare dso_local i32 @uv__tcp_close(i32*) #1

declare dso_local i32 @uv__udp_close(i32*) #1

declare dso_local i32 @uv__prepare_close(i32*) #1

declare dso_local i32 @uv__check_close(i32*) #1

declare dso_local i32 @uv__idle_close(i32*) #1

declare dso_local i32 @uv__async_close(i32*) #1

declare dso_local i32 @uv__timer_close(i32*) #1

declare dso_local i32 @uv__process_close(i32*) #1

declare dso_local i32 @uv__fs_event_close(i32*) #1

declare dso_local i32 @uv__poll_close(i32*) #1

declare dso_local i32 @uv__fs_poll_close(i32*) #1

declare dso_local i32 @uv__signal_close(i32*) #1

declare dso_local i32 @uv__make_close_pending(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
