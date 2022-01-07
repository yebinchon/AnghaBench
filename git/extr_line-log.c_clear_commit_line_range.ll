; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_clear_commit_line_range.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_clear_commit_line_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.commit = type { i32 }
%struct.line_log_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.commit*)* @clear_commit_line_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_commit_line_range(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.line_log_data*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %6 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %7 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 0
  %8 = load %struct.commit*, %struct.commit** %4, align 8
  %9 = getelementptr inbounds %struct.commit, %struct.commit* %8, i32 0, i32 0
  %10 = call %struct.line_log_data* @lookup_decoration(i32* %7, i32* %9)
  store %struct.line_log_data* %10, %struct.line_log_data** %5, align 8
  %11 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  %12 = icmp ne %struct.line_log_data* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  %16 = call i32 @free_line_log_data(%struct.line_log_data* %15)
  %17 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 0
  %19 = load %struct.commit*, %struct.commit** %4, align 8
  %20 = getelementptr inbounds %struct.commit, %struct.commit* %19, i32 0, i32 0
  %21 = call i32 @add_decoration(i32* %18, i32* %20, i32* null)
  br label %22

22:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.line_log_data* @lookup_decoration(i32*, i32*) #1

declare dso_local i32 @free_line_log_data(%struct.line_log_data*) #1

declare dso_local i32 @add_decoration(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
