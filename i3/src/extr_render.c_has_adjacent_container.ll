; ModuleID = '/home/carl/AnghaBench/i3/src/extr_render.c_has_adjacent_container.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_render.c_has_adjacent_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CF_GLOBAL = common dso_local global i32 0, align 4
@CF_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @has_adjacent_container(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @con_get_workspace(i32* %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @CF_GLOBAL, align 4
  %15 = call i32* @con_get_fullscreen_con(i32* %13, i32 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @CF_OUTPUT, align 4
  %21 = call i32* @con_get_fullscreen_con(i32* %19, i32 %20)
  store i32* %21, i32** %7, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %51

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  store i32* %28, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @resize_find_tiling_participants(i32** %8, i32** %9, i32 %29, i32 0)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %51

34:                                               ; preds = %27
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %51

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @con_has_parent(i32* %39, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @con_has_parent(i32* %44, i32* %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ false, %38 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %37, %33, %26
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32* @con_get_workspace(i32*) #1

declare dso_local i32* @con_get_fullscreen_con(i32*, i32) #1

declare dso_local i32 @resize_find_tiling_participants(i32**, i32**, i32, i32) #1

declare dso_local i64 @con_has_parent(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
