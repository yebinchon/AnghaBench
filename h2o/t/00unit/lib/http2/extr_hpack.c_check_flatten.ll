; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_hpack.c_check_flatten.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_hpack.c_check_flatten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i32 }

@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@H2O_HTTP2_SETTINGS_DEFAULT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, i8*, i64)* @check_flatten to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_flatten(i32* %0, %struct.TYPE_13__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = call i32 @h2o_buffer_init(%struct.TYPE_15__** %9, i32* @h2o_socket_buffer_prototype)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @H2O_HTTP2_SETTINGS_DEFAULT, i32 0, i32 0), align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SIZE_MAX, align 4
  %27 = call i32 @h2o_hpack_flatten_response(%struct.TYPE_15__** %9, i32* %13, i32 1, i32 %14, i32 %17, i32 %21, i32 %25, i32* null, i32 %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @H2O_HTTP2_SETTINGS_DEFAULT, i32 0, i32 0), align 4
  %36 = call i64 @h2o_http2_decode_frame(%struct.TYPE_14__* %10, i32* %31, i32 %34, i32 %35, i8** %11)
  %37 = icmp sgt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @h2o_memis(i32 %41, i32 %43, i8* %44, i64 %45)
  %47 = call i32 @ok(i32 %46)
  %48 = call i32 @h2o_buffer_dispose(%struct.TYPE_15__** %9)
  ret void
}

declare dso_local i32 @h2o_buffer_init(%struct.TYPE_15__**, i32*) #1

declare dso_local i32 @h2o_hpack_flatten_response(%struct.TYPE_15__**, i32*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @h2o_http2_decode_frame(%struct.TYPE_14__*, i32*, i32, i32, i8**) #1

declare dso_local i32 @h2o_memis(i32, i32, i8*, i64) #1

declare dso_local i32 @h2o_buffer_dispose(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
