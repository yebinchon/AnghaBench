; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_get_files_dirs.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_get_files_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i32 }
%struct.tree = type { i32 }
%struct.pathspec = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@save_files_dirs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.merge_options*, %struct.tree*)* @get_files_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_files_dirs(%struct.merge_options* %0, %struct.tree* %1) #0 {
  %3 = alloca %struct.merge_options*, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca %struct.pathspec, align 4
  store %struct.merge_options* %0, %struct.merge_options** %3, align 8
  store %struct.tree* %1, %struct.tree** %4, align 8
  %6 = call i32 @memset(%struct.pathspec* %5, i32 0, i32 4)
  %7 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %8 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tree*, %struct.tree** %4, align 8
  %11 = load i32, i32* @save_files_dirs, align 4
  %12 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %13 = call i32 @read_tree_recursive(i32 %9, %struct.tree* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, %struct.pathspec* %5, i32 %11, %struct.merge_options* %12)
  ret void
}

declare dso_local i32 @memset(%struct.pathspec*, i32, i32) #1

declare dso_local i32 @read_tree_recursive(i32, %struct.tree*, i8*, i32, i32, %struct.pathspec*, i32, %struct.merge_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
