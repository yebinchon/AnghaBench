; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_clear_read_log.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_clear_read_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULOG_BUFFER_SIZE = common dso_local global i32 0, align 4
@binlog_zipped = common dso_local global i64 0, align 8
@ZLOG_BUFFER_SIZE = common dso_local global i64 0, align 8
@R = common dso_local global i32 0, align 4
@LogBuffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_read_log() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ULOG_BUFFER_SIZE, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i64, i64* @binlog_zipped, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i64, i64* @ZLOG_BUFFER_SIZE, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, %6
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %5, %0
  %12 = load i32, i32* @LogBuffer, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @clear_one_log(i32* @R, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @clear_one_log(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
