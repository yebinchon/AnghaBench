; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_fs-poll.c_uv_fs_poll_start.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_fs-poll.c_uv_fs_poll_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.poll_ctx*, i32* }
%struct.poll_ctx = type { i32, %struct.poll_ctx*, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__*, i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }

@UV_ENOMEM = common dso_local global i32 0, align 4
@UV_HANDLE_INTERNAL = common dso_local global i32 0, align 4
@poll_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_fs_poll_start(%struct.TYPE_6__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.poll_ctx*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = bitcast %struct.TYPE_6__* %14 to i32*
  %16 = call i64 @uv_is_active(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %112

19:                                               ; preds = %4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = add i64 56, %25
  %27 = trunc i64 %26 to i32
  %28 = call %struct.poll_ctx* @uv__calloc(i32 1, i32 %27)
  store %struct.poll_ctx* %28, %struct.poll_ctx** %10, align 8
  %29 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %30 = icmp eq %struct.poll_ctx* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %32, i32* %5, align 4
  br label %112

33:                                               ; preds = %19
  %34 = load i32*, i32** %11, align 8
  %35 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %36 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %35, i32 0, i32 8
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %39 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  br label %45

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 1, %44 ]
  %47 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %48 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @uv_now(i32* %49)
  %51 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %52 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %55 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %54, i32 0, i32 5
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %55, align 8
  %56 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %57 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %60, 1
  %62 = call i32 @memcpy(i32 %58, i8* %59, i64 %61)
  %63 = load i32*, i32** %11, align 8
  %64 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %65 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %64, i32 0, i32 4
  %66 = call i32 @uv_timer_init(i32* %63, %struct.TYPE_7__* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %45
  br label %108

70:                                               ; preds = %45
  %71 = load i32, i32* @UV_HANDLE_INTERNAL, align 4
  %72 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %73 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %78 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %77, i32 0, i32 4
  %79 = call i32 @uv__handle_unref(%struct.TYPE_7__* %78)
  %80 = load i32*, i32** %11, align 8
  %81 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %82 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %81, i32 0, i32 3
  %83 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %84 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @poll_cb, align 4
  %87 = call i32 @uv_fs_stat(i32* %80, i32* %82, i32 %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %70
  br label %108

91:                                               ; preds = %70
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.poll_ctx*, %struct.poll_ctx** %93, align 8
  %95 = icmp ne %struct.poll_ctx* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.poll_ctx*, %struct.poll_ctx** %98, align 8
  %100 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %101 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %100, i32 0, i32 1
  store %struct.poll_ctx* %99, %struct.poll_ctx** %101, align 8
  br label %102

102:                                              ; preds = %96, %91
  %103 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store %struct.poll_ctx* %103, %struct.poll_ctx** %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = call i32 @uv__handle_start(%struct.TYPE_6__* %106)
  store i32 0, i32* %5, align 4
  br label %112

108:                                              ; preds = %90, %69
  %109 = load %struct.poll_ctx*, %struct.poll_ctx** %10, align 8
  %110 = call i32 @uv__free(%struct.poll_ctx* %109)
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %108, %102, %31, %18
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64 @uv_is_active(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.poll_ctx* @uv__calloc(i32, i32) #1

declare dso_local i32 @uv_now(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @uv_timer_init(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @uv__handle_unref(%struct.TYPE_7__*) #1

declare dso_local i32 @uv_fs_stat(i32*, i32*, i32, i32) #1

declare dso_local i32 @uv__handle_start(%struct.TYPE_6__*) #1

declare dso_local i32 @uv__free(%struct.poll_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
