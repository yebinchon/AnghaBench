; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_would_lose_untracked.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_would_lose_untracked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.index_state* }
%struct.index_state = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, i8*)* @would_lose_untracked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @would_lose_untracked(%struct.merge_options* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %9 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.index_state*, %struct.index_state** %11, align 8
  store %struct.index_state* %12, %struct.index_state** %6, align 8
  %13 = load %struct.index_state*, %struct.index_state** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = call i32 @index_name_pos(%struct.index_state* %13, i8* %14, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 -1, %21
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %2
  br label %24

24:                                               ; preds = %56, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.index_state*, %struct.index_state** %6, align 8
  %27 = getelementptr inbounds %struct.index_state, %struct.index_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.index_state*, %struct.index_state** %6, align 8
  %33 = getelementptr inbounds %struct.index_state, %struct.index_state* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcmp(i8* %31, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %30, %24
  %45 = phi i1 [ false, %24 ], [ %43, %30 ]
  br i1 %45, label %46, label %59

46:                                               ; preds = %44
  %47 = load %struct.index_state*, %struct.index_state** %6, align 8
  %48 = getelementptr inbounds %struct.index_state, %struct.index_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @ce_stage(%struct.TYPE_4__* %53)
  switch i32 %54, label %56 [
    i32 0, label %55
    i32 2, label %55
  ]

55:                                               ; preds = %46, %46
  store i32 0, i32* %3, align 4
  br label %62

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %24

59:                                               ; preds = %44
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @file_exists(i8* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @ce_stage(%struct.TYPE_4__*) #1

declare dso_local i32 @file_exists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
