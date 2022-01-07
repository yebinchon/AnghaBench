; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_is_excluded.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_is_excluded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_struct = type { i32 }
%struct.index_state = type { i32 }
%struct.path_pattern = type { i32 }

@PATTERN_FLAG_NEGATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_excluded(%struct.dir_struct* %0, %struct.index_state* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dir_struct*, align 8
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.path_pattern*, align 8
  store %struct.dir_struct* %0, %struct.dir_struct** %6, align 8
  store %struct.index_state* %1, %struct.index_state** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %12 = load %struct.index_state*, %struct.index_state** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call %struct.path_pattern* @last_matching_pattern(%struct.dir_struct* %11, %struct.index_state* %12, i8* %13, i32* %14)
  store %struct.path_pattern* %15, %struct.path_pattern** %10, align 8
  %16 = load %struct.path_pattern*, %struct.path_pattern** %10, align 8
  %17 = icmp ne %struct.path_pattern* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.path_pattern*, %struct.path_pattern** %10, align 8
  %20 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PATTERN_FLAG_NEGATIVE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  store i32 %26, i32* %5, align 4
  br label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.path_pattern* @last_matching_pattern(%struct.dir_struct*, %struct.index_state*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
