; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-binlog.c_load_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-binlog.c_load_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@load_index.t = internal global [5 x i32] zeroinitializer, align 16
@binlog_disabled = common dso_local global i32 0, align 4
@load_index.buf = internal global [1000 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"%s.000000\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@ifd = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error opening index: %m\0A\00", align 1
@RPC_PROXY_INDEX_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Index is not from rpc-proxy\0A\00", align 1
@jump_log_pos = common dso_local global i64 0, align 8
@jump_log_crc32 = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_index(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* @binlog_disabled, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @snprintf(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @load_index.buf, i64 0, i64 0), i32 1000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* @O_WRONLY, align 4
  %14 = load i32, i32* @O_TRUNC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @O_CREAT, align 4
  %17 = or i32 %15, %16
  %18 = call i64 (i8*, i32, ...) @open(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @load_index.buf, i64 0, i64 0), i32 %17, i32 432)
  store i64 %18, i64* @ifd, align 8
  %19 = load i64, i64* @ifd, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %10
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %10
  %26 = load i32, i32* @RPC_PROXY_INDEX_MAGIC, align 4
  store i32 %26, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @load_index.t, i64 0, i64 0), align 16
  store i32 0, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @load_index.t, i64 0, i64 1), align 4
  store i32 0, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @load_index.t, i64 0, i64 2), align 8
  store i32 0, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @load_index.t, i64 0, i64 3), align 4
  store i32 0, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @load_index.t, i64 0, i64 4), align 16
  %27 = load i64, i64* @ifd, align 8
  %28 = call i32 @write(i64 %27, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @load_index.t, i64 0, i64 0), i32 20)
  %29 = icmp eq i32 %28, 20
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  br label %32

32:                                               ; preds = %25, %7
  br label %68

33:                                               ; preds = %2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @read(i32 %36, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @load_index.t, i64 0, i64 0), i32 20)
  %38 = icmp eq i32 %37, 20
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @load_index.t, i64 0, i64 0), align 16
  %42 = load i32, i32* @RPC_PROXY_INDEX_MAGIC, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @exit(i32 3) #3
  unreachable

48:                                               ; preds = %33
  %49 = load i64, i64* bitcast (i32* getelementptr inbounds ([5 x i32], [5 x i32]* @load_index.t, i64 0, i64 1) to i64*), align 8
  store i64 %49, i64* @jump_log_pos, align 8
  %50 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @load_index.t, i64 0, i64 3), align 4
  store i32 %50, i32* @jump_log_crc32, align 4
  %51 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @load_index.t, i64 0, i64 4), align 16
  store i32 %51, i32* @jump_log_ts, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @close(i32 %54)
  %56 = load i32, i32* @binlog_disabled, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %48
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = load i32, i32* @O_WRONLY, align 4
  %67 = call i64 (i8*, i32, ...) @open(i8* %65, i32 %66)
  store i64 %67, i64* @ifd, align 8
  br label %68

68:                                               ; preds = %32, %58, %48
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @open(i8*, i32, ...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write(i64, i32*, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
