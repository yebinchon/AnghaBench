; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_todo_list_release.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_todo_list_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.todo_list = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @todo_list_release(%struct.todo_list* %0) #0 {
  %2 = alloca %struct.todo_list*, align 8
  store %struct.todo_list* %0, %struct.todo_list** %2, align 8
  %3 = load %struct.todo_list*, %struct.todo_list** %2, align 8
  %4 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %3, i32 0, i32 3
  %5 = call i32 @strbuf_release(i32* %4)
  %6 = load %struct.todo_list*, %struct.todo_list** %2, align 8
  %7 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @FREE_AND_NULL(i32 %8)
  %10 = load %struct.todo_list*, %struct.todo_list** %2, align 8
  %11 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.todo_list*, %struct.todo_list** %2, align 8
  %13 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  ret void
}

declare dso_local i32 @strbuf_release(i32*) #1

declare dso_local i32 @FREE_AND_NULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
