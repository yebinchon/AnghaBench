; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_free_grep_patterns.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_free_grep_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32, i32, %struct.grep_pat* }
%struct.grep_pat = type { i32, %struct.grep_pat*, i32, i32, i32, %struct.grep_pat* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_grep_patterns(%struct.grep_opt* %0) #0 {
  %2 = alloca %struct.grep_opt*, align 8
  %3 = alloca %struct.grep_pat*, align 8
  %4 = alloca %struct.grep_pat*, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %2, align 8
  %5 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %6 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %5, i32 0, i32 2
  %7 = load %struct.grep_pat*, %struct.grep_pat** %6, align 8
  store %struct.grep_pat* %7, %struct.grep_pat** %3, align 8
  br label %8

8:                                                ; preds = %48, %1
  %9 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %10 = icmp ne %struct.grep_pat* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %8
  %12 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %13 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %12, i32 0, i32 5
  %14 = load %struct.grep_pat*, %struct.grep_pat** %13, align 8
  store %struct.grep_pat* %14, %struct.grep_pat** %4, align 8
  %15 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %16 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %44 [
    i32 130, label %18
    i32 128, label %18
    i32 129, label %18
  ]

18:                                               ; preds = %11, %11, %11
  %19 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %20 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %25 = call i32 @free_pcre1_regexp(%struct.grep_pat* %24)
  br label %39

26:                                               ; preds = %18
  %27 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %28 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %33 = call i32 @free_pcre2_pattern(%struct.grep_pat* %32)
  br label %38

34:                                               ; preds = %26
  %35 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %36 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %35, i32 0, i32 2
  %37 = call i32 @regfree(i32* %36)
  br label %38

38:                                               ; preds = %34, %31
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %41 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %40, i32 0, i32 1
  %42 = load %struct.grep_pat*, %struct.grep_pat** %41, align 8
  %43 = call i32 @free(%struct.grep_pat* %42)
  br label %45

44:                                               ; preds = %11
  br label %45

45:                                               ; preds = %44, %39
  %46 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %47 = call i32 @free(%struct.grep_pat* %46)
  br label %48

48:                                               ; preds = %45
  %49 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  store %struct.grep_pat* %49, %struct.grep_pat** %3, align 8
  br label %8

50:                                               ; preds = %8
  %51 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %52 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %61

56:                                               ; preds = %50
  %57 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %58 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @free_pattern_expr(i32 %59)
  br label %61

61:                                               ; preds = %56, %55
  ret void
}

declare dso_local i32 @free_pcre1_regexp(%struct.grep_pat*) #1

declare dso_local i32 @free_pcre2_pattern(%struct.grep_pat*) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i32 @free(%struct.grep_pat*) #1

declare dso_local i32 @free_pattern_expr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
