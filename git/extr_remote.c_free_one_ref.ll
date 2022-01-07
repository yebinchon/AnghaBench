; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_free_one_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_free_one_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { %struct.ref*, %struct.ref*, %struct.ref* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_one_ref(%struct.ref* %0) #0 {
  %2 = alloca %struct.ref*, align 8
  store %struct.ref* %0, %struct.ref** %2, align 8
  %3 = load %struct.ref*, %struct.ref** %2, align 8
  %4 = icmp ne %struct.ref* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %20

6:                                                ; preds = %1
  %7 = load %struct.ref*, %struct.ref** %2, align 8
  %8 = getelementptr inbounds %struct.ref, %struct.ref* %7, i32 0, i32 2
  %9 = load %struct.ref*, %struct.ref** %8, align 8
  call void @free_one_ref(%struct.ref* %9)
  %10 = load %struct.ref*, %struct.ref** %2, align 8
  %11 = getelementptr inbounds %struct.ref, %struct.ref* %10, i32 0, i32 1
  %12 = load %struct.ref*, %struct.ref** %11, align 8
  %13 = call i32 @free(%struct.ref* %12)
  %14 = load %struct.ref*, %struct.ref** %2, align 8
  %15 = getelementptr inbounds %struct.ref, %struct.ref* %14, i32 0, i32 0
  %16 = load %struct.ref*, %struct.ref** %15, align 8
  %17 = call i32 @free(%struct.ref* %16)
  %18 = load %struct.ref*, %struct.ref** %2, align 8
  %19 = call i32 @free(%struct.ref* %18)
  br label %20

20:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @free(%struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
