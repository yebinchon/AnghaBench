; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_default.c_default_negotiator_init.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_default.c_default_negotiator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_negotiator = type { %struct.negotiation_state*, i32, i32, i32, i32, i32 }
%struct.negotiation_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@known_common = common dso_local global i32 0, align 4
@add_tip = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@ack = common dso_local global i32 0, align 4
@release = common dso_local global i32 0, align 4
@compare_commits_by_commit_date = common dso_local global i32 0, align 4
@marked = common dso_local global i32 0, align 4
@clear_marks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @default_negotiator_init(%struct.fetch_negotiator* %0) #0 {
  %2 = alloca %struct.fetch_negotiator*, align 8
  %3 = alloca %struct.negotiation_state*, align 8
  store %struct.fetch_negotiator* %0, %struct.fetch_negotiator** %2, align 8
  %4 = load i32, i32* @known_common, align 4
  %5 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %2, align 8
  %6 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %5, i32 0, i32 5
  store i32 %4, i32* %6, align 8
  %7 = load i32, i32* @add_tip, align 4
  %8 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %2, align 8
  %9 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @next, align 4
  %11 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %2, align 8
  %12 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @ack, align 4
  %14 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %2, align 8
  %15 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @release, align 4
  %17 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %2, align 8
  %18 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = call %struct.negotiation_state* @xcalloc(i32 1, i32 4)
  store %struct.negotiation_state* %19, %struct.negotiation_state** %3, align 8
  %20 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %2, align 8
  %21 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %20, i32 0, i32 0
  store %struct.negotiation_state* %19, %struct.negotiation_state** %21, align 8
  %22 = load i32, i32* @compare_commits_by_commit_date, align 4
  %23 = load %struct.negotiation_state*, %struct.negotiation_state** %3, align 8
  %24 = getelementptr inbounds %struct.negotiation_state, %struct.negotiation_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @marked, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @clear_marks, align 4
  %30 = call i32 @for_each_ref(i32 %29, i32* null)
  br label %31

31:                                               ; preds = %28, %1
  store i32 1, i32* @marked, align 4
  ret void
}

declare dso_local %struct.negotiation_state* @xcalloc(i32, i32) #1

declare dso_local i32 @for_each_ref(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
