; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_binlog_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_binlog_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32* }
%struct.connection = type { i32 }
%struct.rpc_binlog_data = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"rpc_send_binlog_data: remote_id = %lld, pos = %lld\0A\00", align 1
@BINLOG_POSITION = common dso_local global i64 0, align 8
@MAX_SEND_LEN = common dso_local global i64 0, align 8
@Q = common dso_local global i64 0, align 8
@RPC_TYPE_BINLOG_DATA = common dso_local global i32 0, align 4
@NODE_ID = common dso_local global i32 0, align 4
@STATS = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_binlog_data(%struct.connection* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rpc_binlog_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %13)
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %133

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @BINLOG_POSITION, align 8
  %21 = icmp slt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i64, i64* @BINLOG_POSITION, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub nsw i64 %24, %25
  %27 = load i64, i64* @MAX_SEND_LEN, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i64, i64* @MAX_SEND_LEN, align 8
  br label %35

31:                                               ; preds = %18
  %32 = load i64, i64* @BINLOG_POSITION, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub nsw i64 %32, %33
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi i64 [ %30, %29 ], [ %34, %31 ]
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i64, i64* @Q, align 8
  %39 = inttoptr i64 %38 to %struct.rpc_binlog_data*
  store %struct.rpc_binlog_data* %39, %struct.rpc_binlog_data** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  br label %49

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, -4
  %48 = add nsw i32 %47, 4
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi i32 [ %44, %43 ], [ %48, %45 ]
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @MAX_SEND_LEN, align 8
  %54 = icmp sle i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.rpc_binlog_data*, %struct.rpc_binlog_data** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 32, %59
  %61 = trunc i64 %60 to i32
  %62 = load %struct.connection*, %struct.connection** %5, align 8
  %63 = load i32, i32* @RPC_TYPE_BINLOG_DATA, align 4
  %64 = call i64 @rpc_create_query(%struct.rpc_binlog_data* %57, i32 %61, %struct.connection* %62, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %133

67:                                               ; preds = %49
  %68 = load i32, i32* @NODE_ID, align 4
  %69 = load %struct.rpc_binlog_data*, %struct.rpc_binlog_data** %9, align 8
  %70 = getelementptr inbounds %struct.rpc_binlog_data, %struct.rpc_binlog_data* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.rpc_binlog_data*, %struct.rpc_binlog_data** %9, align 8
  %73 = getelementptr inbounds %struct.rpc_binlog_data, %struct.rpc_binlog_data* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.rpc_binlog_data*, %struct.rpc_binlog_data** %9, align 8
  %76 = getelementptr inbounds %struct.rpc_binlog_data, %struct.rpc_binlog_data* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.rpc_binlog_data*, %struct.rpc_binlog_data** %9, align 8
  %79 = getelementptr inbounds %struct.rpc_binlog_data, %struct.rpc_binlog_data* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.rpc_binlog_data*, %struct.rpc_binlog_data** %9, align 8
  %81 = getelementptr inbounds %struct.rpc_binlog_data, %struct.rpc_binlog_data* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @get_binlog_data(i32 %82, i64 %83, i32 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %133

88:                                               ; preds = %67
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @get_crc64(i64 %89)
  %91 = load %struct.rpc_binlog_data*, %struct.rpc_binlog_data** %9, align 8
  %92 = getelementptr inbounds %struct.rpc_binlog_data, %struct.rpc_binlog_data* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load i64, i64* %6, align 8
  %94 = call %struct.TYPE_5__* @get_relative_by_id(i64 %93)
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp sle i32 0, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load i32, i32* %11, align 4
  %101 = icmp sle i32 %100, 2
  br label %102

102:                                              ; preds = %99, %88
  %103 = phi i1 [ false, %88 ], [ %101, %99 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @STATS, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @STATS, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, %115
  store i32 %124, i32* %122, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @STATS, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = load %struct.rpc_binlog_data*, %struct.rpc_binlog_data** %9, align 8
  %131 = load %struct.connection*, %struct.connection** %5, align 8
  %132 = call i32 @rpc_send_query(%struct.rpc_binlog_data* %130, %struct.connection* %131)
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %102, %87, %66, %17
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @vkprintf(i32, i8*, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @rpc_create_query(%struct.rpc_binlog_data*, i32, %struct.connection*, i32) #1

declare dso_local i64 @get_binlog_data(i32, i64, i32) #1

declare dso_local i32 @get_crc64(i64) #1

declare dso_local %struct.TYPE_5__* @get_relative_by_id(i64) #1

declare dso_local i32 @rpc_send_query(%struct.rpc_binlog_data*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
