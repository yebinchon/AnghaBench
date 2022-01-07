; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_add_line_range.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_add_line_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.commit = type { i32 }
%struct.line_log_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.commit*, %struct.line_log_data*)* @add_line_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_line_range(%struct.rev_info* %0, %struct.commit* %1, %struct.line_log_data* %2) #0 {
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.line_log_data*, align 8
  %7 = alloca %struct.line_log_data*, align 8
  %8 = alloca %struct.line_log_data*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store %struct.line_log_data* %2, %struct.line_log_data** %6, align 8
  store %struct.line_log_data* null, %struct.line_log_data** %7, align 8
  store %struct.line_log_data* null, %struct.line_log_data** %8, align 8
  %9 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %10 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  %11 = load %struct.commit*, %struct.commit** %5, align 8
  %12 = getelementptr inbounds %struct.commit, %struct.commit* %11, i32 0, i32 0
  %13 = call %struct.line_log_data* @lookup_decoration(i32* %10, i32* %12)
  store %struct.line_log_data* %13, %struct.line_log_data** %7, align 8
  %14 = load %struct.line_log_data*, %struct.line_log_data** %7, align 8
  %15 = icmp ne %struct.line_log_data* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.line_log_data*, %struct.line_log_data** %6, align 8
  %18 = icmp ne %struct.line_log_data* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.line_log_data*, %struct.line_log_data** %7, align 8
  %21 = load %struct.line_log_data*, %struct.line_log_data** %6, align 8
  %22 = call %struct.line_log_data* @line_log_data_merge(%struct.line_log_data* %20, %struct.line_log_data* %21)
  store %struct.line_log_data* %22, %struct.line_log_data** %8, align 8
  %23 = load %struct.line_log_data*, %struct.line_log_data** %7, align 8
  %24 = call i32 @free_line_log_data(%struct.line_log_data* %23)
  br label %32

25:                                               ; preds = %16, %3
  %26 = load %struct.line_log_data*, %struct.line_log_data** %6, align 8
  %27 = icmp ne %struct.line_log_data* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.line_log_data*, %struct.line_log_data** %6, align 8
  %30 = call %struct.line_log_data* @line_log_data_copy(%struct.line_log_data* %29)
  store %struct.line_log_data* %30, %struct.line_log_data** %8, align 8
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %34 = icmp ne %struct.line_log_data* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %37 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %36, i32 0, i32 0
  %38 = load %struct.commit*, %struct.commit** %5, align 8
  %39 = getelementptr inbounds %struct.commit, %struct.commit* %38, i32 0, i32 0
  %40 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %41 = call i32 @add_decoration(i32* %37, i32* %39, %struct.line_log_data* %40)
  br label %42

42:                                               ; preds = %35, %32
  ret void
}

declare dso_local %struct.line_log_data* @lookup_decoration(i32*, i32*) #1

declare dso_local %struct.line_log_data* @line_log_data_merge(%struct.line_log_data*, %struct.line_log_data*) #1

declare dso_local i32 @free_line_log_data(%struct.line_log_data*) #1

declare dso_local %struct.line_log_data* @line_log_data_copy(%struct.line_log_data*) #1

declare dso_local i32 @add_decoration(i32*, i32*, %struct.line_log_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
