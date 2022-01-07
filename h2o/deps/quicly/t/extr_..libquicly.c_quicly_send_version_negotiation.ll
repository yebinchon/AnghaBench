; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_quicly_send_version_negotiation.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_quicly_send_version_negotiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_17__* }
%struct.TYPE_12__ = type { i32 (i32*, i32)* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* (%struct.TYPE_17__*, i32)* }
%struct.sockaddr = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@QUICLY_LONG_HEADER_BIT = common dso_local global i32 0, align 4
@QUICLY_PROTOCOL_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @quicly_send_version_negotiation(%struct.TYPE_15__* %0, %struct.sockaddr* %1, i64 %2, %struct.sockaddr* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__, align 4
  %8 = alloca %struct.TYPE_16__, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = bitcast %struct.TYPE_16__* %7 to i64*
  store i64 %2, i64* %14, align 4
  %15 = bitcast %struct.TYPE_16__* %8 to i64*
  store i64 %4, i64* %15, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__* (%struct.TYPE_17__*, i32)*, %struct.TYPE_14__* (%struct.TYPE_17__*, i32)** %19, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.TYPE_14__* %20(%struct.TYPE_17__* %23, i32 %26)
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %12, align 8
  %28 = icmp eq %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %115

30:                                               ; preds = %5
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %34 = call i32 @set_address(i32* %32, %struct.sockaddr* %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %38 = call i32 @set_address(i32* %36, %struct.sockaddr* %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %13, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32 (i32*, i32)*, i32 (i32*, i32)** %46, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 %47(i32* %48, i32 1)
  %50 = load i32, i32* @QUICLY_LONG_HEADER_BIT, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %13, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i32* @quicly_encode32(i32* %56, i32 0)
  store i32* %57, i32** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %13, align 8
  store i32 %59, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %30
  %66 = load i32*, i32** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i32* %66, i32 %68, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %13, align 8
  br label %77

77:                                               ; preds = %65, %30
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %13, align 8
  store i32 %79, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %77
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @memcpy(i32* %86, i32 %88, i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %13, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %13, align 8
  br label %97

97:                                               ; preds = %85, %77
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* @QUICLY_PROTOCOL_VERSION, align 4
  %100 = call i32* @quicly_encode32(i32* %98, i32 %99)
  store i32* %100, i32** %13, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = ptrtoint i32* %101 to i64
  %107 = ptrtoint i32* %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %114, %struct.TYPE_14__** %6, align 8
  br label %115

115:                                              ; preds = %97, %29
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  ret %struct.TYPE_14__* %116
}

declare dso_local i32 @set_address(i32*, %struct.sockaddr*) #1

declare dso_local i32* @quicly_encode32(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
