; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_getnameinfo.c_uv_getnameinfo.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_getnameinfo.c_uv_getnameinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i64, i32 }
%struct.sockaddr = type { i64 }

@UV_EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@UV_GETNAMEINFO = common dso_local global i32 0, align 4
@UV__WORK_SLOW_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_getnameinfo(i32* %0, %struct.TYPE_5__* %1, i64 %2, %struct.sockaddr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %16 = icmp eq %struct.sockaddr* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %5
  %18 = load i32, i32* @UV_EINVAL, align 4
  store i32 %18, i32* %6, align 4
  br label %80

19:                                               ; preds = %14
  %20 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 5
  %28 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %29 = call i32 @memcpy(i32* %27, %struct.sockaddr* %28, i32 4)
  br label %44

30:                                               ; preds = %19
  %31 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %32 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_INET6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  %39 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %40 = call i32 @memcpy(i32* %38, %struct.sockaddr* %39, i32 4)
  br label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @UV_EINVAL, align 4
  store i32 %42, i32* %6, align 4
  br label %80

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %25
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = load i32, i32* @UV_GETNAMEINFO, align 4
  %47 = call i32 @UV_REQ_INIT(%struct.TYPE_5__* %45, i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = call i32 @uv__req_register(i32* %48, %struct.TYPE_5__* %49)
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %44
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* @UV__WORK_SLOW_IO, align 4
  %69 = call i32 @uv__work_submit(i32* %65, i32* %67, i32 %68, i32 (i32*)* @uv__getnameinfo_work, i32 (i32*, i32)* @uv__getnameinfo_done)
  store i32 0, i32* %6, align 4
  br label %80

70:                                               ; preds = %44
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = call i32 @uv__getnameinfo_work(i32* %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = call i32 @uv__getnameinfo_done(i32* %75, i32 0)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %70, %64, %41, %17
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @UV_REQ_INIT(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @uv__req_register(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @uv__work_submit(i32*, i32*, i32, i32 (i32*)*, i32 (i32*, i32)*) #1

declare dso_local i32 @uv__getnameinfo_work(i32*) #1

declare dso_local i32 @uv__getnameinfo_done(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
