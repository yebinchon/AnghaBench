; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_msg_sublist_pos.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_msg_sublist_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_msg_sublist_pos.X = internal global i32* null, align 8
@get_msg_sublist_pos.rec_cnt = internal global i32 0, align 4
@R_cnt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_msg_sublist_pos(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* @R_cnt, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @prepare_msg_sublist(i32 %12, i32 %13, i32 %14, i32** @get_msg_sublist_pos.X, i32 1, i32 1)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, -4
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %69

20:                                               ; preds = %4
  %21 = load i32*, i32** @get_msg_sublist_pos.X, align 8
  %22 = call i32 @listree_get_size(i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sge i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %69

30:                                               ; preds = %20
  %31 = load i32*, i32** @get_msg_sublist_pos.X, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @listree_get_pos(i32* %31, i32 %32, i32 1)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, -2
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @load_user_metafile(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 -2, i32* %5, align 4
  br label %69

41:                                               ; preds = %36
  %42 = load i32, i32* @get_msg_sublist_pos.rec_cnt, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @get_msg_sublist_pos.rec_cnt, align 4
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @get_msg_sublist_pos(i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* @get_msg_sublist_pos.rec_cnt, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* @get_msg_sublist_pos.rec_cnt, align 4
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %69

55:                                               ; preds = %30
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sle i32 %61, %62
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i1 [ false, %55 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %41, %40, %29, %18
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @prepare_msg_sublist(i32, i32, i32, i32**, i32, i32) #1

declare dso_local i32 @listree_get_size(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @listree_get_pos(i32*, i32, i32) #1

declare dso_local i32 @load_user_metafile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
