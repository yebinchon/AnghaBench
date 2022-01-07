; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_binlog_flush.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_binlog_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BINLOG_BUFFER_WPTR = common dso_local global i64 0, align 8
@BINLOG_BUFFER_FPTR = common dso_local global i64 0, align 8
@STATS = common dso_local global %struct.TYPE_4__* null, align 8
@BINLOG_BUFFER_FD = common dso_local global i32 0, align 4
@BINLOG_POSITION = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@BINLOG_BUFFER = common dso_local global i64 0, align 8
@BINLOG_BUFFER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binlog_flush(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %4 = load i64, i64* @BINLOG_BUFFER_FPTR, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %62

6:                                                ; preds = %1
  %7 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %8 = load i64, i64* @BINLOG_BUFFER_FPTR, align 8
  %9 = icmp sgt i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call i64 (...) @get_double_time_since_epoch()
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %12
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* @BINLOG_BUFFER_FD, align 4
  %21 = load i64, i64* @BINLOG_POSITION, align 8
  %22 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %23 = load i64, i64* @BINLOG_BUFFER_FPTR, align 8
  %24 = sub nsw i64 %22, %23
  %25 = sub nsw i64 %21, %24
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i64 @lseek(i32 %20, i64 %25, i32 %26)
  %28 = load i64, i64* @BINLOG_POSITION, align 8
  %29 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %30 = load i64, i64* @BINLOG_BUFFER_FPTR, align 8
  %31 = sub nsw i64 %29, %30
  %32 = sub nsw i64 %28, %31
  %33 = icmp eq i64 %27, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* @BINLOG_BUFFER_FD, align 4
  %37 = load i64, i64* @BINLOG_BUFFER_FPTR, align 8
  %38 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %39 = load i64, i64* @BINLOG_BUFFER_FPTR, align 8
  %40 = sub nsw i64 %38, %39
  %41 = call i64 @write(i32 %36, i64 %37, i64 %40)
  %42 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %43 = load i64, i64* @BINLOG_BUFFER_FPTR, align 8
  %44 = sub nsw i64 %42, %43
  %45 = icmp eq i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32, i32* @BINLOG_BUFFER_FD, align 4
  %49 = call i64 @fsync(i32 %48)
  %50 = icmp sge i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = call i64 (...) @get_double_time_since_epoch()
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %53
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  store i64 %61, i64* @BINLOG_BUFFER_FPTR, align 8
  br label %62

62:                                               ; preds = %6, %1
  %63 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %64 = load i64, i64* @BINLOG_BUFFER, align 8
  %65 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %66 = add nsw i64 %64, %65
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load i64, i64* @BINLOG_BUFFER, align 8
  %70 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %71 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %74 = call i32 @memcpy(i64 %69, i64 %72, i64 %73)
  %75 = load i64, i64* @BINLOG_BUFFER, align 8
  %76 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %77 = add nsw i64 %75, %76
  store i64 %77, i64* @BINLOG_BUFFER_WPTR, align 8
  %78 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  store i64 %78, i64* @BINLOG_BUFFER_FPTR, align 8
  br label %79

79:                                               ; preds = %68, %62
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_double_time_since_epoch(...) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @write(i32, i64, i64) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
