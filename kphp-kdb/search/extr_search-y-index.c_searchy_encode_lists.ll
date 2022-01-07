; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_searchy_encode_lists.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_searchy_encode_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@fd = common dso_local global i32* null, align 8
@word_index_offset = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@PC = common dso_local global i32 0, align 4
@P = common dso_local global %struct.TYPE_8__* null, align 8
@W = common dso_local global %struct.TYPE_9__* null, align 8
@Header = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@idx_crc32_complement = common dso_local global i32 0, align 4
@CRC32_Header = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@cur_offs = common dso_local global i64 0, align 8
@item_positions = common dso_local global i32 0, align 4
@tot_items = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"wrote %d item positions bytes\0A\00", align 1
@terms_bits = common dso_local global i64 0, align 8
@tag_bits = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"total data bits %lld, coordinates (%.6lf%%)\0A\00", align 1
@coordinate_bits = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"wrote %lld codes bytes in %d lists\0A\00", align 1
@lists_encoded = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"%d terms (%lld bits) and %d tags (%lld bits)\0A\00", align 1
@tot_terms = common dso_local global i32 0, align 4
@tot_tags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @searchy_encode_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @searchy_encode_lists() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = call i32 (...) @encode_lists_reset()
  %7 = load i32*, i32** @fd, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* @word_index_offset, align 8
  %11 = load i32, i32* @SEEK_SET, align 4
  %12 = call i32 @lseek(i32 %9, i64 %10, i32 %11)
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %71, %0
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PC, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %13
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @P, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %42, %17
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @PC, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @P, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %30, %26
  %40 = phi i1 [ false, %26 ], [ %38, %30 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %2, align 4
  br label %26

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @P, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @W, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i64 %51, i64* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @P, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* %3, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** @W, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = call i32 @searchy_encode_list(%struct.TYPE_8__* %60, i32 %63, %struct.TYPE_9__* %67)
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %71

71:                                               ; preds = %45
  %72 = load i32, i32* %2, align 4
  store i32 %72, i32* %3, align 4
  br label %13

73:                                               ; preds = %13
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Header, i32 0, i32 0), align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* @idx_crc32_complement, align 4
  %80 = xor i32 %79, -1
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CRC32_Header, i32 0, i32 0), align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @W, align 8
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %83
  %85 = call i32 @memset(%struct.TYPE_9__* %84, i32 0, i32 4)
  %86 = load i64, i64* @cur_offs, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @W, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store i64 %86, i64* %91, align 8
  %92 = load i32, i32* @item_positions, align 4
  %93 = load i64, i64* @tot_items, align 8
  %94 = mul nsw i64 4, %93
  %95 = add nsw i64 %94, 4
  %96 = call i32 @writeout(i32 %92, i64 %95)
  %97 = load i32, i32* %1, align 4
  %98 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = call i32 (...) @flushout()
  %100 = load i64, i64* @terms_bits, align 8
  %101 = load i64, i64* @tag_bits, align 8
  %102 = add nsw i64 %100, %101
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* %5, align 8
  %104 = trunc i64 %103 to i32
  %105 = load double, double* @coordinate_bits, align 8
  %106 = fmul double 1.000000e+02, %105
  %107 = load i64, i64* %5, align 8
  %108 = sitofp i64 %107 to double
  %109 = fdiv double %106, %108
  %110 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %104, double %109)
  %111 = load i64, i64* @cur_offs, align 8
  %112 = load i64, i64* @word_index_offset, align 8
  %113 = sub nsw i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* @lists_encoded, align 4
  %116 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load i32, i32* @tot_terms, align 4
  %118 = load i64, i64* @terms_bits, align 8
  %119 = load i32, i32* @tot_tags, align 4
  %120 = load i64, i64* @tag_bits, align 8
  %121 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %117, i64 %118, i32 %119, i64 %120)
  %122 = load i32, i32* %1, align 4
  ret i32 %122
}

declare dso_local i32 @encode_lists_reset(...) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @searchy_encode_list(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @writeout(i32, i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @flushout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
