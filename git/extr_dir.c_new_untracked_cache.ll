; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_new_untracked_cache.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_new_untracked_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.untracked_cache* }
%struct.untracked_cache = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c".gitignore\00", align 1
@DIR_SHOW_OTHER_DIRECTORIES = common dso_local global i32 0, align 4
@DIR_HIDE_EMPTY_DIRECTORIES = common dso_local global i32 0, align 4
@UNTRACKED_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*)* @new_untracked_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_untracked_cache(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca %struct.untracked_cache*, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %4 = call %struct.untracked_cache* @xcalloc(i32 1, i32 16)
  store %struct.untracked_cache* %4, %struct.untracked_cache** %3, align 8
  %5 = load %struct.untracked_cache*, %struct.untracked_cache** %3, align 8
  %6 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %5, i32 0, i32 2
  %7 = call i32 @strbuf_init(i32* %6, i32 100)
  %8 = load %struct.untracked_cache*, %struct.untracked_cache** %3, align 8
  %9 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load i32, i32* @DIR_SHOW_OTHER_DIRECTORIES, align 4
  %11 = load i32, i32* @DIR_HIDE_EMPTY_DIRECTORIES, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.untracked_cache*, %struct.untracked_cache** %3, align 8
  %14 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.untracked_cache*, %struct.untracked_cache** %3, align 8
  %16 = call i32 @set_untracked_ident(%struct.untracked_cache* %15)
  %17 = load %struct.untracked_cache*, %struct.untracked_cache** %3, align 8
  %18 = load %struct.index_state*, %struct.index_state** %2, align 8
  %19 = getelementptr inbounds %struct.index_state, %struct.index_state* %18, i32 0, i32 1
  store %struct.untracked_cache* %17, %struct.untracked_cache** %19, align 8
  %20 = load i32, i32* @UNTRACKED_CHANGED, align 4
  %21 = load %struct.index_state*, %struct.index_state** %2, align 8
  %22 = getelementptr inbounds %struct.index_state, %struct.index_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  ret void
}

declare dso_local %struct.untracked_cache* @xcalloc(i32, i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @set_untracked_ident(%struct.untracked_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
