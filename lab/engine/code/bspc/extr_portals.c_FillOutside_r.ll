; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_FillOutside_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_FillOutside_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, %struct.TYPE_3__** }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@c_outside = common dso_local global i32 0, align 4
@c_solid = common dso_local global i32 0, align 4
@c_inside = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FillOutside_r(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PLANENUM_LEAF, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %11, i64 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  call void @FillOutside_r(%struct.TYPE_3__* %13)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  call void @FillOutside_r(%struct.TYPE_3__* %18)
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CONTENTS_SOLID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @c_outside, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @c_outside, align 4
  %34 = load i32, i32* @CONTENTS_SOLID, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @c_solid, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @c_solid, align 4
  br label %42

42:                                               ; preds = %39, %31
  br label %46

43:                                               ; preds = %19
  %44 = load i32, i32* @c_inside, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @c_inside, align 4
  br label %46

46:                                               ; preds = %8, %43, %42
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
