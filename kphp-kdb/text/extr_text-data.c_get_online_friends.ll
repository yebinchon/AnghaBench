; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_online_friends.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_online_friends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@R_cnt = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4
@RA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_online_friends(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_4__* @get_user(i32 %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %6, align 8
  store i32 0, i32* @R_cnt, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @conv_uid(i32 %12)
  %14 = icmp slt i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 -1, i32 0
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load i32, i32* @R, align 4
  store i32 %18, i32* @RA, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = call i32 @adjust_online_tree(%struct.TYPE_4__* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @fetch_online_tree(i32 %23, i32 %24)
  %26 = load i32, i32* @RA, align 4
  %27 = load i32, i32* @R, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* @R_cnt, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %17
  %32 = load i32, i32* @R_cnt, align 4
  %33 = ashr i32 %32, 1
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @sort_res2(i32 0, i32 %34)
  %36 = load i32, i32* @R_cnt, align 4
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %17
  %39 = load i32, i32* @R_cnt, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @sort_res(i32 0, i32 %40)
  %42 = load i32, i32* @R_cnt, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %31, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_4__* @get_user(i32) #1

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i32 @adjust_online_tree(%struct.TYPE_4__*) #1

declare dso_local i32 @fetch_online_tree(i32, i32) #1

declare dso_local i32 @sort_res2(i32, i32) #1

declare dso_local i32 @sort_res(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
