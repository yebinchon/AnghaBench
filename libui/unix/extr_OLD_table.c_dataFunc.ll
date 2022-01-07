; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_OLD_table.c_dataFunc.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_OLD_table.c_dataFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tablePart = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@G_VALUE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"foreground-rgba\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"foreground-set\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"surface\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"cell-background-rgba\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"cell-background-set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i64)* @dataFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dataFunc(i32* %0, i32* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tablePart*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = inttoptr i64 %16 to %struct.tablePart*
  store %struct.tablePart* %17, %struct.tablePart** %11, align 8
  %18 = load i32, i32* @G_VALUE_INIT, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.tablePart*, %struct.tablePart** %11, align 8
  %20 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %105 [
    i32 128, label %22
    i32 130, label %47
    i32 132, label %65
    i32 131, label %77
    i32 129, label %89
  ]

22:                                               ; preds = %5
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.tablePart*, %struct.tablePart** %11, align 8
  %26 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gtk_tree_model_get_value(i32* %23, i32* %24, i32 %27, i32* %12)
  %29 = call i32* @g_value_get_string(i32* %12)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = ptrtoint i32* %31 to i32
  %33 = call i32 (i32*, i8*, i32, i8*, ...) @g_object_set(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %32, i8* null)
  %34 = load %struct.tablePart*, %struct.tablePart** %11, align 8
  %35 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %46

38:                                               ; preds = %22
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.tablePart*, %struct.tablePart** %11, align 8
  %42 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @applyColor(i32* %39, i32* %40, i32 %43, i32* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %38, %22
  br label %105

47:                                               ; preds = %5
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.tablePart*, %struct.tablePart** %11, align 8
  %51 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @gtk_tree_model_get_value(i32* %48, i32* %49, i32 %52, i32* %12)
  %54 = call i64 @g_value_get_pointer(i32* %12)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = load %struct.tablePart*, %struct.tablePart** %11, align 8
  %59 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @uiprivImageAppropriateSurface(i32* %57, i32 %62)
  %64 = call i32 (i32*, i8*, i32, i8*, ...) @g_object_set(i32* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %63, i8* null)
  br label %105

65:                                               ; preds = %5
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.tablePart*, %struct.tablePart** %11, align 8
  %69 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @gtk_tree_model_get_value(i32* %66, i32* %67, i32 %70, i32* %12)
  %72 = call i32* @g_value_get_string(i32* %12)
  store i32* %72, i32** %13, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = ptrtoint i32* %74 to i32
  %76 = call i32 (i32*, i8*, i32, i8*, ...) @g_object_set(i32* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %75, i8* null)
  br label %105

77:                                               ; preds = %5
  %78 = load i32*, i32** %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.tablePart*, %struct.tablePart** %11, align 8
  %81 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @gtk_tree_model_get_value(i32* %78, i32* %79, i32 %82, i32* %12)
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @g_value_get_int(i32* %12)
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32*, i8*, i32, i8*, ...) @g_object_set(i32* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %87, i8* null)
  br label %105

89:                                               ; preds = %5
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load %struct.tablePart*, %struct.tablePart** %11, align 8
  %93 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @gtk_tree_model_get_value(i32* %90, i32* %91, i32 %94, i32* %12)
  %96 = call i32 @g_value_get_int(i32* %12)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %104

100:                                              ; preds = %89
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i32 (i32*, i8*, i32, i8*, ...) @g_object_set(i32* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %102, i8* null)
  br label %104

104:                                              ; preds = %100, %99
  br label %105

105:                                              ; preds = %5, %104, %77, %65, %47, %46
  %106 = call i32 @g_value_unset(i32* %12)
  %107 = load %struct.tablePart*, %struct.tablePart** %11, align 8
  %108 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %123

113:                                              ; preds = %105
  %114 = load i32*, i32** %8, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load %struct.tablePart*, %struct.tablePart** %11, align 8
  %117 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @applyColor(i32* %114, i32* %115, i32 %120, i32* %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %123

123:                                              ; preds = %113, %105
  ret void
}

declare dso_local i32 @gtk_tree_model_get_value(i32*, i32*, i32, i32*) #1

declare dso_local i32* @g_value_get_string(i32*) #1

declare dso_local i32 @g_object_set(i32*, i8*, i32, i8*, ...) #1

declare dso_local i32 @applyColor(i32*, i32*, i32, i32*, i8*, i8*) #1

declare dso_local i64 @g_value_get_pointer(i32*) #1

declare dso_local i32 @uiprivImageAppropriateSurface(i32*, i32) #1

declare dso_local i32 @g_value_get_int(i32*) #1

declare dso_local i32 @g_value_unset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
