; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_line_log_init.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_line_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.string_list = type { i32 }
%struct.commit = type { i32 }
%struct.line_log_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @line_log_init(%struct.rev_info* %0, i8* %1, %struct.string_list* %2) #0 {
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.line_log_data*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.string_list* %2, %struct.string_list** %6, align 8
  store %struct.commit* null, %struct.commit** %7, align 8
  %9 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %10 = call %struct.commit* @check_single_commit(%struct.rev_info* %9)
  store %struct.commit* %10, %struct.commit** %7, align 8
  %11 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.commit*, %struct.commit** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.string_list*, %struct.string_list** %6, align 8
  %18 = call %struct.line_log_data* @parse_lines(i32 %14, %struct.commit* %15, i8* %16, %struct.string_list* %17)
  store %struct.line_log_data* %18, %struct.line_log_data** %8, align 8
  %19 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %20 = load %struct.commit*, %struct.commit** %7, align 8
  %21 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %22 = call i32 @add_line_range(%struct.rev_info* %19, %struct.commit* %20, %struct.line_log_data* %21)
  %23 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %24 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %27 = call i32 @parse_pathspec_from_ranges(i32* %25, %struct.line_log_data* %26)
  ret void
}

declare dso_local %struct.commit* @check_single_commit(%struct.rev_info*) #1

declare dso_local %struct.line_log_data* @parse_lines(i32, %struct.commit*, i8*, %struct.string_list*) #1

declare dso_local i32 @add_line_range(%struct.rev_info*, %struct.commit*, %struct.line_log_data*) #1

declare dso_local i32 @parse_pathspec_from_ranges(i32*, %struct.line_log_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
