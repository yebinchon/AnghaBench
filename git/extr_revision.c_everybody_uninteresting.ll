; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_everybody_uninteresting.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_everybody_uninteresting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit_list*, %struct.commit* }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit_list*, %struct.commit**)* @everybody_uninteresting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @everybody_uninteresting(%struct.commit_list* %0, %struct.commit** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.commit**, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.commit*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %4, align 8
  store %struct.commit** %1, %struct.commit*** %5, align 8
  %9 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  store %struct.commit_list* %9, %struct.commit_list** %6, align 8
  %10 = load %struct.commit**, %struct.commit*** %5, align 8
  %11 = load %struct.commit*, %struct.commit** %10, align 8
  %12 = icmp ne %struct.commit* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.commit**, %struct.commit*** %5, align 8
  %15 = load %struct.commit*, %struct.commit** %14, align 8
  store %struct.commit* %15, %struct.commit** %7, align 8
  %16 = load %struct.commit*, %struct.commit** %7, align 8
  %17 = getelementptr inbounds %struct.commit, %struct.commit* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @UNINTERESTING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %48

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %2
  br label %26

26:                                               ; preds = %43, %25
  %27 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %28 = icmp ne %struct.commit_list* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %31 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %30, i32 0, i32 1
  %32 = load %struct.commit*, %struct.commit** %31, align 8
  store %struct.commit* %32, %struct.commit** %8, align 8
  %33 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %34 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %33, i32 0, i32 0
  %35 = load %struct.commit_list*, %struct.commit_list** %34, align 8
  store %struct.commit_list* %35, %struct.commit_list** %6, align 8
  %36 = load %struct.commit*, %struct.commit** %8, align 8
  %37 = getelementptr inbounds %struct.commit, %struct.commit* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UNINTERESTING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %26

44:                                               ; preds = %29
  %45 = load %struct.commit*, %struct.commit** %8, align 8
  %46 = load %struct.commit**, %struct.commit*** %5, align 8
  store %struct.commit* %45, %struct.commit** %46, align 8
  store i32 0, i32* %3, align 4
  br label %48

47:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %44, %23
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
