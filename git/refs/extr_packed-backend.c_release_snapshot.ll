; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_release_snapshot.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_release_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snapshot = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snapshot*)* @release_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @release_snapshot(%struct.snapshot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snapshot*, align 8
  store %struct.snapshot* %0, %struct.snapshot** %3, align 8
  %4 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %5 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %11 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %10, i32 0, i32 0
  %12 = call i32 @stat_validity_clear(i32* %11)
  %13 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %14 = call i32 @clear_snapshot_buffer(%struct.snapshot* %13)
  %15 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %16 = call i32 @free(%struct.snapshot* %15)
  store i32 1, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @stat_validity_clear(i32*) #1

declare dso_local i32 @clear_snapshot_buffer(%struct.snapshot*) #1

declare dso_local i32 @free(%struct.snapshot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
