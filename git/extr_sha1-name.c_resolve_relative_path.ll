; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_resolve_relative_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_resolve_relative_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@the_repository = common dso_local global %struct.repository* null, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"relative path syntax can't be used outside working tree.\00", align 1
@startup_info = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.repository*, i8*)* @resolve_relative_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @resolve_relative_path(%struct.repository* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @starts_with(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @starts_with(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i8* null, i8** %3, align 8
  br label %41

14:                                               ; preds = %9, %2
  %15 = load %struct.repository*, %struct.repository** %4, align 8
  %16 = load %struct.repository*, %struct.repository** @the_repository, align 8
  %17 = icmp ne %struct.repository* %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = call i32 (...) @is_inside_work_tree()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %14
  %22 = call i32 @die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @strlen(i64 %34)
  br label %37

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %31
  %38 = phi i32 [ %35, %31 ], [ 0, %36 ]
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @prefix_path(i64 %26, i32 %38, i8* %39)
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %37, %13
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i32 @is_inside_work_tree(...) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i8* @prefix_path(i64, i32, i8*) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
