; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_one_relevant_parent.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_one_relevant_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.rev_info = type { i64 }
%struct.commit_list = type { %struct.commit_list*, %struct.commit* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (%struct.rev_info*, %struct.commit_list*)* @one_relevant_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @one_relevant_parent(%struct.rev_info* %0, %struct.commit_list* %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store %struct.commit_list* %1, %struct.commit_list** %5, align 8
  %9 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  store %struct.commit_list* %9, %struct.commit_list** %6, align 8
  store %struct.commit* null, %struct.commit** %7, align 8
  %10 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %11 = icmp ne %struct.commit_list* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %15 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %20 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %19, i32 0, i32 0
  %21 = load %struct.commit_list*, %struct.commit_list** %20, align 8
  %22 = icmp ne %struct.commit_list* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %25 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %24, i32 0, i32 1
  %26 = load %struct.commit*, %struct.commit** %25, align 8
  store %struct.commit* %26, %struct.commit** %3, align 8
  br label %50

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %47, %27
  %29 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %30 = icmp ne %struct.commit_list* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %33 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %32, i32 0, i32 1
  %34 = load %struct.commit*, %struct.commit** %33, align 8
  store %struct.commit* %34, %struct.commit** %8, align 8
  %35 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %36 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %35, i32 0, i32 0
  %37 = load %struct.commit_list*, %struct.commit_list** %36, align 8
  store %struct.commit_list* %37, %struct.commit_list** %6, align 8
  %38 = load %struct.commit*, %struct.commit** %8, align 8
  %39 = call i64 @relevant_commit(%struct.commit* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.commit*, %struct.commit** %7, align 8
  %43 = icmp ne %struct.commit* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %50

45:                                               ; preds = %41
  %46 = load %struct.commit*, %struct.commit** %8, align 8
  store %struct.commit* %46, %struct.commit** %7, align 8
  br label %47

47:                                               ; preds = %45, %31
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.commit*, %struct.commit** %7, align 8
  store %struct.commit* %49, %struct.commit** %3, align 8
  br label %50

50:                                               ; preds = %48, %44, %23, %12
  %51 = load %struct.commit*, %struct.commit** %3, align 8
  ret %struct.commit* %51
}

declare dso_local i64 @relevant_commit(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
