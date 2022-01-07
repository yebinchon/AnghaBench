; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_condition_filter_iterator_jump_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_condition_filter_iterator_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.condition_filter_iterator = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32)* }

@max_uid = common dso_local global i32 0, align 4
@empty_iterator_jump_to = common dso_local global i32 0, align 4
@INFTY = common dso_local global i32 0, align 4
@User = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @condition_filter_iterator_jump_to(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.condition_filter_iterator*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = inttoptr i64 %8 to %struct.condition_filter_iterator*
  store %struct.condition_filter_iterator* %9, %struct.condition_filter_iterator** %6, align 8
  %10 = load %struct.condition_filter_iterator*, %struct.condition_filter_iterator** %6, align 8
  %11 = getelementptr inbounds %struct.condition_filter_iterator, %struct.condition_filter_iterator* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.condition_filter_iterator*, %struct.condition_filter_iterator** %6, align 8
  %18 = getelementptr inbounds %struct.condition_filter_iterator, %struct.condition_filter_iterator* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %20, align 8
  %22 = load %struct.condition_filter_iterator*, %struct.condition_filter_iterator** %6, align 8
  %23 = getelementptr inbounds %struct.condition_filter_iterator, %struct.condition_filter_iterator* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 %21(%struct.TYPE_3__* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %16, %2
  br label %28

28:                                               ; preds = %27, %69
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @max_uid, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* @empty_iterator_jump_to, align 4
  %34 = load %struct.condition_filter_iterator*, %struct.condition_filter_iterator** %6, align 8
  %35 = getelementptr inbounds %struct.condition_filter_iterator, %struct.condition_filter_iterator* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @INFTY, align 4
  %37 = load %struct.condition_filter_iterator*, %struct.condition_filter_iterator** %6, align 8
  %38 = getelementptr inbounds %struct.condition_filter_iterator, %struct.condition_filter_iterator* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 %36, i32* %3, align 4
  br label %81

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @max_uid, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i64*, i64** @User, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %43, %39
  %51 = phi i1 [ false, %39 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64*, i64** @User, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.condition_filter_iterator*, %struct.condition_filter_iterator** %6, align 8
  %60 = getelementptr inbounds %struct.condition_filter_iterator, %struct.condition_filter_iterator* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @user_matches_condition(i64 %58, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %50
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.condition_filter_iterator*, %struct.condition_filter_iterator** %6, align 8
  %68 = getelementptr inbounds %struct.condition_filter_iterator, %struct.condition_filter_iterator* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 %66, i32* %3, align 4
  br label %81

69:                                               ; preds = %50
  %70 = load %struct.condition_filter_iterator*, %struct.condition_filter_iterator** %6, align 8
  %71 = getelementptr inbounds %struct.condition_filter_iterator, %struct.condition_filter_iterator* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %73, align 8
  %75 = load %struct.condition_filter_iterator*, %struct.condition_filter_iterator** %6, align 8
  %76 = getelementptr inbounds %struct.condition_filter_iterator, %struct.condition_filter_iterator* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 %74(%struct.TYPE_3__* %77, i32 %79)
  store i32 %80, i32* %7, align 4
  br label %28

81:                                               ; preds = %65, %32
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @user_matches_condition(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
