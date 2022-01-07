; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_iterator.c_tree_iterator_advance_into.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_iterator.c_tree_iterator_advance_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @tree_iterator_advance_into to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_iterator_advance_into(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %6, align 8
  %11 = load i32**, i32*** %4, align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32**, i32*** %4, align 8
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @tree_iterator_current_frame(i32* %16)
  store i32* %17, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @GIT_ITEROVER, align 4
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %15
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.TYPE_4__* @tree_iterator_current_entry(i32* %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %8, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @iterator__do_autoexpand(i32* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  %28 = zext i1 %27 to i32
  %29 = xor i32 %25, %28
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %21
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @git_tree_entry__is_tree(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %52

40:                                               ; preds = %33
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = call i32 @tree_iterator_frame_push(i32* %41, %struct.TYPE_4__* %42)
  store i32 %43, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %52

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %21
  %49 = load i32**, i32*** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @tree_iterator_advance(i32** %49, i32* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %45, %39, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32* @tree_iterator_current_frame(i32*) #1

declare dso_local %struct.TYPE_4__* @tree_iterator_current_entry(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @iterator__do_autoexpand(i32*) #1

declare dso_local i32 @git_tree_entry__is_tree(i32) #1

declare dso_local i32 @tree_iterator_frame_push(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @tree_iterator_advance(i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
