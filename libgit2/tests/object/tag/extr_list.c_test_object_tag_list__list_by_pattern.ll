; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tag/extr_list.c_test_object_tag_list__list_by_pattern.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tag/extr_list.c_test_object_tag_list__list_by_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@matches = common dso_local global %struct.TYPE_3__* null, align 8
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tag_list__list_by_pattern() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %9, %0
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @matches, align 8
  %4 = load i64, i64* %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i64 %4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* @g_repo, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @matches, align 8
  %12 = load i64, i64* %1, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %15 = call i32 @ensure_tag_pattern_match(i32 %10, %struct.TYPE_3__* %14)
  br label %2

16:                                               ; preds = %2
  ret void
}

declare dso_local i32 @ensure_tag_pattern_match(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
