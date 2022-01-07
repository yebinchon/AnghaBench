; ModuleID = '/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_client.c_do_next.c'
source_filename = "/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_client.c_do_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }

@s_dead = common dso_local global i32 0, align 4
@DEBUG_CHECKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @do_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_next(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %4 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @s_dead, align 4
  %8 = icmp ne i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %44 [
    i32 136, label %14
    i32 135, label %17
    i32 128, label %20
    i32 129, label %23
    i32 130, label %26
    i32 131, label %29
    i32 132, label %32
    i32 133, label %35
    i32 134, label %38
    i32 141, label %41
    i32 140, label %41
    i32 139, label %41
    i32 138, label %41
    i32 137, label %41
  ]

14:                                               ; preds = %1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = call i32 @do_handshake(%struct.TYPE_15__* %15)
  store i32 %16, i32* %3, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = call i32 @do_handshake_auth(%struct.TYPE_15__* %18)
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = call i32 @do_req_start(%struct.TYPE_15__* %21)
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = call i32 @do_req_parse(%struct.TYPE_15__* %24)
  store i32 %25, i32* %3, align 4
  br label %46

26:                                               ; preds = %1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = call i32 @do_req_lookup(%struct.TYPE_15__* %27)
  store i32 %28, i32* %3, align 4
  br label %46

29:                                               ; preds = %1
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = call i32 @do_req_connect(%struct.TYPE_15__* %30)
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = call i32 @do_proxy_start(%struct.TYPE_15__* %33)
  store i32 %34, i32* %3, align 4
  br label %46

35:                                               ; preds = %1
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = call i32 @do_proxy(%struct.TYPE_15__* %36)
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = call i32 @do_kill(%struct.TYPE_15__* %39)
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %1, %1, %1, %1, %1
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %43 = call i32 @do_almost_dead(%struct.TYPE_15__* %42)
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %1
  %45 = call i32 (...) @UNREACHABLE()
  br label %46

46:                                               ; preds = %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @s_dead, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load i64, i64* @DEBUG_CHECKS, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = call i32 @memset(%struct.TYPE_15__* %59, i32 -1, i32 4)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %63 = call i32 @free(%struct.TYPE_15__* %62)
  br label %64

64:                                               ; preds = %61, %46
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @do_handshake(%struct.TYPE_15__*) #1

declare dso_local i32 @do_handshake_auth(%struct.TYPE_15__*) #1

declare dso_local i32 @do_req_start(%struct.TYPE_15__*) #1

declare dso_local i32 @do_req_parse(%struct.TYPE_15__*) #1

declare dso_local i32 @do_req_lookup(%struct.TYPE_15__*) #1

declare dso_local i32 @do_req_connect(%struct.TYPE_15__*) #1

declare dso_local i32 @do_proxy_start(%struct.TYPE_15__*) #1

declare dso_local i32 @do_proxy(%struct.TYPE_15__*) #1

declare dso_local i32 @do_kill(%struct.TYPE_15__*) #1

declare dso_local i32 @do_almost_dead(%struct.TYPE_15__*) #1

declare dso_local i32 @UNREACHABLE(...) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
