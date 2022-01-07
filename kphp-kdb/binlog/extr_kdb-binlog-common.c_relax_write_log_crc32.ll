; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_relax_write_log_crc32.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_relax_write_log_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@binlog_disabled = common dso_local global i64 0, align 8
@disable_crc32 = common dso_local global i32 0, align 4
@W = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@log_pos = common dso_local global i64 0, align 8
@log_crc32_pos = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"W.log_endw = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"log_pos = %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"W.log_rptr = %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"W.log_start = %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"W.log_wptr = %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"log_crc32_pos = %lld\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"log_start_pos = %lld\0A\00", align 1
@log_crc32_complement = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @relax_write_log_crc32() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @binlog_disabled, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @disable_crc32, align 4
  %8 = and i32 %7, 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %0
  store i32 0, i32* %1, align 4
  br label %86

11:                                               ; preds = %6
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i64, i64* @log_pos, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 0), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %18 = sub nsw i64 %16, %17
  %19 = add nsw i64 %15, %18
  br label %26

20:                                               ; preds = %11
  %21 = load i64, i64* @log_pos, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 2), align 8
  %24 = sub nsw i64 %22, %23
  %25 = sub nsw i64 %21, %24
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i64 [ %19, %14 ], [ %25, %20 ]
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* @log_crc32_pos, align 8
  %29 = load i64, i64* %2, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 3), align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 2), align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31, %26
  %36 = load i32, i32* @stderr, align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 0), align 8
  %38 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @stderr, align 4
  %40 = load i64, i64* @log_pos, align 8
  %41 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @stderr, align 4
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %44 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @stderr, align 4
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 2), align 8
  %47 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @stderr, align 4
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 3), align 8
  %50 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @stderr, align 4
  %52 = load i64, i64* @log_crc32_pos, align 8
  %53 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @stderr, align 4
  %55 = load i64, i64* %2, align 8
  %56 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %35, %31
  %58 = load i64, i64* @log_crc32_pos, align 8
  %59 = load i64, i64* %2, align 8
  %60 = icmp sge i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i64, i64* %2, align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 3), align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 2), align 8
  %66 = sub nsw i64 %64, %65
  %67 = add nsw i64 %63, %66
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* @log_crc32_pos, align 8
  %69 = load i64, i64* %3, align 8
  %70 = icmp sle i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 2), align 8
  %74 = load i64, i64* @log_crc32_pos, align 8
  %75 = load i64, i64* %2, align 8
  %76 = sub nsw i64 %74, %75
  %77 = add nsw i64 %73, %76
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* @log_crc32_pos, align 8
  %80 = sub nsw i64 %78, %79
  %81 = load i32, i32* @log_crc32_complement, align 4
  %82 = call i32 @crc32_partial(i64 %77, i64 %80, i32 %81)
  store i32 %82, i32* @log_crc32_complement, align 4
  %83 = load i64, i64* %3, align 8
  store i64 %83, i64* @log_crc32_pos, align 8
  %84 = load i32, i32* @log_crc32_complement, align 4
  %85 = xor i32 %84, -1
  store i32 %85, i32* %1, align 4
  br label %86

86:                                               ; preds = %57, %10
  %87 = load i32, i32* %1, align 4
  ret i32 %87
}

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crc32_partial(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
