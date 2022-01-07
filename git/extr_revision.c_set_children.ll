; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_set_children.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_set_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.commit_list* }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.commit_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*)* @set_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_children(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.rev_info*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %2, align 8
  %6 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %7 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 0
  %8 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  store %struct.commit_list* %8, %struct.commit_list** %3, align 8
  br label %9

9:                                                ; preds = %34, %1
  %10 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %11 = icmp ne %struct.commit_list* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  %13 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %14 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %13, i32 0, i32 0
  %15 = load %struct.commit*, %struct.commit** %14, align 8
  store %struct.commit* %15, %struct.commit** %4, align 8
  %16 = load %struct.commit*, %struct.commit** %4, align 8
  %17 = getelementptr inbounds %struct.commit, %struct.commit* %16, i32 0, i32 0
  %18 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  store %struct.commit_list* %18, %struct.commit_list** %5, align 8
  br label %19

19:                                               ; preds = %29, %12
  %20 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %21 = icmp ne %struct.commit_list* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %24 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %25 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %24, i32 0, i32 0
  %26 = load %struct.commit*, %struct.commit** %25, align 8
  %27 = load %struct.commit*, %struct.commit** %4, align 8
  %28 = call i32 @add_child(%struct.rev_info* %23, %struct.commit* %26, %struct.commit* %27)
  br label %29

29:                                               ; preds = %22
  %30 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %31 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %30, i32 0, i32 1
  %32 = load %struct.commit_list*, %struct.commit_list** %31, align 8
  store %struct.commit_list* %32, %struct.commit_list** %5, align 8
  br label %19

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %36 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %35, i32 0, i32 1
  %37 = load %struct.commit_list*, %struct.commit_list** %36, align 8
  store %struct.commit_list* %37, %struct.commit_list** %3, align 8
  br label %9

38:                                               ; preds = %9
  ret void
}

declare dso_local i32 @add_child(%struct.rev_info*, %struct.commit*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
