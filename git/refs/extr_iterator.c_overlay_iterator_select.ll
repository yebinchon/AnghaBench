; ModuleID = '/home/carl/AnghaBench/git/refs/extr_iterator.c_overlay_iterator_select.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_iterator.c_overlay_iterator_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }

@ITER_SELECT_0 = common dso_local global i32 0, align 4
@ITER_SELECT_DONE = common dso_local global i32 0, align 4
@ITER_SELECT_1 = common dso_local global i32 0, align 4
@ITER_SELECT_0_SKIP_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_iterator*, %struct.ref_iterator*, i8*)* @overlay_iterator_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlay_iterator_select(%struct.ref_iterator* %0, %struct.ref_iterator* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_iterator*, align 8
  %6 = alloca %struct.ref_iterator*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ref_iterator* %0, %struct.ref_iterator** %5, align 8
  store %struct.ref_iterator* %1, %struct.ref_iterator** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ref_iterator*, %struct.ref_iterator** %6, align 8
  %10 = icmp ne %struct.ref_iterator* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = load %struct.ref_iterator*, %struct.ref_iterator** %5, align 8
  %13 = icmp ne %struct.ref_iterator* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @ITER_SELECT_0, align 4
  br label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @ITER_SELECT_DONE, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %4, align 4
  br label %45

20:                                               ; preds = %3
  %21 = load %struct.ref_iterator*, %struct.ref_iterator** %5, align 8
  %22 = icmp ne %struct.ref_iterator* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @ITER_SELECT_1, align 4
  store i32 %24, i32* %4, align 4
  br label %45

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.ref_iterator*, %struct.ref_iterator** %5, align 8
  %28 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ref_iterator*, %struct.ref_iterator** %6, align 8
  %31 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcmp(i32 %29, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @ITER_SELECT_0, align 4
  store i32 %37, i32* %4, align 4
  br label %45

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @ITER_SELECT_1, align 4
  store i32 %42, i32* %4, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @ITER_SELECT_0_SKIP_1, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %41, %36, %23, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
