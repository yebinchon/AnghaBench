; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_search_optimal_encode_lists.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_search_optimal_encode_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@lists_encoded = common dso_local global i64 0, align 8
@Header = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@fd = common dso_local global i32* null, align 8
@word_index_offset = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@idx_crc32_complement = common dso_local global i32 0, align 4
@CRC32_Header = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@W = common dso_local global %struct.TYPE_5__* null, align 8
@cur_offs = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"wrote %lld codes bytes in %d lists\0A\00", align 1
@compression_speed = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"wrote %lld(%.6lf%%) interpolative redundant bits.\0A\00", align 1
@redundant_bits = common dso_local global i64 0, align 8
@interpolative_ext_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @search_optimal_encode_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_optimal_encode_lists() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %4 = call i32 @search_estimate_compression_method(i32* %3)
  store i64 0, i64* @lists_encoded, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Header, i32 0, i32 0), align 4
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %7 = call i32 @memcpy(i32 %5, i32* %6, i32 8)
  %8 = load i32*, i32** @fd, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @word_index_offset, align 8
  %12 = load i32, i32* @SEEK_SET, align 4
  %13 = call i32 @lseek(i32 %10, i64 %11, i32 %12)
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %15 = call i32 @search_encode_lists(i32* %14, i32 0)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @idx_crc32_complement, align 4
  %17 = xor i32 %16, -1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CRC32_Header, i32 0, i32 0), align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @W, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = call i32 @memset(%struct.TYPE_5__* %21, i32 0, i32 4)
  %23 = load i64, i64* @cur_offs, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @W, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 %23, i64* %28, align 8
  %29 = call i32 (...) @flushout()
  %30 = load i64, i64* @verbosity, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %0
  %33 = load i64, i64* @cur_offs, align 8
  %34 = load i64, i64* @word_index_offset, align 8
  %35 = sub nsw i64 %33, %34
  %36 = load i64, i64* @lists_encoded, align 8
  %37 = call i32 @kprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %36)
  %38 = load i64, i64* @compression_speed, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i64, i64* @redundant_bits, align 8
  %42 = load i64, i64* @redundant_bits, align 8
  %43 = load i32, i32* @interpolative_ext_bits, align 4
  %44 = call i64 @percent(i64 %42, i32 %43)
  %45 = call i32 @kprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %44)
  br label %46

46:                                               ; preds = %40, %32
  br label %47

47:                                               ; preds = %46, %0
  ret void
}

declare dso_local i32 @search_estimate_compression_method(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @search_encode_lists(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @flushout(...) #1

declare dso_local i32 @kprintf(i8*, i64, i64) #1

declare dso_local i64 @percent(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
