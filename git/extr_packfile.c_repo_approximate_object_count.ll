; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_repo_approximate_object_count.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_repo_approximate_object_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.packed_git*, i32 }
%struct.packed_git = type { i64, %struct.packed_git* }
%struct.multi_pack_index = type { i64, %struct.multi_pack_index* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @repo_approximate_object_count(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.multi_pack_index*, align 8
  %5 = alloca %struct.packed_git*, align 8
  store %struct.repository* %0, %struct.repository** %2, align 8
  %6 = load %struct.repository*, %struct.repository** %2, align 8
  %7 = getelementptr inbounds %struct.repository, %struct.repository* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %60, label %12

12:                                               ; preds = %1
  %13 = load %struct.repository*, %struct.repository** %2, align 8
  %14 = call i32 @prepare_packed_git(%struct.repository* %13)
  store i64 0, i64* %3, align 8
  %15 = load %struct.repository*, %struct.repository** %2, align 8
  %16 = call %struct.multi_pack_index* @get_multi_pack_index(%struct.repository* %15)
  store %struct.multi_pack_index* %16, %struct.multi_pack_index** %4, align 8
  br label %17

17:                                               ; preds = %26, %12
  %18 = load %struct.multi_pack_index*, %struct.multi_pack_index** %4, align 8
  %19 = icmp ne %struct.multi_pack_index* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.multi_pack_index*, %struct.multi_pack_index** %4, align 8
  %22 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %20
  %27 = load %struct.multi_pack_index*, %struct.multi_pack_index** %4, align 8
  %28 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %27, i32 0, i32 1
  %29 = load %struct.multi_pack_index*, %struct.multi_pack_index** %28, align 8
  store %struct.multi_pack_index* %29, %struct.multi_pack_index** %4, align 8
  br label %17

30:                                               ; preds = %17
  %31 = load %struct.repository*, %struct.repository** %2, align 8
  %32 = getelementptr inbounds %struct.repository, %struct.repository* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.packed_git*, %struct.packed_git** %34, align 8
  store %struct.packed_git* %35, %struct.packed_git** %5, align 8
  br label %36

36:                                               ; preds = %50, %30
  %37 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %38 = icmp ne %struct.packed_git* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %41 = call i64 @open_pack_index(%struct.packed_git* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %50

44:                                               ; preds = %39
  %45 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %46 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %44, %43
  %51 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %52 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %51, i32 0, i32 1
  %53 = load %struct.packed_git*, %struct.packed_git** %52, align 8
  store %struct.packed_git* %53, %struct.packed_git** %5, align 8
  br label %36

54:                                               ; preds = %36
  %55 = load i64, i64* %3, align 8
  %56 = load %struct.repository*, %struct.repository** %2, align 8
  %57 = getelementptr inbounds %struct.repository, %struct.repository* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 %55, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %1
  %61 = load %struct.repository*, %struct.repository** %2, align 8
  %62 = getelementptr inbounds %struct.repository, %struct.repository* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  ret i64 %65
}

declare dso_local i32 @prepare_packed_git(%struct.repository*) #1

declare dso_local %struct.multi_pack_index* @get_multi_pack_index(%struct.repository*) #1

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
