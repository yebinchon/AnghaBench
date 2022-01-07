; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_compile_grep_patterns_real.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_compile_grep_patterns_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32, i32, %struct.grep_expr*, %struct.grep_pat*, i32 }
%struct.grep_expr = type { i32 }
%struct.grep_pat = type { i32, i32, %struct.grep_pat* }

@.str = private unnamed_addr constant [34 x i8] c"incomplete pattern expression: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grep_opt*)* @compile_grep_patterns_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compile_grep_patterns_real(%struct.grep_opt* %0) #0 {
  %2 = alloca %struct.grep_opt*, align 8
  %3 = alloca %struct.grep_pat*, align 8
  %4 = alloca %struct.grep_expr*, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %2, align 8
  %5 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %6 = call %struct.grep_expr* @prep_header_patterns(%struct.grep_opt* %5)
  store %struct.grep_expr* %6, %struct.grep_expr** %4, align 8
  %7 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %8 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %7, i32 0, i32 3
  %9 = load %struct.grep_pat*, %struct.grep_pat** %8, align 8
  store %struct.grep_pat* %9, %struct.grep_pat** %3, align 8
  br label %10

10:                                               ; preds = %25, %1
  %11 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %12 = icmp ne %struct.grep_pat* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %15 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %21 [
    i32 130, label %17
    i32 128, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %13, %13, %13
  %18 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %19 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %20 = call i32 @compile_regexp(%struct.grep_pat* %18, %struct.grep_opt* %19)
  br label %24

21:                                               ; preds = %13
  %22 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %23 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %17
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %27 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %26, i32 0, i32 2
  %28 = load %struct.grep_pat*, %struct.grep_pat** %27, align 8
  store %struct.grep_pat* %28, %struct.grep_pat** %3, align 8
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %31 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.grep_expr*, %struct.grep_expr** %4, align 8
  %36 = icmp ne %struct.grep_expr* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %29
  %38 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %39 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %52

40:                                               ; preds = %34
  %41 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %42 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %47 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %108

51:                                               ; preds = %45, %40
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %54 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %53, i32 0, i32 3
  %55 = load %struct.grep_pat*, %struct.grep_pat** %54, align 8
  store %struct.grep_pat* %55, %struct.grep_pat** %3, align 8
  %56 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %57 = icmp ne %struct.grep_pat* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = call %struct.grep_expr* @compile_pattern_expr(%struct.grep_pat** %3)
  %60 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %61 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %60, i32 0, i32 2
  store %struct.grep_expr* %59, %struct.grep_expr** %61, align 8
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %64 = icmp ne %struct.grep_pat* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %67 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load %struct.grep_expr*, %struct.grep_expr** %4, align 8
  %72 = icmp ne %struct.grep_expr* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %108

74:                                               ; preds = %70
  %75 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %76 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %75, i32 0, i32 2
  %77 = load %struct.grep_expr*, %struct.grep_expr** %76, align 8
  %78 = icmp ne %struct.grep_expr* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load %struct.grep_expr*, %struct.grep_expr** %4, align 8
  %81 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %82 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %81, i32 0, i32 2
  store %struct.grep_expr* %80, %struct.grep_expr** %82, align 8
  br label %105

83:                                               ; preds = %74
  %84 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %85 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.grep_expr*, %struct.grep_expr** %4, align 8
  %90 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %91 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %90, i32 0, i32 2
  %92 = load %struct.grep_expr*, %struct.grep_expr** %91, align 8
  %93 = call %struct.grep_expr* @grep_splice_or(%struct.grep_expr* %89, %struct.grep_expr* %92)
  %94 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %95 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %94, i32 0, i32 2
  store %struct.grep_expr* %93, %struct.grep_expr** %95, align 8
  br label %104

96:                                               ; preds = %83
  %97 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %98 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %97, i32 0, i32 2
  %99 = load %struct.grep_expr*, %struct.grep_expr** %98, align 8
  %100 = load %struct.grep_expr*, %struct.grep_expr** %4, align 8
  %101 = call %struct.grep_expr* @grep_or_expr(%struct.grep_expr* %99, %struct.grep_expr* %100)
  %102 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %103 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %102, i32 0, i32 2
  store %struct.grep_expr* %101, %struct.grep_expr** %103, align 8
  br label %104

104:                                              ; preds = %96, %88
  br label %105

105:                                              ; preds = %104, %79
  %106 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %107 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %73, %50
  ret void
}

declare dso_local %struct.grep_expr* @prep_header_patterns(%struct.grep_opt*) #1

declare dso_local i32 @compile_regexp(%struct.grep_pat*, %struct.grep_opt*) #1

declare dso_local %struct.grep_expr* @compile_pattern_expr(%struct.grep_pat**) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local %struct.grep_expr* @grep_splice_or(%struct.grep_expr*, %struct.grep_expr*) #1

declare dso_local %struct.grep_expr* @grep_or_expr(%struct.grep_expr*, %struct.grep_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
