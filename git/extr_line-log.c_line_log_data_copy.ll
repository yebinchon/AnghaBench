; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_line_log_data_copy.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_line_log_data_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_log_data = type { %struct.line_log_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line_log_data* (%struct.line_log_data*)* @line_log_data_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line_log_data* @line_log_data_copy(%struct.line_log_data* %0) #0 {
  %2 = alloca %struct.line_log_data*, align 8
  %3 = alloca %struct.line_log_data*, align 8
  %4 = alloca %struct.line_log_data*, align 8
  %5 = alloca %struct.line_log_data*, align 8
  store %struct.line_log_data* %0, %struct.line_log_data** %2, align 8
  store %struct.line_log_data* null, %struct.line_log_data** %3, align 8
  store %struct.line_log_data* null, %struct.line_log_data** %4, align 8
  store %struct.line_log_data* null, %struct.line_log_data** %5, align 8
  %6 = load %struct.line_log_data*, %struct.line_log_data** %2, align 8
  %7 = call i32 @assert(%struct.line_log_data* %6)
  %8 = load %struct.line_log_data*, %struct.line_log_data** %2, align 8
  %9 = call %struct.line_log_data* @line_log_data_copy_one(%struct.line_log_data* %8)
  store %struct.line_log_data* %9, %struct.line_log_data** %5, align 8
  store %struct.line_log_data* %9, %struct.line_log_data** %4, align 8
  store %struct.line_log_data* %9, %struct.line_log_data** %3, align 8
  %10 = load %struct.line_log_data*, %struct.line_log_data** %2, align 8
  %11 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %10, i32 0, i32 0
  %12 = load %struct.line_log_data*, %struct.line_log_data** %11, align 8
  store %struct.line_log_data* %12, %struct.line_log_data** %2, align 8
  br label %13

13:                                               ; preds = %16, %1
  %14 = load %struct.line_log_data*, %struct.line_log_data** %2, align 8
  %15 = icmp ne %struct.line_log_data* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.line_log_data*, %struct.line_log_data** %2, align 8
  %18 = call %struct.line_log_data* @line_log_data_copy_one(%struct.line_log_data* %17)
  store %struct.line_log_data* %18, %struct.line_log_data** %4, align 8
  %19 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %20 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  %21 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %20, i32 0, i32 0
  store %struct.line_log_data* %19, %struct.line_log_data** %21, align 8
  %22 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  store %struct.line_log_data* %22, %struct.line_log_data** %5, align 8
  %23 = load %struct.line_log_data*, %struct.line_log_data** %2, align 8
  %24 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %23, i32 0, i32 0
  %25 = load %struct.line_log_data*, %struct.line_log_data** %24, align 8
  store %struct.line_log_data* %25, %struct.line_log_data** %2, align 8
  br label %13

26:                                               ; preds = %13
  %27 = load %struct.line_log_data*, %struct.line_log_data** %3, align 8
  ret %struct.line_log_data* %27
}

declare dso_local i32 @assert(%struct.line_log_data*) #1

declare dso_local %struct.line_log_data* @line_log_data_copy_one(%struct.line_log_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
