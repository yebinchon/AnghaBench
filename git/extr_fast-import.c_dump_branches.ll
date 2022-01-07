; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_dump_branches.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_dump_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { %struct.branch* }

@branch_table_sz = common dso_local global i32 0, align 4
@branch_table = common dso_local global %struct.branch** null, align 8
@failure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_branches() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.branch*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %26, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @branch_table_sz, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load %struct.branch**, %struct.branch*** @branch_table, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.branch*, %struct.branch** %8, i64 %10
  %12 = load %struct.branch*, %struct.branch** %11, align 8
  store %struct.branch* %12, %struct.branch** %2, align 8
  br label %13

13:                                               ; preds = %21, %7
  %14 = load %struct.branch*, %struct.branch** %2, align 8
  %15 = icmp ne %struct.branch* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.branch*, %struct.branch** %2, align 8
  %18 = call i32 @update_branch(%struct.branch* %17)
  %19 = load i32, i32* @failure, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @failure, align 4
  br label %21

21:                                               ; preds = %16
  %22 = load %struct.branch*, %struct.branch** %2, align 8
  %23 = getelementptr inbounds %struct.branch, %struct.branch* %22, i32 0, i32 0
  %24 = load %struct.branch*, %struct.branch** %23, align 8
  store %struct.branch* %24, %struct.branch** %2, align 8
  br label %13

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %3

29:                                               ; preds = %3
  ret void
}

declare dso_local i32 @update_branch(%struct.branch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
