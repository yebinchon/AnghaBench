; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_append_new_todo.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_append_new_todo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.todo_item = type { i32 }
%struct.todo_list = type { i64, %struct.todo_item*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.todo_item* (%struct.todo_list*)* @append_new_todo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.todo_item* @append_new_todo(%struct.todo_list* %0) #0 {
  %2 = alloca %struct.todo_list*, align 8
  store %struct.todo_list* %0, %struct.todo_list** %2, align 8
  %3 = load %struct.todo_list*, %struct.todo_list** %2, align 8
  %4 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %3, i32 0, i32 1
  %5 = load %struct.todo_item*, %struct.todo_item** %4, align 8
  %6 = load %struct.todo_list*, %struct.todo_list** %2, align 8
  %7 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  %10 = load %struct.todo_list*, %struct.todo_list** %2, align 8
  %11 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ALLOC_GROW(%struct.todo_item* %5, i64 %9, i32 %12)
  %14 = load %struct.todo_list*, %struct.todo_list** %2, align 8
  %15 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %14, i32 0, i32 1
  %16 = load %struct.todo_item*, %struct.todo_item** %15, align 8
  %17 = load %struct.todo_list*, %struct.todo_list** %2, align 8
  %18 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %18, align 8
  %21 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %16, i64 %19
  ret %struct.todo_item* %21
}

declare dso_local i32 @ALLOC_GROW(%struct.todo_item*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
