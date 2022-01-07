; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/examples/extr_echo.c_on_receive.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/examples/extr_echo.c_on_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, i8*, i64)* @on_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_receive(%struct.TYPE_10__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @quicly_streambuf_ingress_receive(%struct.TYPE_10__* %12, i64 %13, i8* %14, i64 %15)
  store i32 %16, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %71

20:                                               ; preds = %4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = call i64 @quicly_streambuf_ingress_get(%struct.TYPE_10__* %21)
  %23 = bitcast %struct.TYPE_11__* %11 to i64*
  store i64 %22, i64* %23, align 4
  %24 = call i64 (...) @is_server()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = call i64 @quicly_sendstate_is_open(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @quicly_streambuf_egress_write(%struct.TYPE_10__* %32, i32 %34, i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = call i64 @quicly_recvstate_transfer_complete(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = call i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_10__* %43)
  br label %45

45:                                               ; preds = %42, %31
  br label %46

46:                                               ; preds = %45, %26
  br label %66

47:                                               ; preds = %20
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @stdout, align 4
  %53 = call i32 @fwrite(i32 %49, i32 1, i32 %51, i32 %52)
  %54 = load i32, i32* @stdout, align 4
  %55 = call i32 @fflush(i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = call i64 @quicly_recvstate_transfer_complete(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @quicly_close(i32 %63, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %47
  br label %66

66:                                               ; preds = %65, %46
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @quicly_streambuf_ingress_shift(%struct.TYPE_10__* %67, i32 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %18
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @quicly_streambuf_ingress_receive(%struct.TYPE_10__*, i64, i8*, i64) #1

declare dso_local i64 @quicly_streambuf_ingress_get(%struct.TYPE_10__*) #1

declare dso_local i64 @is_server(...) #1

declare dso_local i64 @quicly_sendstate_is_open(i32*) #1

declare dso_local i32 @quicly_streambuf_egress_write(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @quicly_recvstate_transfer_complete(i32*) #1

declare dso_local i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_10__*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @quicly_close(i32, i32, i8*) #1

declare dso_local i32 @quicly_streambuf_ingress_shift(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
