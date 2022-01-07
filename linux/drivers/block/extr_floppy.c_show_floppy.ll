; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_show_floppy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_show_floppy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"floppy driver state\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"-------------------\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"now=%lu last interrupt=%lu diff=%lu last called handler=%ps\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@interruptjiffies = common dso_local global i64 0, align 8
@lasthandler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"timeout_message=%s\0A\00", align 1
@timeout_message = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"last output bytes:\0A\00", align 1
@OLOGSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"%2x %2x %lu\0A\00", align 1
@output_log = common dso_local global %struct.TYPE_12__* null, align 8
@output_log_pos = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"last result at %lu\0A\00", align 1
@resultjiffies = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"last redo_fd_request at %lu\0A\00", align 1
@lastredo = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@reply_buffer = common dso_local global i32 0, align 4
@resultsize = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"status=%x\0A\00", align 1
@FD_STATUS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"fdc_busy=%lu\0A\00", align 1
@fdc_busy = common dso_local global i32 0, align 4
@do_floppy = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"do_floppy=%ps\0A\00", align 1
@floppy_work = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"floppy_work.func=%ps\0A\00", align 1
@fd_timer = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [38 x i8] c"delayed work.function=%p expires=%ld\0A\00", align 1
@fd_timeout = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [31 x i8] c"timer_function=%p expires=%ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"cont=%p\0A\00", align 1
@cont = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"current_req=%p\0A\00", align 1
@current_req = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"command_status=%d\0A\00", align 1
@command_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_floppy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_floppy() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i64, i64* @interruptjiffies, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* @interruptjiffies, align 8
  %9 = sub nsw i64 %7, %8
  %10 = load i32, i32* @lasthandler, align 4
  %11 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %5, i64 %6, i64 %9, i32 %10)
  %12 = load i32, i32* @timeout_message, align 4
  %13 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %12)
  %14 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %51, %0
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @OLOGSIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** @output_log, align 8
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @output_log_pos, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @OLOGSIZE, align 4
  %25 = srem i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** @output_log, align 8
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @output_log_pos, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @OLOGSIZE, align 4
  %35 = srem i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @output_log, align 8
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @output_log_pos, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* @OLOGSIZE, align 4
  %45 = srem i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %29, i32 %39, i32 %49)
  br label %51

51:                                               ; preds = %19
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %15

54:                                               ; preds = %15
  %55 = load i32, i32* @resultjiffies, align 4
  %56 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @lastredo, align 4
  %58 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @KERN_INFO, align 4
  %60 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %61 = load i32, i32* @reply_buffer, align 4
  %62 = load i32, i32* @resultsize, align 4
  %63 = call i32 @print_hex_dump(i32 %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i32 %60, i32 16, i32 1, i32 %61, i32 %62, i32 1)
  %64 = load i32, i32* @FD_STATUS, align 4
  %65 = call i32 @fd_inb(i32 %64)
  %66 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @fdc_busy, align 4
  %68 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %67)
  %69 = load i64, i64* @do_floppy, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %54
  %72 = load i64, i64* @do_floppy, align 8
  %73 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %71, %54
  %75 = call i64 @work_pending(%struct.TYPE_11__* @floppy_work)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @floppy_work, i32 0, i32 0), align 4
  %79 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = call i64 @delayed_work_pending(%struct.TYPE_13__* @fd_timer)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fd_timer, i32 0, i32 1, i32 0), align 8
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fd_timer, i32 0, i32 0, i32 0), align 8
  %86 = load i64, i64* @jiffies, align 8
  %87 = sub nsw i64 %85, %86
  %88 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %84, i64 %87)
  br label %89

89:                                               ; preds = %83, %80
  %90 = call i64 @delayed_work_pending(%struct.TYPE_13__* @fd_timeout)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fd_timeout, i32 0, i32 1, i32 0), align 8
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fd_timeout, i32 0, i32 0, i32 0), align 8
  %95 = load i64, i64* @jiffies, align 8
  %96 = sub nsw i64 %94, %95
  %97 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %93, i64 %96)
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i32, i32* @cont, align 4
  %100 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @current_req, align 4
  %102 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @command_status, align 4
  %104 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %103)
  %105 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fd_inb(i32) #1

declare dso_local i64 @work_pending(%struct.TYPE_11__*) #1

declare dso_local i64 @delayed_work_pending(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
