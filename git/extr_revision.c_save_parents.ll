; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_save_parents.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_save_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { i32 }
%struct.rev_info = type { i64 }
%struct.commit = type { i64 }

@EMPTY_PARENT_LIST = common dso_local global %struct.commit_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.commit*)* @save_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_parents(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list**, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %6 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %7 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = call i64 @xmalloc(i32 4)
  %12 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %15 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @init_saved_parents(i64 %16)
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %20 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.commit*, %struct.commit** %4, align 8
  %23 = call %struct.commit_list** @saved_parents_at(i64 %21, %struct.commit* %22)
  store %struct.commit_list** %23, %struct.commit_list*** %5, align 8
  %24 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  %25 = load %struct.commit_list*, %struct.commit_list** %24, align 8
  %26 = icmp ne %struct.commit_list* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %42

28:                                               ; preds = %18
  %29 = load %struct.commit*, %struct.commit** %4, align 8
  %30 = getelementptr inbounds %struct.commit, %struct.commit* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.commit*, %struct.commit** %4, align 8
  %35 = getelementptr inbounds %struct.commit, %struct.commit* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.commit_list* @copy_commit_list(i64 %36)
  %38 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  store %struct.commit_list* %37, %struct.commit_list** %38, align 8
  br label %42

39:                                               ; preds = %28
  %40 = load %struct.commit_list*, %struct.commit_list** @EMPTY_PARENT_LIST, align 8
  %41 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  store %struct.commit_list* %40, %struct.commit_list** %41, align 8
  br label %42

42:                                               ; preds = %27, %39, %33
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @init_saved_parents(i64) #1

declare dso_local %struct.commit_list** @saved_parents_at(i64, %struct.commit*) #1

declare dso_local %struct.commit_list* @copy_commit_list(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
