; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_locate_simplify_state.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_locate_simplify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_simplify_state = type { i32 }
%struct.rev_info = type { i32 }
%struct.commit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.merge_simplify_state* (%struct.rev_info*, %struct.commit*)* @locate_simplify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.merge_simplify_state* @locate_simplify_state(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.merge_simplify_state*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %6 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %7 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 0
  %8 = load %struct.commit*, %struct.commit** %4, align 8
  %9 = getelementptr inbounds %struct.commit, %struct.commit* %8, i32 0, i32 0
  %10 = call %struct.merge_simplify_state* @lookup_decoration(i32* %7, i32* %9)
  store %struct.merge_simplify_state* %10, %struct.merge_simplify_state** %5, align 8
  %11 = load %struct.merge_simplify_state*, %struct.merge_simplify_state** %5, align 8
  %12 = icmp ne %struct.merge_simplify_state* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = call %struct.merge_simplify_state* @xcalloc(i32 1, i32 4)
  store %struct.merge_simplify_state* %14, %struct.merge_simplify_state** %5, align 8
  %15 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %16 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %15, i32 0, i32 0
  %17 = load %struct.commit*, %struct.commit** %4, align 8
  %18 = getelementptr inbounds %struct.commit, %struct.commit* %17, i32 0, i32 0
  %19 = load %struct.merge_simplify_state*, %struct.merge_simplify_state** %5, align 8
  %20 = call i32 @add_decoration(i32* %16, i32* %18, %struct.merge_simplify_state* %19)
  br label %21

21:                                               ; preds = %13, %2
  %22 = load %struct.merge_simplify_state*, %struct.merge_simplify_state** %5, align 8
  ret %struct.merge_simplify_state* %22
}

declare dso_local %struct.merge_simplify_state* @lookup_decoration(i32*, i32*) #1

declare dso_local %struct.merge_simplify_state* @xcalloc(i32, i32) #1

declare dso_local i32 @add_decoration(i32*, i32*, %struct.merge_simplify_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
