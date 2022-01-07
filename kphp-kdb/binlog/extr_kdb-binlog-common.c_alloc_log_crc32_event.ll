; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_alloc_log_crc32_event.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_alloc_log_crc32_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_crc32 = type { i64, i32, i32 }

@log_crc32_pos = common dso_local global i64 0, align 8
@binlog_cyclic_mode = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i32 0, align 4
@next_binlog_rotate_pos = common dso_local global i64 0, align 8
@log_pos = common dso_local global i64 0, align 8
@LEV_CRC32 = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"written log crc32 event: timestamp=%d, pos=%lld, crc32=%08x\0A\00", align 1
@bytes_after_crc32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @alloc_log_crc32_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_log_crc32_event() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.lev_crc32*, align 8
  %4 = call i32 (...) @relax_write_log_crc32()
  store i32 %4, i32* %1, align 4
  %5 = load i64, i64* @log_crc32_pos, align 8
  store i64 %5, i64* %2, align 8
  %6 = load i32, i32* @binlog_cyclic_mode, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @binlog_disabled, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @next_binlog_rotate_pos, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = call i64 (...) @force_new_binlog()
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %52

19:                                               ; preds = %15, %11, %8
  br label %32

20:                                               ; preds = %0
  %21 = load i32, i32* @binlog_disabled, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @log_pos, align 8
  %25 = load i64, i64* @next_binlog_rotate_pos, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = call i64 (...) @force_new_binlog()
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %52

31:                                               ; preds = %27, %23, %20
  br label %32

32:                                               ; preds = %31, %19
  %33 = load i32, i32* @LEV_CRC32, align 4
  %34 = call %struct.lev_crc32* @alloc_log_event(i32 %33, i32 16, i32 0)
  store %struct.lev_crc32* %34, %struct.lev_crc32** %3, align 8
  %35 = load i64, i64* %2, align 8
  %36 = load %struct.lev_crc32*, %struct.lev_crc32** %3, align 8
  %37 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %1, align 4
  %39 = load %struct.lev_crc32*, %struct.lev_crc32** %3, align 8
  %40 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @verbosity, align 4
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %51

43:                                               ; preds = %32
  %44 = load i32, i32* @stderr, align 4
  %45 = load %struct.lev_crc32*, %struct.lev_crc32** %3, align 8
  %46 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %2, align 8
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %32
  store i64 0, i64* @bytes_after_crc32, align 8
  br label %52

52:                                               ; preds = %51, %30, %18
  ret void
}

declare dso_local i32 @relax_write_log_crc32(...) #1

declare dso_local i64 @force_new_binlog(...) #1

declare dso_local %struct.lev_crc32* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
