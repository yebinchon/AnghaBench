; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_free_untracked_cache.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_free_untracked_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.untracked_cache = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_untracked_cache(%struct.untracked_cache* %0) #0 {
  %2 = alloca %struct.untracked_cache*, align 8
  store %struct.untracked_cache* %0, %struct.untracked_cache** %2, align 8
  %3 = load %struct.untracked_cache*, %struct.untracked_cache** %2, align 8
  %4 = icmp ne %struct.untracked_cache* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.untracked_cache*, %struct.untracked_cache** %2, align 8
  %7 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @free_untracked(i32 %8)
  br label %10

10:                                               ; preds = %5, %1
  %11 = load %struct.untracked_cache*, %struct.untracked_cache** %2, align 8
  %12 = call i32 @free(%struct.untracked_cache* %11)
  ret void
}

declare dso_local i32 @free_untracked(i32) #1

declare dso_local i32 @free(%struct.untracked_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
