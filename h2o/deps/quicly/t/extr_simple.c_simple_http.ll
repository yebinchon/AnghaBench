; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_simple_http.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_simple_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"GET / HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"HTTP/1.0 200 OK\0D\0A\0D\0Ahello world\00", align 1
@client = common dso_local global i32 0, align 4
@server = common dso_local global i32 0, align 4
@QUICLY_DELAYED_ACK_TIMEOUT = common dso_local global i64 0, align 8
@quic_now = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @simple_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simple_http() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %8 = load i32, i32* @client, align 4
  %9 = call i32 @quicly_open_stream(i32 %8, %struct.TYPE_12__** %3, i32 0)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %5, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = load i8*, i8** %1, align 8
  %25 = load i8*, i8** %1, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = call i32 @quicly_streambuf_egress_write(%struct.TYPE_12__* %23, i8* %24, i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = call i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_12__* %28)
  %30 = load i32, i32* @client, align 4
  %31 = call i32 @quicly_num_streams(i32 %30)
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @ok(i32 %33)
  %35 = load i32, i32* @client, align 4
  %36 = load i32, i32* @server, align 4
  %37 = call i32 @transmit(i32 %35, i32 %36)
  %38 = load i32, i32* @server, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.TYPE_12__* @quicly_get_stream(i32 %38, i64 %41)
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %4, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @ok(i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %6, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = call i32 @quicly_recvstate_transfer_complete(i32* %51)
  %53 = call i32 @ok(i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, -1
  %59 = zext i1 %58 to i32
  %60 = call i32 @ok(i32 %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i8*, i8** %1, align 8
  %65 = call i32 @buffer_is(i32* %63, i8* %64)
  %66 = call i32 @ok(i32 %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = load i8*, i8** %2, align 8
  %69 = load i8*, i8** %2, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = call i32 @quicly_streambuf_egress_write(%struct.TYPE_12__* %67, i8* %68, i32 %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = call i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_12__* %72)
  %74 = load i32, i32* @server, align 4
  %75 = call i32 @quicly_num_streams(i32 %74)
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = call i32 @ok(i32 %77)
  %79 = load i32, i32* @server, align 4
  %80 = load i32, i32* @client, align 4
  %81 = call i32 @transmit(i32 %79, i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ok(i32 %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, -1
  %91 = zext i1 %90 to i32
  %92 = call i32 @ok(i32 %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i8*, i8** %2, align 8
  %97 = call i32 @buffer_is(i32* %95, i8* %96)
  %98 = call i32 @ok(i32 %97)
  %99 = load i32, i32* @client, align 4
  %100 = call i32 @quicly_num_streams(i32 %99)
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @ok(i32 %102)
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @ok(i32 %109)
  %111 = load i64, i64* @QUICLY_DELAYED_ACK_TIMEOUT, align 8
  %112 = load i32, i32* @quic_now, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* @quic_now, align 4
  %116 = load i32, i32* @client, align 4
  %117 = load i32, i32* @server, align 4
  %118 = call i32 @transmit(i32 %116, i32 %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ok(i32 %121)
  %123 = load i32, i32* @server, align 4
  %124 = call i32 @quicly_num_streams(i32 %123)
  %125 = icmp eq i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @ok(i32 %126)
  ret void
}

declare dso_local i32 @quicly_open_stream(i32, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @quicly_streambuf_egress_write(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_12__*) #1

declare dso_local i32 @quicly_num_streams(i32) #1

declare dso_local i32 @transmit(i32, i32) #1

declare dso_local %struct.TYPE_12__* @quicly_get_stream(i32, i64) #1

declare dso_local i32 @quicly_recvstate_transfer_complete(i32*) #1

declare dso_local i32 @buffer_is(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
