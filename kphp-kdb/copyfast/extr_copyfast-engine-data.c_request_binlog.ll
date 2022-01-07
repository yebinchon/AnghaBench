; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_request_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_request_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.relative* }
%struct.relative = type { i32, i64, i64, i64, %struct.TYPE_3__, %struct.relative* }
%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32 }

@LAST_BINLOG_REQUEST_TIME = common dso_local global i64 0, align 8
@REQUEST_BINLOG_DELAY = common dso_local global i64 0, align 8
@precise_now = common dso_local global i64 0, align 8
@RELATIVES = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BINLOG_POSITION = common dso_local global i64 0, align 8
@REQUEST_DELAY = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @request_binlog() #0 {
  %1 = alloca %struct.relative*, align 8
  %2 = alloca %struct.relative*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = load i64, i64* @LAST_BINLOG_REQUEST_TIME, align 8
  %7 = load i64, i64* @REQUEST_BINLOG_DELAY, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i64, i64* @precise_now, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %100

12:                                               ; preds = %0
  %13 = load %struct.relative*, %struct.relative** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @RELATIVES, i32 0, i32 0), align 8
  store %struct.relative* %13, %struct.relative** %1, align 8
  store %struct.relative* null, %struct.relative** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %70, %12
  %15 = load %struct.relative*, %struct.relative** %1, align 8
  %16 = getelementptr inbounds %struct.relative, %struct.relative* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %74

19:                                               ; preds = %14
  %20 = load %struct.relative*, %struct.relative** %1, align 8
  %21 = getelementptr inbounds %struct.relative, %struct.relative* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BINLOG_POSITION, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %19
  %26 = load i64, i64* @precise_now, align 8
  %27 = load %struct.relative*, %struct.relative** %1, align 8
  %28 = getelementptr inbounds %struct.relative, %struct.relative* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** @REQUEST_DELAY, align 8
  %31 = load %struct.relative*, %struct.relative** %1, align 8
  %32 = getelementptr inbounds %struct.relative, %struct.relative* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %29, %35
  %37 = icmp sge i64 %26, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %25
  %39 = load %struct.relative*, %struct.relative** %1, align 8
  %40 = getelementptr inbounds %struct.relative, %struct.relative* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  %48 = call i32 (...) @lrand48()
  %49 = load i32, i32* %4, align 4
  %50 = srem i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load %struct.relative*, %struct.relative** %1, align 8
  store %struct.relative* %53, %struct.relative** %2, align 8
  br label %54

54:                                               ; preds = %52, %45
  br label %69

55:                                               ; preds = %38
  %56 = load %struct.relative*, %struct.relative** %1, align 8
  %57 = getelementptr inbounds %struct.relative, %struct.relative* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ugt i64 %58, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  %63 = load %struct.relative*, %struct.relative** %1, align 8
  %64 = getelementptr inbounds %struct.relative, %struct.relative* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %3, align 4
  %67 = load %struct.relative*, %struct.relative** %1, align 8
  store %struct.relative* %67, %struct.relative** %2, align 8
  br label %68

68:                                               ; preds = %62, %55
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69, %25, %19
  %71 = load %struct.relative*, %struct.relative** %1, align 8
  %72 = getelementptr inbounds %struct.relative, %struct.relative* %71, i32 0, i32 5
  %73 = load %struct.relative*, %struct.relative** %72, align 8
  store %struct.relative* %73, %struct.relative** %1, align 8
  br label %14

74:                                               ; preds = %14
  %75 = load %struct.relative*, %struct.relative** %2, align 8
  %76 = icmp ne %struct.relative* %75, null
  br i1 %76, label %77, label %100

77:                                               ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %3, align 4
  %82 = icmp sle i32 %81, 2
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i1 [ false, %77 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.relative*, %struct.relative** %2, align 8
  %88 = call %struct.connection* @get_relative_connection(%struct.relative* %87)
  store %struct.connection* %88, %struct.connection** %5, align 8
  %89 = load %struct.connection*, %struct.connection** %5, align 8
  %90 = icmp ne %struct.connection* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load %struct.connection*, %struct.connection** %5, align 8
  %93 = load %struct.relative*, %struct.relative** %2, align 8
  %94 = getelementptr inbounds %struct.relative, %struct.relative* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @rpc_send_binlog_request(%struct.connection* %92, i32 %96, i32 -1)
  %98 = load i64, i64* @precise_now, align 8
  store i64 %98, i64* @LAST_BINLOG_REQUEST_TIME, align 8
  br label %99

99:                                               ; preds = %91, %83
  br label %100

100:                                              ; preds = %11, %99, %74
  ret void
}

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.connection* @get_relative_connection(%struct.relative*) #1

declare dso_local i32 @rpc_send_binlog_request(%struct.connection*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
