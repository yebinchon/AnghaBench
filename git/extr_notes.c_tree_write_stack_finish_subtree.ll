; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_tree_write_stack_finish_subtree.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_tree_write_stack_finish_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_write_stack = type { i8*, %struct.TYPE_3__, %struct.tree_write_stack* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.object_id = type { i32 }

@tree_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_write_stack*)* @tree_write_stack_finish_subtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_write_stack_finish_subtree(%struct.tree_write_stack* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree_write_stack*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tree_write_stack*, align 8
  %6 = alloca %struct.object_id, align 4
  store %struct.tree_write_stack* %0, %struct.tree_write_stack** %3, align 8
  %7 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %8 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %7, i32 0, i32 2
  %9 = load %struct.tree_write_stack*, %struct.tree_write_stack** %8, align 8
  store %struct.tree_write_stack* %9, %struct.tree_write_stack** %5, align 8
  %10 = load %struct.tree_write_stack*, %struct.tree_write_stack** %5, align 8
  %11 = icmp ne %struct.tree_write_stack* %10, null
  br i1 %11, label %12, label %58

12:                                               ; preds = %1
  %13 = load %struct.tree_write_stack*, %struct.tree_write_stack** %5, align 8
  %14 = call i32 @tree_write_stack_finish_subtree(%struct.tree_write_stack* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %59

19:                                               ; preds = %12
  %20 = load %struct.tree_write_stack*, %struct.tree_write_stack** %5, align 8
  %21 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tree_write_stack*, %struct.tree_write_stack** %5, align 8
  %25 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @tree_type, align 4
  %29 = call i32 @write_object_file(i32 %23, i32 %27, i32 %28, %struct.object_id* %6)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %59

34:                                               ; preds = %19
  %35 = load %struct.tree_write_stack*, %struct.tree_write_stack** %5, align 8
  %36 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %35, i32 0, i32 1
  %37 = call i32 @strbuf_release(%struct.TYPE_3__* %36)
  %38 = load %struct.tree_write_stack*, %struct.tree_write_stack** %5, align 8
  %39 = call i32 @free(%struct.tree_write_stack* %38)
  %40 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %41 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %40, i32 0, i32 2
  store %struct.tree_write_stack* null, %struct.tree_write_stack** %41, align 8
  %42 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %43 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %42, i32 0, i32 1
  %44 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %45 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.object_id, %struct.object_id* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @write_tree_entry(%struct.TYPE_3__* %43, i32 16384, i8* %46, i32 2, i32 %48)
  %50 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %51 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 0, i8* %53, align 1
  %54 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %55 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %34, %1
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %32, %17
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @write_object_file(i32, i32, i32, %struct.object_id*) #1

declare dso_local i32 @strbuf_release(%struct.TYPE_3__*) #1

declare dso_local i32 @free(%struct.tree_write_stack*) #1

declare dso_local i32 @write_tree_entry(%struct.TYPE_3__*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
