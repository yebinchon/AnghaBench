; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-binlog.c_replay_log.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-binlog.c_replay_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_event = type { i32 }

@binlog_size = common dso_local global i32 0, align 4
@log_time_cutoff = common dso_local global i32 0, align 4
@log_scan_mode = common dso_local global i64 0, align 8
@log_cutoff_pos = common dso_local global i32 0, align 4
@log_rptr = common dso_local global i64 0, align 8
@log_wptr = common dso_local global i64 0, align 8
@binlog_fd = common dso_local global i32 0, align 4
@log_start = common dso_local global i64 0, align 8
@log_end = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"read %d bytes from binlog %s\0A\00", align 1
@binlogname = common dso_local global i8* null, align 8
@log_pos = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"replay binlog: %d bytes left unread at position %lld\0A\00", align 1
@log_readto_pos = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replay_log(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @binlog_size, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %134

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  br label %13

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 2147483647, %12 ]
  store i32 %14, i32* @log_time_cutoff, align 4
  store i64 0, i64* @log_scan_mode, align 8
  store i32 -1, i32* @log_cutoff_pos, align 4
  br label %15

15:                                               ; preds = %13, %107
  %16 = load i64, i64* @log_rptr, align 8
  %17 = load i64, i64* @log_wptr, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load i32, i32* @binlog_fd, align 4
  %21 = load i64, i64* @log_start, align 8
  %22 = load i64, i64* @log_end, align 8
  %23 = load i64, i64* @log_start, align 8
  %24 = sub nsw i64 %22, %23
  %25 = call i32 @read(i32 %20, i64 %21, i64 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i64, i64* @verbosity, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i8*, i8** @binlogname, align 8
  %32 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %28, %19
  %34 = load i64, i64* @log_start, align 8
  store i64 %34, i64* @log_rptr, align 8
  %35 = load i64, i64* @log_start, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  store i64 %38, i64* @log_wptr, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @log_pos, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* @log_pos, align 8
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %112

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %15
  %48 = load i64, i64* @log_rptr, align 8
  %49 = load i64, i64* @log_end, align 8
  %50 = sub nsw i64 %49, 65536
  %51 = icmp sge i64 %48, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %47
  %53 = load i64, i64* @log_start, align 8
  %54 = load i64, i64* @log_rptr, align 8
  %55 = load i64, i64* @log_end, align 8
  %56 = load i64, i64* @log_rptr, align 8
  %57 = sub nsw i64 %55, %56
  %58 = call i32 @memcpy(i64 %53, i64 %54, i64 %57)
  %59 = load i64, i64* @log_rptr, align 8
  %60 = load i64, i64* @log_start, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load i64, i64* @log_wptr, align 8
  %63 = sub nsw i64 %62, %61
  store i64 %63, i64* @log_wptr, align 8
  %64 = load i64, i64* @log_start, align 8
  store i64 %64, i64* @log_rptr, align 8
  %65 = load i32, i32* @binlog_fd, align 4
  %66 = load i64, i64* @log_wptr, align 8
  %67 = load i64, i64* @log_end, align 8
  %68 = load i64, i64* @log_wptr, align 8
  %69 = sub nsw i64 %67, %68
  %70 = call i32 @read(i32 %65, i64 %66, i64 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i64, i64* @verbosity, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %52
  %74 = load i32, i32* @stderr, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i8*, i8** @binlogname, align 8
  %77 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %75, i8* %76)
  br label %78

78:                                               ; preds = %73, %52
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @log_wptr, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* @log_wptr, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @log_pos, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* @log_pos, align 8
  %87 = load i32, i32* %3, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  br label %112

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %47
  %92 = load i64, i64* @log_wptr, align 8
  %93 = load i64, i64* @log_rptr, align 8
  %94 = sub nsw i64 %92, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %112

99:                                               ; preds = %91
  %100 = load i64, i64* @log_rptr, align 8
  %101 = inttoptr i64 %100 to %struct.log_event*
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @replay_logevent(%struct.log_event* %101, i32 %102)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %112

107:                                              ; preds = %99
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* @log_rptr, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* @log_rptr, align 8
  br label %15

112:                                              ; preds = %106, %98, %89, %45
  %113 = load i64, i64* @log_rptr, align 8
  %114 = load i64, i64* @log_wptr, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load i64, i64* @verbosity, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = load i64, i64* @log_wptr, align 8
  %121 = load i64, i64* @log_rptr, align 8
  %122 = sub nsw i64 %120, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* @log_pos, align 8
  %127 = sub nsw i64 %126, %125
  store i64 %127, i64* @log_pos, align 8
  %128 = load i32, i32* @stderr, align 4
  %129 = load i32, i32* %3, align 4
  %130 = load i64, i64* @log_pos, align 8
  %131 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %129, i64 %130)
  br label %132

132:                                              ; preds = %119, %116, %112
  %133 = load i64, i64* @log_pos, align 8
  store i64 %133, i64* @log_readto_pos, align 8
  br label %134

134:                                              ; preds = %132, %6
  ret void
}

declare dso_local i32 @read(i32, i64, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @replay_logevent(%struct.log_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
