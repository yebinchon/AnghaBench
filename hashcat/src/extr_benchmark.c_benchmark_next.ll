; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_benchmark.c_benchmark_next.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_benchmark.c_benchmark_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32 }

@benchmark_next.cur = internal global i32 0, align 4
@DEFAULT_BENCHMARK_ALGORITHMS_BUF = common dso_local global i32* null, align 8
@HCBUFSIZ_TINY = common dso_local global i32 0, align 4
@MODULE_HASH_MODES_MAXIMUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @benchmark_next(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load i32*, i32** @DEFAULT_BENCHMARK_ALGORITHMS_BUF, align 8
  %22 = load i32, i32* @benchmark_next.cur, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %65

29:                                               ; preds = %20
  %30 = load i32, i32* @benchmark_next.cur, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @benchmark_next.cur, align 4
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %65

33:                                               ; preds = %1
  %34 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %35 = call i64 @hcmalloc(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %7, align 8
  %37 = load i32, i32* @benchmark_next.cur, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %59, %33
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MODULE_HASH_MODES_MAXIMUM, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %47 = call i32 @module_filename(i32* %43, i32 %44, i8* %45, i32 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @hc_path_exist(i8* %48)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @benchmark_next.cur, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @hcfree(i8* %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %2, align 4
  br label %65

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @hcfree(i8* %63)
  store i32 -1, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %51, %29, %28
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @module_filename(i32*, i32, i8*, i32) #1

declare dso_local i32 @hc_path_exist(i8*) #1

declare dso_local i32 @hcfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
