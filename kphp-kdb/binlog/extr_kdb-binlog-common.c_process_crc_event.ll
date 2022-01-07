; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_process_crc_event.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_process_crc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32 }
%struct.lev_crc32 = type { i64, i32 }

@disable_crc32 = common dso_local global i32 0, align 4
@log_crc32_complement = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"crc mismatch at binlog position %lld, file %s offset %lld\0A\00", align 1
@binlogname = common dso_local global i32 0, align 4
@log_start_pos = common dso_local global i64 0, align 8
@log_headers_size = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [79 x i8] c"position at binlog position %lld, file %s offset %lld: expected position %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lev_generic*, i32)* @process_crc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_crc_event(%struct.lev_generic* %0, i32 %1) #0 {
  %3 = alloca %struct.lev_generic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.lev_generic* %0, %struct.lev_generic** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @relax_log_crc32(i32 0)
  %7 = load i32, i32* @disable_crc32, align 4
  %8 = and i32 %7, 2
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %71, label %10

10:                                               ; preds = %2
  %11 = call i32 (...) @log_cur_pos()
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* @log_crc32_complement, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %18 = bitcast %struct.lev_generic* %17 to %struct.lev_crc32*
  %19 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %16, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %10
  %23 = load i32, i32* @stderr, align 4
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @binlogname, align 4
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @log_start_pos, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load i64, i64* @log_headers_size, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 (i32, i8*, i64, i32, i64, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25, i64 %30)
  %32 = load i32, i32* @log_crc32_complement, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %35 = bitcast %struct.lev_generic* %34 to %struct.lev_crc32*
  %36 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %33, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  br label %41

41:                                               ; preds = %22, %10
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %44 = bitcast %struct.lev_generic* %43 to %struct.lev_crc32*
  %45 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %42, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %41
  %49 = load i32, i32* @stderr, align 4
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* @binlogname, align 4
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @log_start_pos, align 8
  %54 = sub nsw i64 %52, %53
  %55 = load i64, i64* @log_headers_size, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %58 = bitcast %struct.lev_generic* %57 to %struct.lev_crc32*
  %59 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i32, i8*, i64, i32, i64, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i64 %50, i32 %51, i64 %56, i64 %60)
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %64 = bitcast %struct.lev_generic* %63 to %struct.lev_crc32*
  %65 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %62, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  br label %70

70:                                               ; preds = %48, %41
  br label %71

71:                                               ; preds = %70, %2
  %72 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %73 = call i32 @process_timestamp_event(%struct.lev_generic* %72)
  ret void
}

declare dso_local i32 @relax_log_crc32(i32) #1

declare dso_local i32 @log_cur_pos(...) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i32, i64, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @process_timestamp_event(%struct.lev_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
