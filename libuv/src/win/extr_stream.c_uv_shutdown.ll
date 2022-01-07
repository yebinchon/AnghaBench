; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_stream.c_uv_shutdown.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_stream.c_uv_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }

@UV_HANDLE_WRITABLE = common dso_local global i32 0, align 4
@UV_HANDLE_SHUTTING = common dso_local global i32 0, align 4
@UV_ENOTCONN = common dso_local global i32 0, align 4
@UV_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_shutdown(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %8, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @UV_HANDLE_SHUTTING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = call i64 @uv__is_closing(%struct.TYPE_13__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %18, %3
  %30 = load i32, i32* @UV_ENOTCONN, align 4
  store i32 %30, i32* %4, align 4
  br label %69

31:                                               ; preds = %25
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = load i32, i32* @UV_SHUTDOWN, align 4
  %34 = call i32 @UV_REQ_INIT(%struct.TYPE_14__* %32, i32 %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @UV_HANDLE_SHUTTING, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = call i32 @REGISTER_HANDLE_REQ(i32* %61, %struct.TYPE_13__* %62, %struct.TYPE_14__* %63)
  %65 = load i32*, i32** %8, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = bitcast %struct.TYPE_13__* %66 to i32*
  %68 = call i32 @uv_want_endgame(i32* %65, i32* %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %31, %29
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @uv__is_closing(%struct.TYPE_13__*) #1

declare dso_local i32 @UV_REQ_INIT(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @REGISTER_HANDLE_REQ(i32*, %struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @uv_want_endgame(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
