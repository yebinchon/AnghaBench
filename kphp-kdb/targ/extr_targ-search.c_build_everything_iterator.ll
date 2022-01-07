; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_everything_iterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_everything_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iterator = type { i32, i32 (%struct.iterator*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iterator* @build_everything_iterator() #0 {
  %1 = alloca %struct.iterator*, align 8
  %2 = call %struct.iterator* @zmalloc(i32 16)
  store %struct.iterator* %2, %struct.iterator** %1, align 8
  %3 = load %struct.iterator*, %struct.iterator** %1, align 8
  %4 = getelementptr inbounds %struct.iterator, %struct.iterator* %3, i32 0, i32 1
  store i32 (%struct.iterator*, i32)* @everything_iterator_jump_to, i32 (%struct.iterator*, i32)** %4, align 8
  %5 = load %struct.iterator*, %struct.iterator** %1, align 8
  %6 = getelementptr inbounds %struct.iterator, %struct.iterator* %5, i32 0, i32 0
  store i32 -1, i32* %6, align 8
  %7 = load %struct.iterator*, %struct.iterator** %1, align 8
  %8 = call i32 @everything_iterator_jump_to(%struct.iterator* %7, i32 0)
  %9 = load %struct.iterator*, %struct.iterator** %1, align 8
  ret %struct.iterator* %9
}

declare dso_local %struct.iterator* @zmalloc(i32) #1

declare dso_local i32 @everything_iterator_jump_to(%struct.iterator*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
