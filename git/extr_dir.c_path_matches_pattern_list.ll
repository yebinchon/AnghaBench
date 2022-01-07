; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_path_matches_pattern_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_path_matches_pattern_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_list = type { i32 }
%struct.index_state = type { i32 }
%struct.path_pattern = type { i32 }

@PATTERN_FLAG_NEGATIVE = common dso_local global i32 0, align 4
@NOT_MATCHED = common dso_local global i32 0, align 4
@MATCHED = common dso_local global i32 0, align 4
@UNDECIDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_matches_pattern_list(i8* %0, i32 %1, i8* %2, i32* %3, %struct.pattern_list* %4, %struct.index_state* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pattern_list*, align 8
  %13 = alloca %struct.index_state*, align 8
  %14 = alloca %struct.path_pattern*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.pattern_list* %4, %struct.pattern_list** %12, align 8
  store %struct.index_state* %5, %struct.index_state** %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = load %struct.pattern_list*, %struct.pattern_list** %12, align 8
  %20 = load %struct.index_state*, %struct.index_state** %13, align 8
  %21 = call %struct.path_pattern* @last_matching_pattern_from_list(i8* %15, i32 %16, i8* %17, i32* %18, %struct.pattern_list* %19, %struct.index_state* %20)
  store %struct.path_pattern* %21, %struct.path_pattern** %14, align 8
  %22 = load %struct.path_pattern*, %struct.path_pattern** %14, align 8
  %23 = icmp ne %struct.path_pattern* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %6
  %25 = load %struct.path_pattern*, %struct.path_pattern** %14, align 8
  %26 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PATTERN_FLAG_NEGATIVE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @NOT_MATCHED, align 4
  store i32 %32, i32* %7, align 4
  br label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @MATCHED, align 4
  store i32 %34, i32* %7, align 4
  br label %37

35:                                               ; preds = %6
  %36 = load i32, i32* @UNDECIDED, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %33, %31
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local %struct.path_pattern* @last_matching_pattern_from_list(i8*, i32, i8*, i32*, %struct.pattern_list*, %struct.index_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
