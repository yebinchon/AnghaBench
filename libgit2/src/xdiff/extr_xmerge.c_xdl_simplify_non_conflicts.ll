; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xmerge.c_xdl_simplify_non_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xmerge.c_xdl_simplify_non_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32)* @xdl_simplify_non_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdl_simplify_non_conflicts(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %69

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %68, %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %9, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %69

25:                                               ; preds = %17
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %25
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %46, %47
  %49 = icmp sgt i32 %48, 3
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %56, %57
  %59 = call i64 @lines_contain_alnum(i32* %54, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53, %50, %40, %25
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %6, align 8
  br label %68

63:                                               ; preds = %53, %45
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = call i32 @xdl_merge_two_conflicts(%struct.TYPE_4__* %66)
  br label %68

68:                                               ; preds = %63, %61
  br label %17

69:                                               ; preds = %23, %14
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @lines_contain_alnum(i32*, i32, i32) #1

declare dso_local i32 @xdl_merge_two_conflicts(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
