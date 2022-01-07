; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_test_close.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_test_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@test_closeed_by_peer = common dso_local global i32 0, align 4
@quic_ctx = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@client = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"good bye\00", align 1
@QUICLY_STATE_CLOSING = common dso_local global i64 0, align 8
@quic_now = common dso_local global i64 0, align 8
@server = common dso_local global i32* null, align 8
@fake_address = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@test_close_error_code = common dso_local global i32 0, align 4
@QUICLY_STATE_DRAINING = common dso_local global i64 0, align 8
@QUICLY_ERROR_FREE_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_close() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %10 = load i32, i32* @test_closeed_by_peer, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @quic_ctx, i32 0, i32 0), align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @quic_ctx, i32 0, i32 0), align 8
  %12 = load i32*, i32** @client, align 8
  %13 = call i32 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 12345)
  %14 = call i32 @quicly_close(i32* %12, i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ok(i32 %17)
  %19 = load i32*, i32** @client, align 8
  %20 = call i64 @quicly_get_state(i32* %19)
  %21 = load i64, i64* @QUICLY_STATE_CLOSING, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23)
  %25 = load i32*, i32** @client, align 8
  %26 = call i64 @quicly_get_first_timeout(i32* %25)
  %27 = load i64, i64* @quic_now, align 8
  %28 = icmp sle i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29)
  store i64 1, i64* %4, align 8
  %31 = load i32*, i32** @client, align 8
  %32 = call i32 @quicly_send(i32* %31, i32** %3, i64* %4)
  store i32 %32, i32* %7, align 4
  %33 = load i64, i64* %4, align 8
  %34 = icmp eq i64 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32*, i32** @client, align 8
  %38 = call i64 @quicly_get_first_timeout(i32* %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* @quic_now, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %0
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @quic_now, align 8
  %45 = add nsw i64 %44, 1000
  %46 = icmp slt i64 %43, %45
  br label %47

47:                                               ; preds = %42, %0
  %48 = phi i1 [ false, %0 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @ok(i32 %49)
  %51 = call i32 @decode_packets(i32* %8, i32** %3, i32 1)
  %52 = load i32*, i32** @server, align 8
  %53 = call i32 @quicly_receive(i32* %52, i32* null, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fake_address, i32 0, i32 0), i32* %8)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @ok(i32 %56)
  %58 = load i32, i32* @test_close_error_code, align 4
  %59 = icmp eq i32 %58, 12345
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60)
  %62 = load i32*, i32** @server, align 8
  %63 = call i64 @quicly_get_state(i32* %62)
  %64 = load i64, i64* @QUICLY_STATE_DRAINING, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66)
  %68 = load i32*, i32** @server, align 8
  %69 = call i64 @quicly_get_first_timeout(i32* %68)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* @quic_now, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %47
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @quic_now, align 8
  %76 = add nsw i64 %75, 1000
  %77 = icmp slt i64 %74, %76
  br label %78

78:                                               ; preds = %73, %47
  %79 = phi i1 [ false, %47 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @ok(i32 %80)
  store i64 1, i64* %4, align 8
  %82 = load i32*, i32** @server, align 8
  %83 = call i32 @quicly_send(i32* %82, i32** %3, i64* %4)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @ok(i32 %86)
  %88 = load i64, i64* %4, align 8
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @ok(i32 %90)
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %78
  %96 = load i64, i64* %6, align 8
  br label %99

97:                                               ; preds = %78
  %98 = load i64, i64* %5, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i64 [ %96, %95 ], [ %98, %97 ]
  store i64 %100, i64* @quic_now, align 8
  store i64 1, i64* %4, align 8
  %101 = load i32*, i32** @client, align 8
  %102 = call i32 @quicly_send(i32* %101, i32** %3, i64* %4)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @QUICLY_ERROR_FREE_CONNECTION, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @ok(i32 %106)
  %108 = load i32*, i32** @client, align 8
  %109 = call i32 @quicly_free(i32* %108)
  store i64 1, i64* %4, align 8
  %110 = load i32*, i32** @server, align 8
  %111 = call i32 @quicly_send(i32* %110, i32** %3, i64* %4)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @QUICLY_ERROR_FREE_CONNECTION, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @ok(i32 %115)
  %117 = load i32*, i32** @server, align 8
  %118 = call i32 @quicly_free(i32* %117)
  store i32* null, i32** @client, align 8
  store i32* null, i32** @server, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %119, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @quic_ctx, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @quicly_close(i32*, i32, i8*) #1

declare dso_local i32 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @quicly_get_state(i32*) #1

declare dso_local i64 @quicly_get_first_timeout(i32*) #1

declare dso_local i32 @quicly_send(i32*, i32**, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @decode_packets(i32*, i32**, i32) #1

declare dso_local i32 @quicly_receive(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @quicly_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
