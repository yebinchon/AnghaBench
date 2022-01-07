; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_prepare_pass_splitting.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_prepare_pass_splitting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@passes = common dso_local global i32 0, align 4
@MAX_PASSES = common dso_local global i32 0, align 4
@pass_min_uid = common dso_local global i32* null, align 8
@pass_threshold = common dso_local global i32 0, align 4
@max_uid = common dso_local global i32 0, align 4
@temp_binlog_directory = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"only %d passes needed, ignoring temporary directory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_pass_splitting() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @passes, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @passes, align 4
  %7 = load i32, i32* @MAX_PASSES, align 4
  %8 = icmp sle i32 %6, %7
  br label %9

9:                                                ; preds = %5, %0
  %10 = phi i1 [ false, %0 ], [ %8, %5 ]
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %26, %9
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @passes, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = load i32*, i32** @pass_min_uid, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @pass_threshold, align 4
  %25 = call i32 @compute_max_uid(i32 %23, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %13

29:                                               ; preds = %13
  %30 = load i32, i32* %2, align 4
  %31 = load i32*, i32** @pass_min_uid, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @max_uid, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp eq i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* @temp_binlog_directory, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %29
  %44 = load i32, i32* %1, align 4
  %45 = icmp sle i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i64 0, i64* @temp_binlog_directory, align 8
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %29
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compute_max_uid(i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
