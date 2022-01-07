; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_tweak_split_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_tweak_split_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*)* @tweak_split_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tweak_split_index(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %3 = call i32 (...) @git_config_get_split_index()
  switch i32 %3, label %11 [
    i32 -1, label %4
    i32 0, label %5
    i32 1, label %8
  ]

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  %6 = load %struct.index_state*, %struct.index_state** %2, align 8
  %7 = call i32 @remove_split_index(%struct.index_state* %6)
  br label %12

8:                                                ; preds = %1
  %9 = load %struct.index_state*, %struct.index_state** %2, align 8
  %10 = call i32 @add_split_index(%struct.index_state* %9)
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %8, %5, %4
  ret void
}

declare dso_local i32 @git_config_get_split_index(...) #1

declare dso_local i32 @remove_split_index(%struct.index_state*) #1

declare dso_local i32 @add_split_index(%struct.index_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
