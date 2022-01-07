; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_perform_query_iterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_perform_query_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_4__*, i32)* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"performing query via iterators\0A\00", align 1
@Qq = common dso_local global i32 0, align 4
@INFTY = common dso_local global i32 0, align 4
@R_tot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perform_query_iterator() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @verbosity, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i32 @PROFILER(i32 6)
  %10 = load i32, i32* @Qq, align 4
  %11 = call %struct.TYPE_4__* @build_iterator_from_query(i32 %10, i32 1)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %1, align 8
  %12 = call i32 @PROFILER(i32 7)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %20, %8
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @INFTY, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @store_res(i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 %25(%struct.TYPE_4__* %26, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %16

30:                                               ; preds = %16
  %31 = call i32 @PROFILER(i32 8)
  %32 = call i32 (...) @postprocess_res()
  %33 = call i32 @PROFILER(i32 9)
  %34 = load i32, i32* @R_tot, align 4
  ret i32 %34
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @PROFILER(i32) #1

declare dso_local %struct.TYPE_4__* @build_iterator_from_query(i32, i32) #1

declare dso_local i32 @store_res(i32) #1

declare dso_local i32 @postprocess_res(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
