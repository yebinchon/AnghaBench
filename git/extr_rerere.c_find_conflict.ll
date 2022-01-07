; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_find_conflict.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_find_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i64 }
%struct.string_list = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"index file corrupt\00", align 1
@THREE_STAGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.string_list*)* @find_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_conflict(%struct.repository* %0, %struct.string_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_entry*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  %9 = load %struct.repository*, %struct.repository** %4, align 8
  %10 = call i64 @repo_read_index(%struct.repository* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @error(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %49, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.repository*, %struct.repository** %4, align 8
  %19 = getelementptr inbounds %struct.repository, %struct.repository* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %16
  %25 = load %struct.repository*, %struct.repository** %4, align 8
  %26 = getelementptr inbounds %struct.repository, %struct.repository* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.cache_entry**, %struct.cache_entry*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %29, i64 %31
  %33 = load %struct.cache_entry*, %struct.cache_entry** %32, align 8
  store %struct.cache_entry* %33, %struct.cache_entry** %8, align 8
  %34 = load %struct.repository*, %struct.repository** %4, align 8
  %35 = getelementptr inbounds %struct.repository, %struct.repository* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @check_one_conflict(%struct.TYPE_2__* %36, i32 %37, i32* %7)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @THREE_STAGED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %24
  %43 = load %struct.string_list*, %struct.string_list** %5, align 8
  %44 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %45 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @string_list_insert(%struct.string_list* %43, i8* %47)
  br label %49

49:                                               ; preds = %42, %24
  br label %16

50:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @repo_read_index(%struct.repository*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @check_one_conflict(%struct.TYPE_2__*, i32, i32*) #1

declare dso_local i32 @string_list_insert(%struct.string_list*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
