; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_skipping.c_next.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_skipping.c_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.fetch_negotiator = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_id* (%struct.fetch_negotiator*)* @next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_id* @next(%struct.fetch_negotiator* %0) #0 {
  %2 = alloca %struct.fetch_negotiator*, align 8
  store %struct.fetch_negotiator* %0, %struct.fetch_negotiator** %2, align 8
  %3 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %2, align 8
  %4 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %3, i32 0, i32 2
  store i32* null, i32** %4, align 8
  %5 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %2, align 8
  %6 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %5, i32 0, i32 1
  store i32* null, i32** %6, align 8
  %7 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %2, align 8
  %8 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.object_id* @get_rev(i32 %9)
  ret %struct.object_id* %10
}

declare dso_local %struct.object_id* @get_rev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
