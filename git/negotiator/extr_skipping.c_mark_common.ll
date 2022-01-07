; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_skipping.c_mark_common.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_skipping.c_mark_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32 }
%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }

@COMMON = common dso_local global i32 0, align 4
@POPPED = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data*, %struct.commit*)* @mark_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_common(%struct.data* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.data*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list*, align 8
  store %struct.data* %0, %struct.data** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %6 = load %struct.commit*, %struct.commit** %4, align 8
  %7 = getelementptr inbounds %struct.commit, %struct.commit* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @COMMON, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %67

14:                                               ; preds = %2
  %15 = load i32, i32* @COMMON, align 4
  %16 = load %struct.commit*, %struct.commit** %4, align 8
  %17 = getelementptr inbounds %struct.commit, %struct.commit* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %15
  store i32 %20, i32* %18, align 8
  %21 = load %struct.commit*, %struct.commit** %4, align 8
  %22 = getelementptr inbounds %struct.commit, %struct.commit* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @POPPED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %14
  %29 = load %struct.data*, %struct.data** %3, align 8
  %30 = getelementptr inbounds %struct.data, %struct.data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %14
  %34 = load %struct.commit*, %struct.commit** %4, align 8
  %35 = getelementptr inbounds %struct.commit, %struct.commit* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %67

40:                                               ; preds = %33
  %41 = load %struct.commit*, %struct.commit** %4, align 8
  %42 = getelementptr inbounds %struct.commit, %struct.commit* %41, i32 0, i32 1
  %43 = load %struct.commit_list*, %struct.commit_list** %42, align 8
  store %struct.commit_list* %43, %struct.commit_list** %5, align 8
  br label %44

44:                                               ; preds = %63, %40
  %45 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %46 = icmp ne %struct.commit_list* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %49 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %48, i32 0, i32 0
  %50 = load %struct.commit*, %struct.commit** %49, align 8
  %51 = getelementptr inbounds %struct.commit, %struct.commit* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SEEN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.data*, %struct.data** %3, align 8
  %59 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %60 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %59, i32 0, i32 0
  %61 = load %struct.commit*, %struct.commit** %60, align 8
  call void @mark_common(%struct.data* %58, %struct.commit* %61)
  br label %62

62:                                               ; preds = %57, %47
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %65 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %64, i32 0, i32 1
  %66 = load %struct.commit_list*, %struct.commit_list** %65, align 8
  store %struct.commit_list* %66, %struct.commit_list** %5, align 8
  br label %44

67:                                               ; preds = %13, %39, %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
