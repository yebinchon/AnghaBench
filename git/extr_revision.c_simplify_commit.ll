; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_simplify_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_simplify_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i64, i64, i64 }
%struct.commit = type { i32 }

@commit_show = common dso_local global i32 0, align 4
@rewrite_one = common dso_local global i32 0, align 4
@commit_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simplify_commit(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  %7 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %8 = load %struct.commit*, %struct.commit** %5, align 8
  %9 = call i32 @get_commit_action(%struct.rev_info* %7, %struct.commit* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @commit_show, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %15 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %13
  %19 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %20 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %25 = call i64 @want_ancestry(%struct.rev_info* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %29 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %34 = load %struct.commit*, %struct.commit** %5, align 8
  %35 = call i32 @save_parents(%struct.rev_info* %33, %struct.commit* %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %38 = load %struct.commit*, %struct.commit** %5, align 8
  %39 = load i32, i32* @rewrite_one, align 4
  %40 = call i64 @rewrite_parents(%struct.rev_info* %37, %struct.commit* %38, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @commit_error, align 4
  store i32 %43, i32* %3, align 4
  br label %47

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %23, %18, %13, %2
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @get_commit_action(%struct.rev_info*, %struct.commit*) #1

declare dso_local i64 @want_ancestry(%struct.rev_info*) #1

declare dso_local i32 @save_parents(%struct.rev_info*, %struct.commit*) #1

declare dso_local i64 @rewrite_parents(%struct.rev_info*, %struct.commit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
