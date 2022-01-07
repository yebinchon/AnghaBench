; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_has_unmerged.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_has_unmerged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wt_status*)* @has_unmerged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_unmerged(%struct.wt_status* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wt_status*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wt_status_change_data*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %29, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %9 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %6
  %14 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %15 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %21, align 8
  store %struct.wt_status_change_data* %22, %struct.wt_status_change_data** %5, align 8
  %23 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %24 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %33

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %6

32:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
