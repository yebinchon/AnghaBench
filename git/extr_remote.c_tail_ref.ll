; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_tail_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_tail_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { %struct.ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref** (%struct.ref**)* @tail_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref** @tail_ref(%struct.ref** %0) #0 {
  %2 = alloca %struct.ref**, align 8
  %3 = alloca %struct.ref**, align 8
  store %struct.ref** %0, %struct.ref*** %2, align 8
  %4 = load %struct.ref**, %struct.ref*** %2, align 8
  store %struct.ref** %4, %struct.ref*** %3, align 8
  br label %5

5:                                                ; preds = %9, %1
  %6 = load %struct.ref**, %struct.ref*** %3, align 8
  %7 = load %struct.ref*, %struct.ref** %6, align 8
  %8 = icmp ne %struct.ref* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load %struct.ref**, %struct.ref*** %3, align 8
  %11 = load %struct.ref*, %struct.ref** %10, align 8
  %12 = getelementptr inbounds %struct.ref, %struct.ref* %11, i32 0, i32 0
  store %struct.ref** %12, %struct.ref*** %3, align 8
  br label %5

13:                                               ; preds = %5
  %14 = load %struct.ref**, %struct.ref*** %3, align 8
  ret %struct.ref** %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
