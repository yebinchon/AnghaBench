; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_oid_eq.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_oid_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*)* @oid_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oid_eq(%struct.object_id* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.object_id*, align 8
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %6 = load %struct.object_id*, %struct.object_id** %4, align 8
  %7 = icmp ne %struct.object_id* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.object_id*, %struct.object_id** %5, align 8
  %10 = icmp ne %struct.object_id* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i32 2, i32* %3, align 4
  br label %26

12:                                               ; preds = %8, %2
  %13 = load %struct.object_id*, %struct.object_id** %4, align 8
  %14 = icmp ne %struct.object_id* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load %struct.object_id*, %struct.object_id** %5, align 8
  %17 = icmp ne %struct.object_id* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.object_id*, %struct.object_id** %4, align 8
  %20 = load %struct.object_id*, %struct.object_id** %5, align 8
  %21 = call i64 @oideq(%struct.object_id* %19, %struct.object_id* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %15, %12
  %24 = phi i1 [ false, %15 ], [ false, %12 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @oideq(%struct.object_id*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
