; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpc_error.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpc_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.connection* }
%struct.connection = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.connection*)* }

@rpc_error.q = internal global [10000 x i32] zeroinitializer, align 16
@RPC_REQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"TODO: store too big string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_error(%struct.TYPE_5__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.connection*, %struct.connection** %13, align 8
  store %struct.connection* %14, %struct.connection** %7, align 8
  %15 = load %struct.connection*, %struct.connection** %7, align 8
  %16 = call %struct.TYPE_7__* @RPCS_DATA(%struct.connection* %15)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  store i32 %18, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @rpc_error.q, i64 0, i64 1), align 4
  %20 = load i32, i32* @RPC_REQ_ERROR, align 4
  store i32 %20, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @rpc_error.q, i64 0, i64 2), align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* bitcast (i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @rpc_error.q, i64 0, i64 3) to i64*), align 8
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @rpc_error.q, i64 0, i64 5), align 4
  store i8* bitcast (i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @rpc_error.q, i64 0, i64 6) to i8*), i8** %8, align 8
  store i32 0, i32* %9, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 5000
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 5000, i32* %10, align 4
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 254
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  store i8 %36, i8* %37, align 1
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %73

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 16777216
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  store i8 -2, i8* %45, align 1
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 255
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  store i8 %49, i8* %50, align 1
  %52 = load i32, i32* %10, align 4
  %53 = ashr i32 %52, 8
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  store i8 %55, i8* %56, align 1
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  store i8 %61, i8* %62, align 1
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 4
  store i32 %65, i32* %9, align 4
  br label %72

66:                                               ; preds = %41
  br i1 true, label %67, label %68

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %66
  %69 = phi i1 [ false, %66 ], [ false, %67 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %72

72:                                               ; preds = %68, %44
  br label %73

73:                                               ; preds = %72, %34
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = call i32 @memcpy(i8* %74, i8* %75, i64 %77)
  %79 = load i32, i32* %10, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %8, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %90, %73
  %87 = load i32, i32* %9, align 4
  %88 = srem i32 %87, 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %8, align 8
  store i8 0, i8* %91, align 1
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %86

95:                                               ; preds = %86
  %96 = load i32, i32* %9, align 4
  %97 = sdiv i32 %96, 4
  %98 = add nsw i32 7, %97
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = mul nsw i32 %99, 4
  store i32 %100, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @rpc_error.q, i64 0, i64 0), align 16
  %101 = load i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @rpc_error.q, i64 0, i64 0), align 16
  %102 = sub nsw i32 %101, 4
  %103 = call i64 @compute_crc32(i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @rpc_error.q, i64 0, i64 0), i32 %102)
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [10000 x i32], [10000 x i32]* @rpc_error.q, i64 0, i64 %107
  store i32 %104, i32* %108, align 4
  %109 = load %struct.connection*, %struct.connection** %7, align 8
  %110 = getelementptr inbounds %struct.connection, %struct.connection* %109, i32 0, i32 0
  %111 = load i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @rpc_error.q, i64 0, i64 0), align 16
  %112 = call i32 @write_out(i32* %110, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @rpc_error.q, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @rpc_error.q, i64 0, i64 0), align 16
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load %struct.connection*, %struct.connection** %7, align 8
  %118 = call %struct.TYPE_6__* @RPCS_FUNC(%struct.connection* %117)
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %119, align 8
  %121 = load %struct.connection*, %struct.connection** %7, align 8
  %122 = call i32 %120(%struct.connection* %121)
  ret void
}

declare dso_local %struct.TYPE_7__* @RPCS_DATA(%struct.connection*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @compute_crc32(i32*, i32) #1

declare dso_local i32 @write_out(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @RPCS_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
