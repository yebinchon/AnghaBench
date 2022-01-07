; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_mark_blob_uninteresting.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_mark_blob_uninteresting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blob = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blob*)* @mark_blob_uninteresting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_blob_uninteresting(%struct.blob* %0) #0 {
  %2 = alloca %struct.blob*, align 8
  store %struct.blob* %0, %struct.blob** %2, align 8
  %3 = load %struct.blob*, %struct.blob** %2, align 8
  %4 = icmp ne %struct.blob* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load %struct.blob*, %struct.blob** %2, align 8
  %8 = getelementptr inbounds %struct.blob, %struct.blob* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @UNINTERESTING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  br label %22

15:                                               ; preds = %6
  %16 = load i32, i32* @UNINTERESTING, align 4
  %17 = load %struct.blob*, %struct.blob** %2, align 8
  %18 = getelementptr inbounds %struct.blob, %struct.blob* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %16
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %15, %14, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
