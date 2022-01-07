; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_rewrite_parents.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_rewrite_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.commit = type { %struct.commit_list* }
%struct.commit_list = type { %struct.commit_list*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rewrite_parents(%struct.rev_info* %0, %struct.commit* %1, i32 (%struct.rev_info*, i32*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i32 (%struct.rev_info*, i32*)*, align 8
  %8 = alloca %struct.commit_list**, align 8
  %9 = alloca %struct.commit_list*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %5, align 8
  store %struct.commit* %1, %struct.commit** %6, align 8
  store i32 (%struct.rev_info*, i32*)* %2, i32 (%struct.rev_info*, i32*)** %7, align 8
  %10 = load %struct.commit*, %struct.commit** %6, align 8
  %11 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  store %struct.commit_list** %11, %struct.commit_list*** %8, align 8
  br label %12

12:                                               ; preds = %31, %25, %3
  %13 = load %struct.commit_list**, %struct.commit_list*** %8, align 8
  %14 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  %15 = icmp ne %struct.commit_list* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.commit_list**, %struct.commit_list*** %8, align 8
  %18 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  store %struct.commit_list* %18, %struct.commit_list** %9, align 8
  %19 = load i32 (%struct.rev_info*, i32*)*, i32 (%struct.rev_info*, i32*)** %7, align 8
  %20 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %21 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %22 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %21, i32 0, i32 1
  %23 = call i32 %19(%struct.rev_info* %20, i32* %22)
  switch i32 %23, label %31 [
    i32 128, label %24
    i32 129, label %25
    i32 130, label %30
  ]

24:                                               ; preds = %16
  br label %31

25:                                               ; preds = %16
  %26 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %27 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %26, i32 0, i32 0
  %28 = load %struct.commit_list*, %struct.commit_list** %27, align 8
  %29 = load %struct.commit_list**, %struct.commit_list*** %8, align 8
  store %struct.commit_list* %28, %struct.commit_list** %29, align 8
  br label %12

30:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %38

31:                                               ; preds = %16, %24
  %32 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %33 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %32, i32 0, i32 0
  store %struct.commit_list** %33, %struct.commit_list*** %8, align 8
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %36 = load %struct.commit*, %struct.commit** %6, align 8
  %37 = call i32 @remove_duplicate_parents(%struct.rev_info* %35, %struct.commit* %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @remove_duplicate_parents(%struct.rev_info*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
