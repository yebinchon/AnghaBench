; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_matches_tree_write_stack.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_matches_tree_write_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_write_stack = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_write_stack*, i8*)* @matches_tree_write_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matches_tree_write_stack(%struct.tree_write_stack* %0, i8* %1) #0 {
  %3 = alloca %struct.tree_write_stack*, align 8
  %4 = alloca i8*, align 8
  store %struct.tree_write_stack* %0, %struct.tree_write_stack** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %10 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %8, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %22 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %20, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  br label %34

34:                                               ; preds = %28, %16, %2
  %35 = phi i1 [ false, %16 ], [ false, %2 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
