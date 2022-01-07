; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_on_client_hello_cb.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_on_client_hello_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_8__* }

@negotiated_protocols = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@PTLS_ALERT_NO_APPLICATION_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_7__*)* @on_client_hello_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_client_hello_cb(i32* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @negotiated_protocols, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %82

15:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %63, %15
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @negotiated_protocols, i32 0, i32 0), align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %16
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @negotiated_protocols, i32 0, i32 1), align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %22
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %11, align 8
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %59, %20
  %25 = load i64, i64* %10, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %24
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %36
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %12, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %31
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @memcmp(i64 %48, i64 %51, i64 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %68

58:                                               ; preds = %45, %31
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %24

62:                                               ; preds = %24
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %16

66:                                               ; preds = %16
  %67 = load i32, i32* @PTLS_ALERT_NO_APPLICATION_PROTOCOL, align 4
  store i32 %67, i32* %4, align 4
  br label %83

68:                                               ; preds = %57
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @ptls_set_negotiated_protocol(i32* %69, i8* %73, i64 %76)
  store i32 %77, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %83

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %3
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %79, %66
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @memcmp(i64, i64, i64) #1

declare dso_local i32 @ptls_set_negotiated_protocol(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
