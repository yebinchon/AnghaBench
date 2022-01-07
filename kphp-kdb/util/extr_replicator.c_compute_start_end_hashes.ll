; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_compute_start_end_hashes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_compute_start_end_hashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH_FILE_BYTES = common dso_local global i64 0, align 8
@stats_buff = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_start_end_hashes(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load i64, i64* %6, align 8
  %13 = icmp sge i64 %12, 0
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i1 [ false, %4 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @HASH_FILE_BYTES, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = load i64, i64* @stats_buff, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @pread(i32 %22, i64 %23, i64 %24, i64 0)
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i64, i64* @stats_buff, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @md5(i8* %31, i64 %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @memcpy(i32 %35, i32 %36, i32 4)
  br label %68

38:                                               ; preds = %14
  %39 = load i32, i32* %5, align 4
  %40 = load i64, i64* @stats_buff, align 8
  %41 = load i64, i64* @HASH_FILE_BYTES, align 8
  %42 = call i64 @pread(i32 %39, i64 %40, i64 %41, i64 0)
  %43 = load i64, i64* @HASH_FILE_BYTES, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i64, i64* @stats_buff, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load i64, i64* @HASH_FILE_BYTES, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @md5(i8* %48, i64 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i64, i64* @stats_buff, align 8
  %54 = load i64, i64* @HASH_FILE_BYTES, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @HASH_FILE_BYTES, align 8
  %57 = sub nsw i64 %55, %56
  %58 = call i64 @pread(i32 %52, i64 %53, i64 %54, i64 %57)
  %59 = load i64, i64* @HASH_FILE_BYTES, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i64, i64* @stats_buff, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i64, i64* @HASH_FILE_BYTES, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @md5(i8* %64, i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %38, %21
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pread(i32, i64, i64, i64) #1

declare dso_local i32 @md5(i8*, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
