; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_search_state_new.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_search_state_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.search_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.search_state* ()* @search_state_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.search_state* @search_state_new() #0 {
  %1 = alloca %struct.search_state*, align 8
  %2 = alloca %struct.search_state*, align 8
  %3 = call i64 @mm_malloc(i32 8)
  %4 = inttoptr i64 %3 to %struct.search_state*
  store %struct.search_state* %4, %struct.search_state** %2, align 8
  %5 = load %struct.search_state*, %struct.search_state** %2, align 8
  %6 = icmp ne %struct.search_state* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.search_state* null, %struct.search_state** %1, align 8
  br label %16

8:                                                ; preds = %0
  %9 = load %struct.search_state*, %struct.search_state** %2, align 8
  %10 = call i32 @memset(%struct.search_state* %9, i32 0, i32 8)
  %11 = load %struct.search_state*, %struct.search_state** %2, align 8
  %12 = getelementptr inbounds %struct.search_state, %struct.search_state* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.search_state*, %struct.search_state** %2, align 8
  %14 = getelementptr inbounds %struct.search_state, %struct.search_state* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.search_state*, %struct.search_state** %2, align 8
  store %struct.search_state* %15, %struct.search_state** %1, align 8
  br label %16

16:                                               ; preds = %8, %7
  %17 = load %struct.search_state*, %struct.search_state** %1, align 8
  ret %struct.search_state* %17
}

declare dso_local i64 @mm_malloc(i32) #1

declare dso_local i32 @memset(%struct.search_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
