; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_get_cur_binlog_position.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_get_cur_binlog_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binlog_pos = type { i32, i32, i64 }

@log_crc32_pos = common dso_local global i64 0, align 8
@log_crc32_complement = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @get_cur_binlog_position(i32 %0) #0 {
  %2 = alloca %struct.binlog_pos, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = call i32 @relax_log_crc32(i32 0)
  %8 = call i64 (...) @log_cur_pos()
  %9 = load i64, i64* @log_crc32_pos, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  br label %20

13:                                               ; preds = %1
  %14 = call i32 (...) @relax_write_log_crc32()
  %15 = call i64 (...) @log_last_pos()
  %16 = load i64, i64* @log_crc32_pos, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  br label %20

20:                                               ; preds = %13, %6
  %21 = load i64, i64* @log_crc32_pos, align 8
  %22 = getelementptr inbounds %struct.binlog_pos, %struct.binlog_pos* %2, i32 0, i32 2
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* @log_crc32_complement, align 4
  %24 = xor i32 %23, -1
  %25 = getelementptr inbounds %struct.binlog_pos, %struct.binlog_pos* %2, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @now, align 4
  %27 = getelementptr inbounds %struct.binlog_pos, %struct.binlog_pos* %2, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = bitcast %struct.binlog_pos* %2 to { i64, i64 }*
  %29 = load { i64, i64 }, { i64, i64 }* %28, align 8
  ret { i64, i64 } %29
}

declare dso_local i32 @relax_log_crc32(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @log_cur_pos(...) #1

declare dso_local i32 @relax_write_log_crc32(...) #1

declare dso_local i64 @log_last_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
