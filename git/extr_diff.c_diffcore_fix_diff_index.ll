; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diffcore_fix_diff_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diffcore_fix_diff_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, i32 }

@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 4
@diffnamecmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diffcore_fix_diff_index() #0 {
  %1 = alloca %struct.diff_queue_struct*, align 8
  store %struct.diff_queue_struct* @diff_queued_diff, %struct.diff_queue_struct** %1, align 8
  %2 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %1, align 8
  %3 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %2, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %1, align 8
  %6 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @diffnamecmp, align 4
  %9 = call i32 @QSORT(i32 %4, i32 %7, i32 %8)
  ret void
}

declare dso_local i32 @QSORT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
