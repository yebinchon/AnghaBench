; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_mdesc.c_mdesc_get_node_ops.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_mdesc.c_mdesc_get_node_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32*, i32* }

@md_node_ops_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32**, i32**, i32**)* @mdesc_get_node_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdesc_get_node_ops(i8* %0, i32** %1, i32** %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %10 = load i32**, i32*** %6, align 8
  %11 = icmp ne i32** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32**, i32*** %6, align 8
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %12, %4
  %15 = load i32**, i32*** %7, align 8
  %16 = icmp ne i32** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32**, i32*** %7, align 8
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32**, i32*** %8, align 8
  %21 = icmp ne i32** %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32**, i32*** %8, align 8
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %85

28:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %82, %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @md_node_ops_table, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %85

37:                                               ; preds = %29
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @md_node_ops_table, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strcmp(i32* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %37
  %48 = load i32**, i32*** %6, align 8
  %49 = icmp ne i32** %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @md_node_ops_table, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32**, i32*** %6, align 8
  store i32* %56, i32** %57, align 8
  br label %58

58:                                               ; preds = %50, %47
  %59 = load i32**, i32*** %7, align 8
  %60 = icmp ne i32** %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @md_node_ops_table, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32**, i32*** %7, align 8
  store i32* %67, i32** %68, align 8
  br label %69

69:                                               ; preds = %61, %58
  %70 = load i32**, i32*** %8, align 8
  %71 = icmp ne i32** %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @md_node_ops_table, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32**, i32*** %8, align 8
  store i32* %78, i32** %79, align 8
  br label %80

80:                                               ; preds = %72, %69
  br label %85

81:                                               ; preds = %37
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %29

85:                                               ; preds = %27, %80, %29
  ret void
}

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
