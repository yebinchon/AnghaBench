; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-trees.c_new_intree_node.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-trees.c_new_intree_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }

@TS_HEADER = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @new_intree_node(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TS_HEADER, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = call i32 (...) @lrand48()
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %11, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TS_HEADER, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = mul nsw i64 %18, 2
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %73, label %24

24:                                               ; preds = %1
  store i32 5, i32* %6, align 4
  br label %25

25:                                               ; preds = %44, %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = call i32 (...) @lrand48()
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %30, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %4, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TS_HEADER, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = mul nsw i64 %37, 2
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %45

44:                                               ; preds = %29
  br label %25

45:                                               ; preds = %43, %25
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %72, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TS_HEADER, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = mul nsw i64 %52, 2
  %54 = add nsw i64 %53, 1
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @alloc_new_intree_page(i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TS_HEADER, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = mul nsw i64 %66, 2
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @assert(i32 %70)
  br label %72

72:                                               ; preds = %48, %45
  br label %73

73:                                               ; preds = %72, %1
  %74 = load i32, i32* %5, align 4
  %75 = call %struct.TYPE_3__* @TS_NODE(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TS_HEADER, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = mul nsw i64 %81, 2
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TS_HEADER, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %4, align 8
  %88 = mul nsw i64 %87, 2
  %89 = add nsw i64 %88, 1
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 4
  %93 = icmp sge i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @alloc_new_intree_page(i32) #1

declare dso_local %struct.TYPE_3__* @TS_NODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
