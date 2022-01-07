; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_lookup_line_range.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_lookup_line_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_log_data = type { i32, %struct.line_log_data* }
%struct.rev_info = type { i32 }
%struct.commit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line_log_data* (%struct.rev_info*, %struct.commit*)* @lookup_line_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line_log_data* @lookup_line_range(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.line_log_data*, align 8
  %6 = alloca %struct.line_log_data*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  store %struct.line_log_data* null, %struct.line_log_data** %5, align 8
  %7 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %8 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 0
  %9 = load %struct.commit*, %struct.commit** %4, align 8
  %10 = getelementptr inbounds %struct.commit, %struct.commit* %9, i32 0, i32 0
  %11 = call %struct.line_log_data* @lookup_decoration(i32* %8, i32* %10)
  store %struct.line_log_data* %11, %struct.line_log_data** %5, align 8
  %12 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  store %struct.line_log_data* %12, %struct.line_log_data** %6, align 8
  br label %13

13:                                               ; preds = %20, %2
  %14 = load %struct.line_log_data*, %struct.line_log_data** %6, align 8
  %15 = icmp ne %struct.line_log_data* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.line_log_data*, %struct.line_log_data** %6, align 8
  %18 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %17, i32 0, i32 0
  %19 = call i32 @range_set_check_invariants(i32* %18)
  br label %20

20:                                               ; preds = %16
  %21 = load %struct.line_log_data*, %struct.line_log_data** %6, align 8
  %22 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %21, i32 0, i32 1
  %23 = load %struct.line_log_data*, %struct.line_log_data** %22, align 8
  store %struct.line_log_data* %23, %struct.line_log_data** %6, align 8
  br label %13

24:                                               ; preds = %13
  %25 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  ret %struct.line_log_data* %25
}

declare dso_local %struct.line_log_data* @lookup_decoration(i32*, i32*) #1

declare dso_local i32 @range_set_check_invariants(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
