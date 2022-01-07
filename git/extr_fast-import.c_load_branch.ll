; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_load_branch.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_load_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i32, %struct.branch*, i32 }

@active_branches = common dso_local global %struct.branch* null, align 8
@cur_active_branches = common dso_local global i32 0, align 4
@branch_load_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.branch*)* @load_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_branch(%struct.branch* %0) #0 {
  %2 = alloca %struct.branch*, align 8
  store %struct.branch* %0, %struct.branch** %2, align 8
  %3 = load %struct.branch*, %struct.branch** %2, align 8
  %4 = getelementptr inbounds %struct.branch, %struct.branch* %3, i32 0, i32 2
  %5 = call i32 @load_tree(i32* %4)
  %6 = load %struct.branch*, %struct.branch** %2, align 8
  %7 = getelementptr inbounds %struct.branch, %struct.branch* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = load %struct.branch*, %struct.branch** %2, align 8
  %12 = getelementptr inbounds %struct.branch, %struct.branch* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.branch*, %struct.branch** @active_branches, align 8
  %14 = load %struct.branch*, %struct.branch** %2, align 8
  %15 = getelementptr inbounds %struct.branch, %struct.branch* %14, i32 0, i32 1
  store %struct.branch* %13, %struct.branch** %15, align 8
  %16 = load %struct.branch*, %struct.branch** %2, align 8
  store %struct.branch* %16, %struct.branch** @active_branches, align 8
  %17 = load i32, i32* @cur_active_branches, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @cur_active_branches, align 4
  %19 = load i32, i32* @branch_load_count, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @branch_load_count, align 4
  br label %21

21:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @load_tree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
