; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_has_unstaged_changes.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_has_unstaged_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.rev_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @has_unstaged_changes(%struct.repository* %0, i32 %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rev_info, align 4
  %6 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.repository*, %struct.repository** %3, align 8
  %8 = call i32 @repo_init_revisions(%struct.repository* %7, %struct.rev_info* %5, i32* null)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %11, %2
  %19 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %23 = call i32 @diff_setup_done(%struct.TYPE_5__* %22)
  %24 = call i32 @run_diff_files(%struct.rev_info* %5, i32 0)
  store i32 %24, i32* %6, align 4
  %25 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @diff_result_code(%struct.TYPE_5__* %25, i32 %26)
  ret i32 %27
}

declare dso_local i32 @repo_init_revisions(%struct.repository*, %struct.rev_info*, i32*) #1

declare dso_local i32 @diff_setup_done(%struct.TYPE_5__*) #1

declare dso_local i32 @run_diff_files(%struct.rev_info*, i32) #1

declare dso_local i32 @diff_result_code(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
