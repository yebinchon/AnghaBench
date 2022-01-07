; ModuleID = '/home/carl/AnghaBench/i3/src/extr_tree.c_tree_open_con.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_tree.c_tree_open_con.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_11__* }

@focused = common dso_local global %struct.TYPE_11__* null, align 8
@CT_OUTPUT = common dso_local global i64 0, align 8
@CT_DOCKAREA = common dso_local global i64 0, align 8
@CT_FLOATING_CON = common dso_local global i64 0, align 8
@CT_WORKSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"con = %p\0A\00", align 1
@L_SPLITH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @tree_open_con(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = icmp eq %struct.TYPE_11__* %6, null
  br i1 %7, label %8, label %51

8:                                                ; preds = %2
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @focused, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %3, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CT_OUTPUT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CT_DOCKAREA, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @focused, align 8
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %3, align 8
  br label %27

27:                                               ; preds = %25, %19, %8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CT_FLOATING_CON, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = call %struct.TYPE_11__* @con_descend_tiling_focused(%struct.TYPE_11__* %36)
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %3, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CT_WORKSPACE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %3, align 8
  br label %47

47:                                               ; preds = %43, %33
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = call i32 @DLOG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %49)
  br label %51

51:                                               ; preds = %48, %2
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = icmp ne %struct.TYPE_11__* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call %struct.TYPE_11__* @con_new(%struct.TYPE_11__* %56, i32* %57)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %5, align 8
  %59 = load i32, i32* @L_SPLITH, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = call i32 @con_fix_percent(%struct.TYPE_11__* %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %64
}

declare dso_local %struct.TYPE_11__* @con_descend_tiling_focused(%struct.TYPE_11__*) #1

declare dso_local i32 @DLOG(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @con_new(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @con_fix_percent(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
