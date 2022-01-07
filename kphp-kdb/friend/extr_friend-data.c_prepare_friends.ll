; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_prepare_friends.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_prepare_friends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@R = common dso_local global i32 0, align 4
@R_end = common dso_local global i32 0, align 4
@R_cat_mask = common dso_local global i32 0, align 4
@R_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_friends(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_3__* @get_user(i32 %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @conv_uid(i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %13
  store i32 -1, i32* %4, align 4
  br label %42

24:                                               ; preds = %20
  %25 = load i32, i32* @R, align 4
  store i32 %25, i32* @R_end, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %42

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* @R_cat_mask, align 4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* @R_mode, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tree_fetch(i32 %34)
  %36 = load i32, i32* @R_end, align 4
  %37 = load i32, i32* @R, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  %41 = sdiv i32 %38, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %29, %28, %23
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_3__* @get_user(i32) #1

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i32 @tree_fetch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
