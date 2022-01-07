; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_os390.c_uv_fs_event_start.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_os390.c_uv_fs_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__**, i32, i32 }

@UV_EINVAL = common dso_local global i32 0, align 4
@_RFIS_REG = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4
@_IOCC_REGFILEINT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_fs_event_start(%struct.TYPE_11__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = call i64 @uv__is_active(%struct.TYPE_11__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @UV_EINVAL, align 4
  store i32 %18, i32* %5, align 4
  br label %71

19:                                               ; preds = %4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %10, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, -1
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* @_RFIS_REG, align 4
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @memcpy(i32 %39, %struct.TYPE_11__** %6, i32 8)
  %41 = load i8*, i8** %8, align 8
  %42 = call i8* @uv__strdup(i8* %41)
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %19
  %46 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %46, i32* %5, align 4
  br label %71

47:                                               ; preds = %19
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* @_IOCC_REGFILEINT, align 4
  %50 = call i32 @__w_pioctl(i8* %48, i32 %49, i32 24, %struct.TYPE_13__* %11)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 @UV__ERR(i32 %54)
  store i32 %55, i32* %5, align 4
  br label %71

56:                                               ; preds = %47
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = call i32 @uv__handle_start(%struct.TYPE_11__* %57)
  %59 = load i8*, i8** %12, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %69 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %68, align 8
  %70 = call i32 @memcpy(i32 %67, %struct.TYPE_11__** %69, i32 4)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %56, %53, %45, %17
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @uv__is_active(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_11__**, i32) #1

declare dso_local i8* @uv__strdup(i8*) #1

declare dso_local i32 @__w_pioctl(i8*, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i32 @uv__handle_start(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
