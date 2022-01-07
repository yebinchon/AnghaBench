; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_write_split_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_write_split_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.lock_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.lock_file*, i32)* @write_split_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_split_index(%struct.index_state* %0, %struct.lock_file* %1, i32 %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca %struct.lock_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store %struct.lock_file* %1, %struct.lock_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.index_state*, %struct.index_state** %4, align 8
  %9 = call i32 @prepare_to_write_split_index(%struct.index_state* %8)
  %10 = load %struct.index_state*, %struct.index_state** %4, align 8
  %11 = load %struct.lock_file*, %struct.lock_file** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @do_write_locked_index(%struct.index_state* %10, %struct.lock_file* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.index_state*, %struct.index_state** %4, align 8
  %15 = call i32 @finish_writing_split_index(%struct.index_state* %14)
  %16 = load i32, i32* %7, align 4
  ret i32 %16
}

declare dso_local i32 @prepare_to_write_split_index(%struct.index_state*) #1

declare dso_local i32 @do_write_locked_index(%struct.index_state*, %struct.lock_file*, i32) #1

declare dso_local i32 @finish_writing_split_index(%struct.index_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
