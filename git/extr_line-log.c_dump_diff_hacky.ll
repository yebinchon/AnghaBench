; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_dump_diff_hacky.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_dump_diff_hacky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.line_log_data = type { %struct.line_log_data* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.line_log_data*)* @dump_diff_hacky to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_diff_hacky(%struct.rev_info* %0, %struct.line_log_data* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.line_log_data*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.line_log_data* %1, %struct.line_log_data** %4, align 8
  %5 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %6 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %10 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  %11 = call i8* @output_prefix(%struct.TYPE_2__* %10)
  %12 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %16, %2
  %14 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %15 = icmp ne %struct.line_log_data* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %18 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %19 = call i32 @dump_diff_hacky_one(%struct.rev_info* %17, %struct.line_log_data* %18)
  %20 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %21 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %20, i32 0, i32 0
  %22 = load %struct.line_log_data*, %struct.line_log_data** %21, align 8
  store %struct.line_log_data* %22, %struct.line_log_data** %4, align 8
  br label %13

23:                                               ; preds = %13
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @output_prefix(%struct.TYPE_2__*) #1

declare dso_local i32 @dump_diff_hacky_one(%struct.rev_info*, %struct.line_log_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
