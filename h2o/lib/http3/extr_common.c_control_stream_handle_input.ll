; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_control_stream_handle_input.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_control_stream_handle_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i64, i32, i32, i8**)* }
%struct.st_h2o_http3_ingress_unistream_t = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@H2O_HTTP3_STREAM_TYPE_CONTROL = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_INCOMPLETE = common dso_local global i32 0, align 4
@H2O_HTTP3_FRAME_TYPE_SETTINGS = common dso_local global i64 0, align 8
@H2O_HTTP3_FRAME_TYPE_DATA = common dso_local global i64 0, align 8
@H2O_HTTP3_ERROR_FRAME_UNEXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)* @control_stream_handle_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_stream_handle_input(%struct.TYPE_10__* %0, %struct.st_h2o_http3_ingress_unistream_t* %1, i32** %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.st_h2o_http3_ingress_unistream_t*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.st_h2o_http3_ingress_unistream_t* %1, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  br label %14

14:                                               ; preds = %65, %5
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @quicly_is_client(i32 %17)
  %19 = load i32, i32* @H2O_HTTP3_STREAM_TYPE_CONTROL, align 4
  %20 = load i32**, i32*** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i8**, i8*** %11, align 8
  %23 = call i32 @h2o_http3_read_frame(%struct.TYPE_9__* %12, i32 %18, i32 %19, i32** %20, i32* %21, i8** %22)
  store i32 %23, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @H2O_HTTP3_ERROR_INCOMPLETE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %29, %25
  br label %70

31:                                               ; preds = %14
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = call i32 @h2o_http3_has_received_settings(%struct.TYPE_10__* %32)
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @H2O_HTTP3_FRAME_TYPE_SETTINGS, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = icmp eq i32 %33, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @H2O_HTTP3_FRAME_TYPE_DATA, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40, %31
  %46 = load i32, i32* @H2O_HTTP3_ERROR_FRAME_UNEXPECTED, align 4
  store i32 %46, i32* %6, align 4
  br label %72

47:                                               ; preds = %40
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_10__*, i64, i32, i32, i8**)*, i32 (%struct.TYPE_10__*, i64, i32, i32, i8**)** %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i8**, i8*** %11, align 8
  %61 = call i32 %52(%struct.TYPE_10__* %53, i64 %55, i32 %57, i32 %59, i8** %60)
  store i32 %61, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %70

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64
  %66 = load i32**, i32*** %9, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %67, %68
  br i1 %69, label %14, label %70

70:                                               ; preds = %65, %63, %30
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %45
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @h2o_http3_read_frame(%struct.TYPE_9__*, i32, i32, i32**, i32*, i8**) #1

declare dso_local i32 @quicly_is_client(i32) #1

declare dso_local i32 @h2o_http3_has_received_settings(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
