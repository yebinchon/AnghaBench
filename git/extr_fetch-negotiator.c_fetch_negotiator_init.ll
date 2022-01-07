; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-negotiator.c_fetch_negotiator_init.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-negotiator.c_fetch_negotiator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fetch_negotiator = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fetch_negotiator_init(%struct.repository* %0, %struct.fetch_negotiator* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.fetch_negotiator*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.fetch_negotiator* %1, %struct.fetch_negotiator** %4, align 8
  %5 = load %struct.repository*, %struct.repository** %3, align 8
  %6 = call i32 @prepare_repo_settings(%struct.repository* %5)
  %7 = load %struct.repository*, %struct.repository** %3, align 8
  %8 = getelementptr inbounds %struct.repository, %struct.repository* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %15 [
    i32 128, label %11
    i32 129, label %14
  ]

11:                                               ; preds = %2
  %12 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %4, align 8
  %13 = call i32 @skipping_negotiator_init(%struct.fetch_negotiator* %12)
  br label %18

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %2, %14
  %16 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %4, align 8
  %17 = call i32 @default_negotiator_init(%struct.fetch_negotiator* %16)
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @prepare_repo_settings(%struct.repository*) #1

declare dso_local i32 @skipping_negotiator_init(%struct.fetch_negotiator*) #1

declare dso_local i32 @default_negotiator_init(%struct.fetch_negotiator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
