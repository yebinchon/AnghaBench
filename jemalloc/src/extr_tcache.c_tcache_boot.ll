; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_tcache.c_tcache_boot.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_tcache.c_tcache_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@opt_lg_tcache_max = common dso_local global i32 0, align 4
@SC_SMALL_MAXCLASS = common dso_local global i32 0, align 4
@tcache_maxclass = common dso_local global i32 0, align 4
@tcaches_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tcaches\00", align 1
@WITNESS_RANK_TCACHES = common dso_local global i32 0, align 4
@malloc_mutex_rank_exclusive = common dso_local global i32 0, align 4
@nhbins = common dso_local global i32 0, align 4
@CACHELINE = common dso_local global i32 0, align 4
@tcache_bin_info = common dso_local global %struct.TYPE_4__* null, align 8
@total_stack_bytes = common dso_local global i64 0, align 8
@SC_NBINS = common dso_local global i32 0, align 4
@bin_infos = common dso_local global %struct.TYPE_5__* null, align 8
@TCACHE_NSLOTS_SMALL_MIN = common dso_local global i32 0, align 4
@TCACHE_NSLOTS_SMALL_MAX = common dso_local global i32 0, align 4
@TCACHE_NSLOTS_LARGE = common dso_local global i32 0, align 4
@total_stack_padding = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcache_boot(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @opt_lg_tcache_max, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = call i32 @ZU(i32 1)
  %12 = load i32, i32* @opt_lg_tcache_max, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* @SC_SMALL_MAXCLASS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @SC_SMALL_MAXCLASS, align 4
  store i32 %17, i32* @tcache_maxclass, align 4
  br label %22

18:                                               ; preds = %10
  %19 = call i32 @ZU(i32 1)
  %20 = load i32, i32* @opt_lg_tcache_max, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* @tcache_maxclass, align 4
  br label %22

22:                                               ; preds = %18, %16
  %23 = load i32, i32* @WITNESS_RANK_TCACHES, align 4
  %24 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %25 = call i64 @malloc_mutex_init(i32* @tcaches_mtx, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %131

28:                                               ; preds = %22
  %29 = load i32, i32* @tcache_maxclass, align 4
  %30 = call i32 @sz_size2index(i32 %29)
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @nhbins, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 (...) @b0get()
  %34 = load i32, i32* @nhbins, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @CACHELINE, align 4
  %39 = call i64 @base_alloc(i32* %32, i32 %33, i32 %37, i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** @tcache_bin_info, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %42 = icmp eq %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %131

44:                                               ; preds = %28
  store i64 0, i64* @total_stack_bytes, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %101, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SC_NBINS, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %104

49:                                               ; preds = %45
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bin_infos, align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 1
  %57 = load i32, i32* @TCACHE_NSLOTS_SMALL_MIN, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @TCACHE_NSLOTS_SMALL_MIN, align 4
  store i32 %60, i32* %5, align 4
  br label %82

61:                                               ; preds = %49
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bin_infos, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 1
  %69 = load i32, i32* @TCACHE_NSLOTS_SMALL_MAX, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bin_infos, align 8
  %73 = load i32, i32* %4, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %81

79:                                               ; preds = %61
  %80 = load i32, i32* @TCACHE_NSLOTS_SMALL_MAX, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %71
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i32, i32* %5, align 4
  %84 = zext i32 %83 to i64
  %85 = mul i64 %84, 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ult i32 %87, undef
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %93 = load i32, i32* %4, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %91, i32* %96, align 4
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* @total_stack_bytes, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* @total_stack_bytes, align 8
  br label %101

101:                                              ; preds = %82
  %102 = load i32, i32* %4, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %45

104:                                              ; preds = %45
  br label %105

105:                                              ; preds = %124, %104
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @nhbins, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = load i32, i32* @TCACHE_NSLOTS_LARGE, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %116 = load i32, i32* %4, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* %7, align 4
  %121 = zext i32 %120 to i64
  %122 = load i64, i64* @total_stack_bytes, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* @total_stack_bytes, align 8
  br label %124

124:                                              ; preds = %109
  %125 = load i32, i32* %4, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %105

127:                                              ; preds = %105
  %128 = load i64, i64* @total_stack_padding, align 8
  %129 = load i64, i64* @total_stack_bytes, align 8
  %130 = add nsw i64 %129, %128
  store i64 %130, i64* @total_stack_bytes, align 8
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %127, %43, %27
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @ZU(i32) #1

declare dso_local i64 @malloc_mutex_init(i32*, i8*, i32, i32) #1

declare dso_local i32 @sz_size2index(i32) #1

declare dso_local i64 @base_alloc(i32*, i32, i32, i32) #1

declare dso_local i32 @b0get(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
