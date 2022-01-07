; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_lzma_match.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_lzma_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec_lzma2 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32, i32**, i32, i32 }

@DIST_SLOTS = common dso_local global i32 0, align 4
@DIST_MODEL_START = common dso_local global i32 0, align 4
@DIST_MODEL_END = common dso_local global i32 0, align 4
@ALIGN_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xz_dec_lzma2*, i32)* @lzma_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_match(%struct.xz_dec_lzma2* %0, i32 %1) #0 {
  %3 = alloca %struct.xz_dec_lzma2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xz_dec_lzma2* %0, %struct.xz_dec_lzma2** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %9 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 9
  %11 = call i32 @lzma_state_match(i32* %10)
  %12 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %13 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %17 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %20 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %24 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %27 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %31 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %34 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %35 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @lzma_len(%struct.xz_dec_lzma2* %33, i32* %36, i32 %37)
  %39 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %40 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 7
  %42 = load i32**, i32*** %41, align 8
  %43 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %44 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @lzma_get_dist_state(i32 %46)
  %48 = getelementptr inbounds i32*, i32** %42, i64 %47
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %5, align 8
  %50 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %51 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %50, i32 0, i32 1
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @DIST_SLOTS, align 4
  %54 = call i32 @rc_bittree(i32* %51, i32* %52, i32 %53)
  %55 = load i32, i32* @DIST_SLOTS, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @DIST_MODEL_START, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %2
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %63 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  br label %135

65:                                               ; preds = %2
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 1
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 1
  %71 = add nsw i32 2, %70
  %72 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %73 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @DIST_MODEL_END, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %65
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %81 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, %79
  store i32 %84, i32* %82, align 4
  %85 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %86 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %90 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %88, %92
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** %5, align 8
  %99 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %100 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %99, i32 0, i32 1
  %101 = load i32*, i32** %5, align 8
  %102 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %103 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @rc_bittree_reverse(i32* %100, i32* %101, i32* %104, i32 %105)
  br label %134

107:                                              ; preds = %65
  %108 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %109 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %108, i32 0, i32 1
  %110 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %111 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @ALIGN_BITS, align 4
  %115 = sub nsw i32 %113, %114
  %116 = call i32 @rc_direct(i32* %109, i32* %112, i32 %115)
  %117 = load i32, i32* @ALIGN_BITS, align 4
  %118 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %119 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, %117
  store i32 %122, i32* %120, align 4
  %123 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %124 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %123, i32 0, i32 1
  %125 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %126 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %130 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  %132 = load i32, i32* @ALIGN_BITS, align 4
  %133 = call i32 @rc_bittree_reverse(i32* %124, i32* %128, i32* %131, i32 %132)
  br label %134

134:                                              ; preds = %107, %78
  br label %135

135:                                              ; preds = %134, %60
  ret void
}

declare dso_local i32 @lzma_state_match(i32*) #1

declare dso_local i32 @lzma_len(%struct.xz_dec_lzma2*, i32*, i32) #1

declare dso_local i64 @lzma_get_dist_state(i32) #1

declare dso_local i32 @rc_bittree(i32*, i32*, i32) #1

declare dso_local i32 @rc_bittree_reverse(i32*, i32*, i32*, i32) #1

declare dso_local i32 @rc_direct(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
