; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_refs_ref_iterator_begin.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_refs_ref_iterator_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }
%struct.ref_store = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ref_iterator* (%struct.ref_store*, i8*, i32)* }

@ref_paranoia = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GIT_REF_PARANOIA\00", align 1
@DO_FOR_EACH_INCLUDE_BROKEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"reference iterator is not ordered\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_iterator* @refs_ref_iterator_begin(%struct.ref_store* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ref_store*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref_iterator*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* @ref_paranoia, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = call i64 @git_env_bool(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0)
  store i64 %13, i64* @ref_paranoia, align 8
  br label %14

14:                                               ; preds = %12, %4
  %15 = load i64, i64* @ref_paranoia, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @DO_FOR_EACH_INCLUDE_BROKEN, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %23 = getelementptr inbounds %struct.ref_store, %struct.ref_store* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.ref_iterator* (%struct.ref_store*, i8*, i32)*, %struct.ref_iterator* (%struct.ref_store*, i8*, i32)** %25, align 8
  %27 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.ref_iterator* %26(%struct.ref_store* %27, i8* %28, i32 %29)
  store %struct.ref_iterator* %30, %struct.ref_iterator** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.ref_iterator*, %struct.ref_iterator** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.ref_iterator* @prefix_ref_iterator_begin(%struct.ref_iterator* %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store %struct.ref_iterator* %36, %struct.ref_iterator** %9, align 8
  br label %37

37:                                               ; preds = %33, %21
  %38 = load %struct.ref_iterator*, %struct.ref_iterator** %9, align 8
  %39 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = call i32 @BUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load %struct.ref_iterator*, %struct.ref_iterator** %9, align 8
  ret %struct.ref_iterator* %45
}

declare dso_local i64 @git_env_bool(i8*, i32) #1

declare dso_local %struct.ref_iterator* @prefix_ref_iterator_begin(%struct.ref_iterator*, i8*, i32) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
