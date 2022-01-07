; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_stat_validity_clear.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_stat_validity_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat_validity = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stat_validity_clear(%struct.stat_validity* %0) #0 {
  %2 = alloca %struct.stat_validity*, align 8
  store %struct.stat_validity* %0, %struct.stat_validity** %2, align 8
  %3 = load %struct.stat_validity*, %struct.stat_validity** %2, align 8
  %4 = getelementptr inbounds %struct.stat_validity, %struct.stat_validity* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @FREE_AND_NULL(i32 %5)
  ret void
}

declare dso_local i32 @FREE_AND_NULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
