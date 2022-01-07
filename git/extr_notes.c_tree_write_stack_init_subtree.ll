; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_tree_write_stack_init_subtree.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_tree_write_stack_init_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tree_write_stack = type { i8*, %struct.tree_write_stack*, i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_write_stack*, i8*)* @tree_write_stack_init_subtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_write_stack_init_subtree(%struct.tree_write_stack* %0, i8* %1) #0 {
  %3 = alloca %struct.tree_write_stack*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tree_write_stack*, align 8
  store %struct.tree_write_stack* %0, %struct.tree_write_stack** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %7 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %6, i32 0, i32 1
  %8 = load %struct.tree_write_stack*, %struct.tree_write_stack** %7, align 8
  %9 = icmp ne %struct.tree_write_stack* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %14 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %22 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %20, %2
  %29 = phi i1 [ false, %2 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = call i64 @xmalloc(i32 24)
  %33 = inttoptr i64 %32 to %struct.tree_write_stack*
  store %struct.tree_write_stack* %33, %struct.tree_write_stack** %5, align 8
  %34 = load %struct.tree_write_stack*, %struct.tree_write_stack** %5, align 8
  %35 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %34, i32 0, i32 1
  store %struct.tree_write_stack* null, %struct.tree_write_stack** %35, align 8
  %36 = load %struct.tree_write_stack*, %struct.tree_write_stack** %5, align 8
  %37 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 32, %40
  %42 = mul nsw i32 256, %41
  %43 = call i32 @strbuf_init(i32* %37, i32 %42)
  %44 = load %struct.tree_write_stack*, %struct.tree_write_stack** %5, align 8
  %45 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 0, i8* %47, align 1
  %48 = load %struct.tree_write_stack*, %struct.tree_write_stack** %5, align 8
  %49 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 0, i8* %51, align 1
  %52 = load %struct.tree_write_stack*, %struct.tree_write_stack** %5, align 8
  %53 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %54 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %53, i32 0, i32 1
  store %struct.tree_write_stack* %52, %struct.tree_write_stack** %54, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %59 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 %57, i8* %61, align 1
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = load %struct.tree_write_stack*, %struct.tree_write_stack** %3, align 8
  %66 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 %64, i8* %68, align 1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
