; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_initiate_close.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_initiate_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32, i64 }
%struct.TYPE_9__ = type { i64 }

@QUICLY_STATE_CLOSING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@UINT64_MAX = common dso_local global i32 0, align 4
@PTLS_ERROR_CLASS_SELF_ALERT = common dso_local global i64 0, align 8
@QUICLY_TRANSPORT_ERROR_TLS_ALERT_BASE = common dso_local global i64 0, align 8
@QUICLY_TRANSPORT_ERROR_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, i8*)* @initiate_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initiate_close(%struct.TYPE_10__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QUICLY_STATE_CLOSING, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %71

18:                                               ; preds = %4
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @QUICLY_ERROR_IS_QUIC_TRANSPORT(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @QUICLY_ERROR_GET_ERROR_CODE(i32 %27)
  store i64 %28, i64* %10, align 8
  br label %53

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @QUICLY_ERROR_IS_QUIC_APPLICATION(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @QUICLY_ERROR_GET_ERROR_CODE(i32 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i32, i32* @UINT64_MAX, align 4
  store i32 %36, i32* %8, align 4
  br label %52

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @PTLS_ERROR_GET_CLASS(i32 %38)
  %40 = load i64, i64* @PTLS_ERROR_CLASS_SELF_ALERT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i64, i64* @QUICLY_TRANSPORT_ERROR_TLS_ALERT_BASE, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @PTLS_ERROR_TO_ALERT(i32 %44)
  %46 = add nsw i64 %43, %45
  store i64 %46, i64* %10, align 8
  br label %51

47:                                               ; preds = %37
  %48 = load i32, i32* @QUICLY_TRANSPORT_ERROR_INTERNAL, align 4
  %49 = call i64 @QUICLY_ERROR_GET_ERROR_CODE(i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i32, i32* @UINT64_MAX, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %33
  br label %53

53:                                               ; preds = %52, %26
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i64 %54, i64* %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i8* %64, i8** %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = call i32 @enter_close(%struct.TYPE_10__* %69, i32 1, i32 0)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %53, %17
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @QUICLY_ERROR_IS_QUIC_TRANSPORT(i32) #1

declare dso_local i64 @QUICLY_ERROR_GET_ERROR_CODE(i32) #1

declare dso_local i64 @QUICLY_ERROR_IS_QUIC_APPLICATION(i32) #1

declare dso_local i64 @PTLS_ERROR_GET_CLASS(i32) #1

declare dso_local i64 @PTLS_ERROR_TO_ALERT(i32) #1

declare dso_local i32 @enter_close(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
