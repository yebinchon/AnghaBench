; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filter.c_proxy_stream_close.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filter.c_proxy_stream_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy_stream = type { %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*, i32, i32)* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i32)* }
%struct.TYPE_12__ = type { i32 }

@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_stream_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_stream_close(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.proxy_stream*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.proxy_stream*
  store %struct.proxy_stream* %9, %struct.proxy_stream** %4, align 8
  %10 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %12 = call i32 @assert(%struct.proxy_stream* %11)
  %13 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %14 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %13, i32 0, i32 5
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_15__*, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_15__*, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i32)** %16, align 8
  %18 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %19 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %18, i32 0, i32 5
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %22 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %25 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %28 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %27, i32 0, i32 2
  %29 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %30 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %17(%struct.TYPE_15__* %20, i32 %23, %struct.TYPE_13__* %26, %struct.TYPE_13__* %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @GIT_PASSTHROUGH, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %38 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %37, i32 0, i32 2
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %5, align 8
  br label %65

39:                                               ; preds = %1
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %44 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %43, i32 0, i32 1
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = call i32 @git_buf_sanitize(%struct.TYPE_13__* %45)
  %47 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %48 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %47, i32 0, i32 1
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %5, align 8
  br label %64

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @git_error_state_capture(%struct.TYPE_12__* %6, i32 %51)
  %53 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %54 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %56, align 8
  %58 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %59 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %58, i32 0, i32 0
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = call i32 %57(%struct.TYPE_14__* %60)
  %62 = call i32 @git_error_state_restore(%struct.TYPE_12__* %6)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %94

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %67 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32 (%struct.TYPE_14__*, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32)** %69, align 8
  %71 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %72 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 %70(%struct.TYPE_14__* %73, i32 %76, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %65
  %83 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %84 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %83, i32 0, i32 0
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %86, align 8
  %88 = load %struct.proxy_stream*, %struct.proxy_stream** %4, align 8
  %89 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %88, i32 0, i32 0
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = call i32 %87(%struct.TYPE_14__* %90)
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %82, %65
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %50
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.proxy_stream*) #2

declare dso_local i32 @git_buf_sanitize(%struct.TYPE_13__*) #2

declare dso_local i32 @git_error_state_capture(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @git_error_state_restore(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
