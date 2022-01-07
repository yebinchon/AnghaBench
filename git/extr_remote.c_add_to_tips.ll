; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_add_to_tips.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_add_to_tips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tips = type { i64, %struct.commit**, i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@TMP_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tips*, %struct.object_id*)* @add_to_tips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_tips(%struct.tips* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.tips*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.commit*, align 8
  store %struct.tips* %0, %struct.tips** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %6 = load %struct.object_id*, %struct.object_id** %4, align 8
  %7 = call i64 @is_null_oid(%struct.object_id* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %52

10:                                               ; preds = %2
  %11 = load i32, i32* @the_repository, align 4
  %12 = load %struct.object_id*, %struct.object_id** %4, align 8
  %13 = call %struct.commit* @lookup_commit_reference_gently(i32 %11, %struct.object_id* %12, i32 1)
  store %struct.commit* %13, %struct.commit** %5, align 8
  %14 = load %struct.commit*, %struct.commit** %5, align 8
  %15 = icmp ne %struct.commit* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load %struct.commit*, %struct.commit** %5, align 8
  %18 = getelementptr inbounds %struct.commit, %struct.commit* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TMP_MARK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %10
  br label %52

25:                                               ; preds = %16
  %26 = load i32, i32* @TMP_MARK, align 4
  %27 = load %struct.commit*, %struct.commit** %5, align 8
  %28 = getelementptr inbounds %struct.commit, %struct.commit* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load %struct.tips*, %struct.tips** %3, align 8
  %33 = getelementptr inbounds %struct.tips, %struct.tips* %32, i32 0, i32 1
  %34 = load %struct.commit**, %struct.commit*** %33, align 8
  %35 = load %struct.tips*, %struct.tips** %3, align 8
  %36 = getelementptr inbounds %struct.tips, %struct.tips* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = load %struct.tips*, %struct.tips** %3, align 8
  %40 = getelementptr inbounds %struct.tips, %struct.tips* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ALLOC_GROW(%struct.commit** %34, i64 %38, i32 %41)
  %43 = load %struct.commit*, %struct.commit** %5, align 8
  %44 = load %struct.tips*, %struct.tips** %3, align 8
  %45 = getelementptr inbounds %struct.tips, %struct.tips* %44, i32 0, i32 1
  %46 = load %struct.commit**, %struct.commit*** %45, align 8
  %47 = load %struct.tips*, %struct.tips** %3, align 8
  %48 = getelementptr inbounds %struct.tips, %struct.tips* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = getelementptr inbounds %struct.commit*, %struct.commit** %46, i64 %49
  store %struct.commit* %43, %struct.commit** %51, align 8
  br label %52

52:                                               ; preds = %25, %24, %9
  ret void
}

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.commit**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
