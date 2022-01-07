; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_le_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_le_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i64, i64, i64, i64, i32, i32 }

@FILESYS_SCHEMA_V1 = common dso_local global i64 0, align 8
@log_split_min = common dso_local global i64 0, align 8
@log_split_max = common dso_local global i64 0, align 8
@log_split_mod = common dso_local global i64 0, align 8
@volume_id = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Binlog volume_id isn't matched.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_start*)* @filesys_le_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filesys_le_start(%struct.lev_start* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_start*, align 8
  %4 = alloca i64, align 8
  store %struct.lev_start* %0, %struct.lev_start** %3, align 8
  %5 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %6 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FILESYS_SCHEMA_V1, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %13 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* @log_split_min, align 8
  %15 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %16 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* @log_split_max, align 8
  %18 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %19 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* @log_split_mod, align 8
  %21 = load i64, i64* @log_split_mod, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = load i64, i64* @log_split_min, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i64, i64* @log_split_min, align 8
  %28 = add nsw i64 %27, 1
  %29 = load i64, i64* @log_split_max, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i64, i64* @log_split_max, align 8
  %33 = load i64, i64* @log_split_mod, align 8
  %34 = icmp sle i64 %32, %33
  br label %35

35:                                               ; preds = %31, %26, %23, %11
  %36 = phi i1 [ false, %26 ], [ false, %23 ], [ false, %11 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %40 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 8
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %46 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i64* %4, i32 %47, i32 8)
  %49 = load i64, i64* @volume_id, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %35
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @volume_id, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %51, %35
  %60 = load i64, i64* %4, align 8
  store i64 %60, i64* @volume_id, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %10
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
