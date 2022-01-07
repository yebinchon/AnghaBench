; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_entry__init_from_stat.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_entry__init_from_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.stat = type { i32, i64, i32, i32, i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_index_entry__init_from_stat(%struct.TYPE_7__* %0, %struct.stat* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.stat*, %struct.stat** %5, align 8
  %8 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 9
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i8* %10, i8** %13, align 8
  %14 = load %struct.stat*, %struct.stat** %5, align 8
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load %struct.stat*, %struct.stat** %5, align 8
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.stat*, %struct.stat** %5, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %3
  %34 = load %struct.stat*, %struct.stat** %5, align 8
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @S_ISREG(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @git_index__create_mode(i32 438)
  br label %46

41:                                               ; preds = %33, %3
  %42 = load %struct.stat*, %struct.stat** %5, align 8
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @git_index__create_mode(i32 %44)
  br label %46

46:                                               ; preds = %41, %39
  %47 = phi i32 [ %40, %39 ], [ %45, %41 ]
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.stat*, %struct.stat** %5, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.stat*, %struct.stat** %5, align 8
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.stat*, %struct.stat** %5, align 8
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  ret void
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @git_index__create_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
