; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/uvwget/extr_main.c_handle_socket.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/uvwget/extr_main.c_handle_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@curl_handle = common dso_local global i32 0, align 4
@UV_READABLE = common dso_local global i32 0, align 4
@curl_perform = common dso_local global i32 0, align 4
@UV_WRITABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_socket(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 130
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 129
  br i1 %16, label %17, label %32

17:                                               ; preds = %14, %5
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %11, align 8
  br label %31

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.TYPE_4__* @create_curl_context(i32 %24)
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %11, align 8
  %26 = load i32, i32* @curl_handle, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = bitcast %struct.TYPE_4__* %28 to i8*
  %30 = call i32 @curl_multi_assign(i32 %26, i32 %27, i8* %29)
  br label %31

31:                                               ; preds = %23, %20
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %61 [
    i32 130, label %34
    i32 129, label %40
    i32 128, label %46
  ]

34:                                               ; preds = %32
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* @UV_READABLE, align 4
  %38 = load i32, i32* @curl_perform, align 4
  %39 = call i32 @uv_poll_start(i32* %36, i32 %37, i32 %38)
  br label %63

40:                                               ; preds = %32
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* @UV_WRITABLE, align 4
  %44 = load i32, i32* @curl_perform, align 4
  %45 = call i32 @uv_poll_start(i32* %42, i32 %43, i32 %44)
  br label %63

46:                                               ; preds = %32
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i8*, i8** %10, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @uv_poll_stop(i32* %52)
  %54 = load i8*, i8** %10, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_4__*
  %56 = call i32 @destroy_curl_context(%struct.TYPE_4__* %55)
  %57 = load i32, i32* @curl_handle, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @curl_multi_assign(i32 %57, i32 %58, i8* null)
  br label %60

60:                                               ; preds = %49, %46
  br label %63

61:                                               ; preds = %32
  %62 = call i32 (...) @abort() #3
  unreachable

63:                                               ; preds = %60, %40, %34
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @create_curl_context(i32) #1

declare dso_local i32 @curl_multi_assign(i32, i32, i8*) #1

declare dso_local i32 @uv_poll_start(i32*, i32, i32) #1

declare dso_local i32 @uv_poll_stop(i32*) #1

declare dso_local i32 @destroy_curl_context(%struct.TYPE_4__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
