; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_grep_commit_pattern_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_grep_commit_pattern_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32, i64 }

@GREP_PATTERN_TYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@GREP_PATTERN_TYPE_ERE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grep_commit_pattern_type(i32 %0, %struct.grep_opt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grep_opt*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.grep_opt* %1, %struct.grep_opt** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @GREP_PATTERN_TYPE_UNSPECIFIED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %11 = call i32 @grep_set_pattern_type_option(i32 %9, %struct.grep_opt* %10)
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %14 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GREP_PATTERN_TYPE_UNSPECIFIED, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %20 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %23 = call i32 @grep_set_pattern_type_option(i32 %21, %struct.grep_opt* %22)
  br label %34

24:                                               ; preds = %12
  %25 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %26 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @GREP_PATTERN_TYPE_ERE, align 4
  %31 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %32 = call i32 @grep_set_pattern_type_option(i32 %30, %struct.grep_opt* %31)
  br label %33

33:                                               ; preds = %29, %24
  br label %34

34:                                               ; preds = %33, %18
  br label %35

35:                                               ; preds = %34, %8
  ret void
}

declare dso_local i32 @grep_set_pattern_type_option(i32, %struct.grep_opt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
