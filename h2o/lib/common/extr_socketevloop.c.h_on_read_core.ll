; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_socketevloop.c.h_on_read_core.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_socketevloop.c.h_on_read_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }

@h2o_socket_error_out_of_memory = common dso_local global i8* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@h2o_socket_error_io = common dso_local global i8* null, align 8
@h2o_socket_error_closed = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_7__**)* @on_read_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @on_read_core(i32 %0, %struct.TYPE_7__** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %2, %82
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %11 = call { i32, i32* } @h2o_buffer_try_reserve(%struct.TYPE_7__** %10, i32 4096)
  %12 = bitcast %struct.TYPE_6__* %8 to { i32, i32* }*
  %13 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %12, i32 0, i32 0
  %14 = extractvalue { i32, i32* } %11, 0
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %12, i32 0, i32 1
  %16 = extractvalue { i32, i32* } %11, 1
  store i32* %16, i32** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = load i8*, i8** @h2o_socket_error_out_of_memory, align 8
  store i8* %21, i8** %3, align 8
  br label %84

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %49, %22
  %24 = load i32, i32* %4, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @INT_MAX, align 4
  %30 = sdiv i32 %29, 2
  %31 = icmp sle i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  br label %39

35:                                               ; preds = %23
  %36 = load i32, i32* @INT_MAX, align 4
  %37 = sdiv i32 %36, 2
  %38 = add nsw i32 %37, 1
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i32 [ %34, %32 ], [ %38, %35 ]
  %41 = call i32 @read(i32 %24, i32* %26, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @EINTR, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  br label %23

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EAGAIN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %83

58:                                               ; preds = %53
  %59 = load i8*, i8** @h2o_socket_error_io, align 8
  store i8* %59, i8** %3, align 8
  br label %84

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** @h2o_socket_error_closed, align 8
  store i8* %67, i8** %3, align 8
  br label %84

68:                                               ; preds = %63
  br label %83

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %71
  store i32 %76, i32* %74, align 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %83

82:                                               ; preds = %70
  store i32 1, i32* %6, align 4
  br label %9

83:                                               ; preds = %81, %68, %57
  store i8* null, i8** %3, align 8
  br label %84

84:                                               ; preds = %83, %66, %58, %20
  %85 = load i8*, i8** %3, align 8
  ret i8* %85
}

declare dso_local { i32, i32* } @h2o_buffer_try_reserve(%struct.TYPE_7__**, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
