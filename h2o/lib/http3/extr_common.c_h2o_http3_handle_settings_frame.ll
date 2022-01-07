; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_h2o_http3_handle_settings_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_h2o_http3_handle_settings_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@H2O_HTTP3_DEFAULT_HEADER_TABLE_SIZE = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"malformed SETTINGS frame\00", align 1
@H2O_HTTP3_ERROR_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_http3_handle_settings_frame(%struct.TYPE_8__* %0, i32* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32* %18, i32** %11, align 8
  %19 = load i32, i32* @H2O_HTTP3_DEFAULT_HEADER_TABLE_SIZE, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = call i32 @h2o_http3_has_received_settings(%struct.TYPE_8__* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  br label %26

26:                                               ; preds = %64, %4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @quicly_decodev(i32** %10, i32* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* @UINT64_MAX, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %71

36:                                               ; preds = %30
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @quicly_decodev(i32** %10, i32* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* @UINT64_MAX, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %71

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  switch i32 %43, label %63 [
    i32 129, label %44
    i32 128, label %49
    i32 130, label %61
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  br label %64

49:                                               ; preds = %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @quicly_is_client(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %71

56:                                               ; preds = %49
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  br label %64

61:                                               ; preds = %42
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %12, align 4
  br label %64

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63, %61, %56, %44
  br label %26

65:                                               ; preds = %26
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @h2o_qpack_create_encoder(i32 %66, i32 100)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  store i32 0, i32* %5, align 4
  br label %74

71:                                               ; preds = %55, %41, %35
  %72 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %72, align 8
  %73 = load i32, i32* @H2O_HTTP3_ERROR_FRAME, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_http3_has_received_settings(%struct.TYPE_8__*) #1

declare dso_local i32 @quicly_decodev(i32**, i32*) #1

declare dso_local i32 @quicly_is_client(i32) #1

declare dso_local i32 @h2o_qpack_create_encoder(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
