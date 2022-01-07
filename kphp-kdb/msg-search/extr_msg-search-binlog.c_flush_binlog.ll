; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-binlog.c_flush_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-binlog.c_flush_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@binlogname = common dso_local global i32 0, align 4
@log_rptr = common dso_local global i64 0, align 8
@log_wptr = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%d flush_binlog()\0A\00", align 1
@now = common dso_local global i32 0, align 4
@log_endw = common dso_local global i64 0, align 8
@binlog_fd = common dso_local global i32 0, align 4
@log_pos = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"error writing %d bytes at %lld to %s: %m\0A\00", align 1
@log_start = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_binlog() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @binlogname, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i64, i64* @log_rptr, align 8
  %7 = load i64, i64* @log_wptr, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %0
  br label %117

10:                                               ; preds = %5
  %11 = load i64, i64* @verbosity, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* @now, align 4
  %16 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i64, i64* @log_endw, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %17
  %21 = load i64, i64* @log_wptr, align 8
  %22 = load i64, i64* @log_rptr, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* @log_rptr, align 8
  %26 = load i64, i64* @log_endw, align 8
  %27 = icmp sle i64 %25, %26
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i64, i64* @log_endw, align 8
  %33 = load i64, i64* @log_rptr, align 8
  %34 = sub nsw i64 %32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %28
  %39 = load i32, i32* @binlog_fd, align 4
  %40 = load i64, i64* @log_pos, align 8
  %41 = load i32, i32* @SEEK_SET, align 4
  %42 = call i64 @lseek(i32 %39, i64 %40, i32 %41)
  %43 = load i64, i64* @log_pos, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* @binlog_fd, align 4
  %48 = load i64, i64* @log_rptr, align 8
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @write(i32 %47, i64 %48, i32 %49)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* %1, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* %2, align 4
  %56 = load i64, i64* @log_pos, align 8
  %57 = load i32, i32* @binlogname, align 4
  %58 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %55, i64 %56, i32 %57)
  br label %117

59:                                               ; preds = %38
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @log_rptr, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* @log_rptr, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @log_pos, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* @log_pos, align 8
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* %2, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %117

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %28
  %74 = load i64, i64* @log_start, align 8
  store i64 %74, i64* @log_rptr, align 8
  store i64 0, i64* @log_endw, align 8
  br label %75

75:                                               ; preds = %73, %17
  %76 = load i64, i64* @log_rptr, align 8
  %77 = load i64, i64* @log_wptr, align 8
  %78 = icmp sle i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i64, i64* @log_wptr, align 8
  %82 = load i64, i64* @log_rptr, align 8
  %83 = sub nsw i64 %81, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %2, align 4
  %85 = load i32, i32* %2, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %75
  %88 = load i32, i32* @binlog_fd, align 4
  %89 = load i64, i64* @log_pos, align 8
  %90 = load i32, i32* @SEEK_SET, align 4
  %91 = call i64 @lseek(i32 %88, i64 %89, i32 %90)
  %92 = load i64, i64* @log_pos, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32, i32* @binlog_fd, align 4
  %97 = load i64, i64* @log_rptr, align 8
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @write(i32 %96, i64 %97, i32 %98)
  store i32 %99, i32* %1, align 4
  %100 = load i32, i32* %1, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %87
  %103 = load i32, i32* @stderr, align 4
  %104 = load i32, i32* %2, align 4
  %105 = load i64, i64* @log_pos, align 8
  %106 = load i32, i32* @binlogname, align 4
  %107 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %104, i64 %105, i32 %106)
  br label %117

108:                                              ; preds = %87
  %109 = load i32, i32* %1, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* @log_rptr, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* @log_rptr, align 8
  %113 = load i32, i32* %1, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* @log_pos, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* @log_pos, align 8
  br label %117

117:                                              ; preds = %9, %53, %71, %102, %108, %75
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
