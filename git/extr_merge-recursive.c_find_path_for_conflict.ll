; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_find_path_for_conflict.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_find_path_for_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s is a directory in %s adding as %s instead\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Refusing to lose untracked file at %s; adding as %s instead\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.merge_options*, i8*, i8*, i8*)* @find_path_for_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_path_for_conflict(%struct.merge_options* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.merge_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %11 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %17 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @dir_in_way(i32 %14, i8* %15, i32 %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %4
  %27 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @unique_path(%struct.merge_options* %27, i8* %28, i8* %29)
  store i8* %30, i8** %9, align 8
  %31 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %32 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 (%struct.merge_options*, i32, i32, i8*, i8*, ...) @output(%struct.merge_options* %31, i32 1, i32 %32, i8* %33, i8* %34, i8* %35)
  br label %53

37:                                               ; preds = %4
  %38 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @would_lose_untracked(%struct.merge_options* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* @unique_path(%struct.merge_options* %43, i8* %44, i8* %45)
  store i8* %46, i8** %9, align 8
  %47 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %48 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 (%struct.merge_options*, i32, i32, i8*, i8*, ...) @output(%struct.merge_options* %47, i32 1, i32 %48, i8* %49, i8* %50)
  br label %52

52:                                               ; preds = %42, %37
  br label %53

53:                                               ; preds = %52, %26
  %54 = load i8*, i8** %9, align 8
  ret i8* %54
}

declare dso_local i64 @dir_in_way(i32, i8*, i32, i32) #1

declare dso_local i8* @unique_path(%struct.merge_options*, i8*, i8*) #1

declare dso_local i32 @output(%struct.merge_options*, i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @would_lose_untracked(%struct.merge_options*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
