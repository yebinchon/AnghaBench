; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_xz_dec_lzma2_reset.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_xz_dec_lzma2_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec_lzma2 = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i32 }

@XZ_OPTIONS_ERROR = common dso_local global i32 0, align 4
@XZ_MEMLIMIT_ERROR = common dso_local global i32 0, align 4
@XZ_MEM_ERROR = common dso_local global i32 0, align 4
@SEQ_CONTROL = common dso_local global i32 0, align 4
@XZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xz_dec_lzma2_reset(%struct.xz_dec_lzma2* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xz_dec_lzma2*, align 8
  %5 = alloca i32, align 4
  store %struct.xz_dec_lzma2* %0, %struct.xz_dec_lzma2** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 39
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @XZ_OPTIONS_ERROR, align 4
  store i32 %9, i32* %3, align 4
  br label %109

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 1
  %13 = add nsw i32 2, %12
  %14 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %15 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 1
  %19 = add nsw i32 %18, 11
  %20 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %21 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, %19
  store i32 %24, i32* %22, align 8
  %25 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %26 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @DEC_IS_MULTI(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %94

31:                                               ; preds = %10
  %32 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %33 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %37 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %35, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @XZ_MEMLIMIT_ERROR, align 4
  store i32 %42, i32* %3, align 4
  br label %109

43:                                               ; preds = %31
  %44 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %45 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %49 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %52 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @DEC_IS_DYNALLOC(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %93

57:                                               ; preds = %43
  %58 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %59 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %63 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %57
  %68 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %69 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @free(i32* %71)
  %73 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %74 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32* @malloc(i32 %76)
  %78 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %79 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  store i32* %77, i32** %80, align 8
  %81 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %82 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %67
  %87 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %88 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* @XZ_MEM_ERROR, align 4
  store i32 %90, i32* %3, align 4
  br label %109

91:                                               ; preds = %67
  br label %92

92:                                               ; preds = %91, %57
  br label %93

93:                                               ; preds = %92, %43
  br label %94

94:                                               ; preds = %93, %10
  %95 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %96 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* @SEQ_CONTROL, align 4
  %99 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %100 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %103 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %106 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @XZ_OK, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %94, %86, %41, %8
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @DEC_IS_MULTI(i32) #1

declare dso_local i64 @DEC_IS_DYNALLOC(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
