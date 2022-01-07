; ModuleID = '/home/carl/AnghaBench/git/extr_pathspec.c_find_pathspecs_matching_against_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_pathspec.c_find_pathspecs_matching_against_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32 }
%struct.index_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @find_pathspecs_matching_against_index(%struct.pathspec* %0, %struct.index_state* %1) #0 {
  %3 = alloca %struct.pathspec*, align 8
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  store %struct.pathspec* %0, %struct.pathspec** %3, align 8
  store %struct.index_state* %1, %struct.index_state** %4, align 8
  %6 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %7 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @xcalloc(i32 %8, i32 1)
  store i8* %9, i8** %5, align 8
  %10 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %11 = load %struct.index_state*, %struct.index_state** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @add_pathspec_matches_against_index(%struct.pathspec* %10, %struct.index_state* %11, i8* %12)
  %14 = load i8*, i8** %5, align 8
  ret i8* %14
}

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @add_pathspec_matches_against_index(%struct.pathspec*, %struct.index_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
