; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_mark_child_for_cleanup.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_mark_child_for_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_to_clean = type { %struct.child_to_clean*, %struct.child_process*, i32 }
%struct.child_process = type { i32 }

@children_to_clean = common dso_local global %struct.child_to_clean* null, align 8
@installed_child_cleanup_handler = common dso_local global i32 0, align 4
@cleanup_children_on_exit = common dso_local global i32 0, align 4
@cleanup_children_on_signal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.child_process*)* @mark_child_for_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_child_for_cleanup(i32 %0, %struct.child_process* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.child_process*, align 8
  %5 = alloca %struct.child_to_clean*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.child_process* %1, %struct.child_process** %4, align 8
  %6 = call %struct.child_to_clean* @xmalloc(i32 24)
  store %struct.child_to_clean* %6, %struct.child_to_clean** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.child_to_clean*, %struct.child_to_clean** %5, align 8
  %9 = getelementptr inbounds %struct.child_to_clean, %struct.child_to_clean* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load %struct.child_process*, %struct.child_process** %4, align 8
  %11 = load %struct.child_to_clean*, %struct.child_to_clean** %5, align 8
  %12 = getelementptr inbounds %struct.child_to_clean, %struct.child_to_clean* %11, i32 0, i32 1
  store %struct.child_process* %10, %struct.child_process** %12, align 8
  %13 = load %struct.child_to_clean*, %struct.child_to_clean** @children_to_clean, align 8
  %14 = load %struct.child_to_clean*, %struct.child_to_clean** %5, align 8
  %15 = getelementptr inbounds %struct.child_to_clean, %struct.child_to_clean* %14, i32 0, i32 0
  store %struct.child_to_clean* %13, %struct.child_to_clean** %15, align 8
  %16 = load %struct.child_to_clean*, %struct.child_to_clean** %5, align 8
  store %struct.child_to_clean* %16, %struct.child_to_clean** @children_to_clean, align 8
  %17 = load i32, i32* @installed_child_cleanup_handler, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @cleanup_children_on_exit, align 4
  %21 = call i32 @atexit(i32 %20)
  %22 = load i32, i32* @cleanup_children_on_signal, align 4
  %23 = call i32 @sigchain_push_common(i32 %22)
  store i32 1, i32* @installed_child_cleanup_handler, align 4
  br label %24

24:                                               ; preds = %19, %2
  ret void
}

declare dso_local %struct.child_to_clean* @xmalloc(i32) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @sigchain_push_common(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
