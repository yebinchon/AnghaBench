; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_tsd.c_thd_start_global_slow.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_tsd.c_thd_start_global_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@originally_fast = common dso_local global i64 0, align 8
@ATOMIC_SEQ_CST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thd_start_global_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thd_start_global_slow(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %3, align 8
  %7 = call i32 @mallocx(i32 1, i32 0)
  %8 = call i32 @free(i32 %7)
  %9 = call i32* (...) @tsd_fetch()
  store i32* %9, i32** %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* @originally_fast, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @tsd_fast(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i1 [ false, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %23 = call i32 @atomic_store_b(i32* %11, i32 %21, i32 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %27 = call i32 @atomic_store_u32(i32* %25, i32 1, i32 %26)
  br label %28

28:                                               ; preds = %34, %19
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %32 = call i32 @atomic_load_u32(i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %28

35:                                               ; preds = %28
  %36 = call i32 @mallocx(i32 1, i32 0)
  %37 = call i32 @free(i32 %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @tsd_fast(i32* %40)
  %42 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %43 = call i32 @atomic_store_b(i32* %39, i32 %41, i32 %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %47 = call i32 @atomic_store_u32(i32* %45, i32 3, i32 %46)
  br label %48

48:                                               ; preds = %54, %35
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %52 = call i32 @atomic_load_u32(i32* %50, i32 %51)
  %53 = icmp ne i32 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %48

55:                                               ; preds = %48
  %56 = call i32 @mallocx(i32 1, i32 0)
  %57 = call i32 @free(i32 %56)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @tsd_fast(i32* %60)
  %62 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %63 = call i32 @atomic_store_b(i32* %59, i32 %61, i32 %62)
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %67 = call i32 @atomic_store_u32(i32* %65, i32 5, i32 %66)
  br label %68

68:                                               ; preds = %74, %55
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %72 = call i32 @atomic_load_u32(i32* %70, i32 %71)
  %73 = icmp ne i32 %72, 6
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %68

75:                                               ; preds = %68
  %76 = call i32 @mallocx(i32 1, i32 0)
  %77 = call i32 @free(i32 %76)
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @tsd_fast(i32* %80)
  %82 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %83 = call i32 @atomic_store_b(i32* %79, i32 %81, i32 %82)
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %87 = call i32 @atomic_store_u32(i32* %85, i32 7, i32 %86)
  br label %88

88:                                               ; preds = %94, %75
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %92 = call i32 @atomic_load_u32(i32* %90, i32 %91)
  %93 = icmp ne i32 %92, 8
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %88

95:                                               ; preds = %88
  %96 = call i32 @mallocx(i32 1, i32 0)
  %97 = call i32 @free(i32 %96)
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i64, i64* @originally_fast, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @tsd_fast(i32* %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br label %107

107:                                              ; preds = %102, %95
  %108 = phi i1 [ false, %95 ], [ %106, %102 ]
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %111 = call i32 @atomic_store_b(i32* %99, i32 %109, i32 %110)
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* @ATOMIC_SEQ_CST, align 4
  %115 = call i32 @atomic_store_u32(i32* %113, i32 9, i32 %114)
  ret i8* null
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @mallocx(i32, i32) #1

declare dso_local i32* @tsd_fetch(...) #1

declare dso_local i32 @atomic_store_b(i32*, i32, i32) #1

declare dso_local i32 @tsd_fast(i32*) #1

declare dso_local i32 @atomic_store_u32(i32*, i32, i32) #1

declare dso_local i32 @atomic_load_u32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
