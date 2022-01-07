; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_grep_source_load_driver.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_grep_source_load_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_source = type { i64, i64 }
%struct.index_state = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grep_source_load_driver(%struct.grep_source* %0, %struct.index_state* %1) #0 {
  %3 = alloca %struct.grep_source*, align 8
  %4 = alloca %struct.index_state*, align 8
  store %struct.grep_source* %0, %struct.grep_source** %3, align 8
  store %struct.index_state* %1, %struct.index_state** %4, align 8
  %5 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %6 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %35

10:                                               ; preds = %2
  %11 = call i32 (...) @grep_attr_lock()
  %12 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %13 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load %struct.index_state*, %struct.index_state** %4, align 8
  %18 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %19 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @userdiff_find_by_path(%struct.index_state* %17, i64 %20)
  %22 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %23 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %16, %10
  %25 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %26 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = call i64 @userdiff_find_by_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %32 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = call i32 (...) @grep_attr_unlock()
  br label %35

35:                                               ; preds = %33, %9
  ret void
}

declare dso_local i32 @grep_attr_lock(...) #1

declare dso_local i64 @userdiff_find_by_path(%struct.index_state*, i64) #1

declare dso_local i64 @userdiff_find_by_name(i8*) #1

declare dso_local i32 @grep_attr_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
