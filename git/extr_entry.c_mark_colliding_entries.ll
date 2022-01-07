; ModuleID = '/home/carl/AnghaBench/git/extr_entry.c_mark_colliding_entries.c'
source_filename = "/home/carl/AnghaBench/git/extr_entry.c_mark_colliding_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32, i32 }
%struct.stat = type { i32 }

@check_stat = common dso_local global i32 0, align 4
@CE_MATCHED = common dso_local global i32 0, align 4
@CE_VALID = common dso_local global i32 0, align 4
@CE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.checkout*, %struct.cache_entry*, %struct.stat*)* @mark_colliding_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_colliding_entries(%struct.checkout* %0, %struct.cache_entry* %1, %struct.stat* %2) #0 {
  %4 = alloca %struct.checkout*, align 8
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cache_entry*, align 8
  store %struct.checkout* %0, %struct.checkout** %4, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %5, align 8
  store %struct.stat* %2, %struct.stat** %6, align 8
  %10 = load i32, i32* @check_stat, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @CE_MATCHED, align 4
  %12 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %13 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %78, %3
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.checkout*, %struct.checkout** %4, align 8
  %19 = getelementptr inbounds %struct.checkout, %struct.checkout* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %16
  %25 = load %struct.checkout*, %struct.checkout** %4, align 8
  %26 = getelementptr inbounds %struct.checkout, %struct.checkout* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.cache_entry**, %struct.cache_entry*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %29, i64 %31
  %33 = load %struct.cache_entry*, %struct.cache_entry** %32, align 8
  store %struct.cache_entry* %33, %struct.cache_entry** %9, align 8
  %34 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %35 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %36 = icmp eq %struct.cache_entry* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %81

38:                                               ; preds = %24
  %39 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CE_MATCHED, align 4
  %43 = load i32, i32* @CE_VALID, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CE_SKIP_WORKTREE, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %41, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %78

50:                                               ; preds = %38
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %55 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %54, i32 0, i32 2
  %56 = load %struct.stat*, %struct.stat** %6, align 8
  %57 = call i32 @match_stat_data(i32* %55, %struct.stat* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %59
  %63 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %64 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %67 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @fspathcmp(i32 %65, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %62, %53
  %72 = load i32, i32* @CE_MATCHED, align 4
  %73 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %74 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %81

77:                                               ; preds = %62, %59
  br label %78

78:                                               ; preds = %77, %49
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %16

81:                                               ; preds = %71, %37, %16
  ret void
}

declare dso_local i32 @match_stat_data(i32*, %struct.stat*) #1

declare dso_local i32 @fspathcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
