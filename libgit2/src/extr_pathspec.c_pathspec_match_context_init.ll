; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_pathspec_match_context_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_pathspec_match_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec_match_context = type { i32, i32, i32 }

@WM_CASEFOLD = common dso_local global i32 0, align 4
@git__strcasecmp = common dso_local global i32 0, align 4
@git__strncasecmp = common dso_local global i32 0, align 4
@git__strcmp = common dso_local global i32 0, align 4
@git__strncmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pathspec_match_context*, i32, i32)* @pathspec_match_context_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pathspec_match_context_init(%struct.pathspec_match_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pathspec_match_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pathspec_match_context* %0, %struct.pathspec_match_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %4, align 8
  %11 = getelementptr inbounds %struct.pathspec_match_context, %struct.pathspec_match_context* %10, i32 0, i32 0
  store i32 -1, i32* %11, align 4
  br label %23

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @WM_CASEFOLD, align 4
  %17 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %4, align 8
  %18 = getelementptr inbounds %struct.pathspec_match_context, %struct.pathspec_match_context* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %22

19:                                               ; preds = %12
  %20 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %4, align 8
  %21 = getelementptr inbounds %struct.pathspec_match_context, %struct.pathspec_match_context* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %15
  br label %23

23:                                               ; preds = %22, %9
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* @git__strcasecmp, align 4
  %28 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %4, align 8
  %29 = getelementptr inbounds %struct.pathspec_match_context, %struct.pathspec_match_context* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @git__strncasecmp, align 4
  %31 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %4, align 8
  %32 = getelementptr inbounds %struct.pathspec_match_context, %struct.pathspec_match_context* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %40

33:                                               ; preds = %23
  %34 = load i32, i32* @git__strcmp, align 4
  %35 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %4, align 8
  %36 = getelementptr inbounds %struct.pathspec_match_context, %struct.pathspec_match_context* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @git__strncmp, align 4
  %38 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %4, align 8
  %39 = getelementptr inbounds %struct.pathspec_match_context, %struct.pathspec_match_context* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
