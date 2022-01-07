; ModuleID = '/home/carl/AnghaBench/git/extr_delta-islands.c_load_delta_islands.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta-islands.c_load_delta_islands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }

@island_marks = common dso_local global i32 0, align 4
@remote_islands = common dso_local global i32 0, align 4
@island_config_callback = common dso_local global i32 0, align 4
@find_island_for_ref = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Marked %d islands, done.\0A\00", align 1
@island_counter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_delta_islands(%struct.repository* %0, i32 %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @kh_init_oid_map()
  store i32 %5, i32* @island_marks, align 4
  %6 = call i32 (...) @kh_init_str()
  store i32 %6, i32* @remote_islands, align 4
  %7 = load i32, i32* @island_config_callback, align 4
  %8 = call i32 @git_config(i32 %7, i32* null)
  %9 = load i32, i32* @find_island_for_ref, align 4
  %10 = call i32 @for_each_ref(i32 %9, i32* null)
  %11 = load %struct.repository*, %struct.repository** %3, align 8
  %12 = call i32 @deduplicate_islands(%struct.repository* %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @island_counter, align 4
  %19 = call i32 @fprintf(i32 %16, i8* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @kh_init_oid_map(...) #1

declare dso_local i32 @kh_init_str(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @for_each_ref(i32, i32*) #1

declare dso_local i32 @deduplicate_islands(%struct.repository*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
