; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_forget_old_views_upto.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_forget_old_views_upto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclic_views_entry = type { i32 }

@CV_w = common dso_local global %struct.cyclic_views_entry* null, align 8
@CViews = common dso_local global %struct.cyclic_views_entry* null, align 8
@CYCLIC_VIEWS_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cyclic_views_entry* @forget_old_views_upto(%struct.cyclic_views_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.cyclic_views_entry*, align 8
  %4 = alloca %struct.cyclic_views_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.cyclic_views_entry* %0, %struct.cyclic_views_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %30, %2
  %7 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %4, align 8
  %8 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_w, align 8
  %9 = icmp ne %struct.cyclic_views_entry* %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %4, align 8
  %12 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %4, align 8
  store %struct.cyclic_views_entry* %17, %struct.cyclic_views_entry** %3, align 8
  br label %51

18:                                               ; preds = %10
  %19 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %4, align 8
  %20 = call i32 @forget_view(%struct.cyclic_views_entry* %19)
  %21 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %4, align 8
  %22 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %21, i32 1
  store %struct.cyclic_views_entry* %22, %struct.cyclic_views_entry** %4, align 8
  %23 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CViews, align 8
  %24 = load i32, i32* @CYCLIC_VIEWS_BUFFER_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %23, i64 %25
  %27 = icmp eq %struct.cyclic_views_entry* %22, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CViews, align 8
  store %struct.cyclic_views_entry* %29, %struct.cyclic_views_entry** %4, align 8
  br label %31

30:                                               ; preds = %18
  br label %6

31:                                               ; preds = %28, %6
  br label %32

32:                                               ; preds = %44, %31
  %33 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %4, align 8
  %34 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_w, align 8
  %35 = icmp ult %struct.cyclic_views_entry* %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %4, align 8
  %38 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %4, align 8
  store %struct.cyclic_views_entry* %43, %struct.cyclic_views_entry** %3, align 8
  br label %51

44:                                               ; preds = %36
  %45 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %4, align 8
  %46 = call i32 @forget_view(%struct.cyclic_views_entry* %45)
  %47 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %4, align 8
  %48 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %47, i32 1
  store %struct.cyclic_views_entry* %48, %struct.cyclic_views_entry** %4, align 8
  br label %32

49:                                               ; preds = %32
  %50 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %4, align 8
  store %struct.cyclic_views_entry* %50, %struct.cyclic_views_entry** %3, align 8
  br label %51

51:                                               ; preds = %49, %42, %16
  %52 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %3, align 8
  ret %struct.cyclic_views_entry* %52
}

declare dso_local i32 @forget_view(%struct.cyclic_views_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
