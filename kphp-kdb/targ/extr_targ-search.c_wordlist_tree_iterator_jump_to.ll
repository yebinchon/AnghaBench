; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_wordlist_tree_iterator_jump_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_wordlist_tree_iterator_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordlist_tree_iterator = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }

@INFTY = common dso_local global i32 0, align 4
@empty_iterator_jump_to = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wordlist_tree_iterator_jump_to(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wordlist_tree_iterator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.wordlist_tree_iterator*
  store %struct.wordlist_tree_iterator* %10, %struct.wordlist_tree_iterator** %6, align 8
  %11 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %12 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %20 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %19, i32 0, i32 3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @tree_subiterator_jump_to(%struct.TYPE_6__* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %25 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %33 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %32, i32 0, i32 2
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @wordlist_subiterator_jump_to(%struct.TYPE_5__* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %23
  br label %37

37:                                               ; preds = %36, %111
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %43 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %47 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = icmp sgt i64 %45, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %53 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  store i32 %51, i32* %3, align 4
  br label %118

54:                                               ; preds = %37
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %60 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %64 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = icmp sgt i64 %62, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %70 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  store i32 %68, i32* %3, align 4
  br label %118

71:                                               ; preds = %54
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @INFTY, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32, i32* @empty_iterator_jump_to, align 4
  %77 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %78 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %81 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  store i32 %79, i32* %3, align 4
  br label %118

82:                                               ; preds = %71
  %83 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %84 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %88 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %86, %90
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %82
  %94 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %95 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %99 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %97, %101
  %103 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %104 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %107 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  store i32 %105, i32* %3, align 4
  br label %118

108:                                              ; preds = %82
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %113 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %112, i32 0, i32 3
  %114 = call i32 @tree_subiterator_next(%struct.TYPE_6__* %113)
  store i32 %114, i32* %7, align 4
  %115 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %6, align 8
  %116 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %115, i32 0, i32 2
  %117 = call i32 @wordlist_subiterator_next(%struct.TYPE_5__* %116)
  store i32 %117, i32* %8, align 4
  br label %37

118:                                              ; preds = %93, %75, %58, %41
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @tree_subiterator_jump_to(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @wordlist_subiterator_jump_to(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tree_subiterator_next(%struct.TYPE_6__*) #1

declare dso_local i32 @wordlist_subiterator_next(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
