; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_table.c_textColumnDataFunc.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_table.c_textColumnDataFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.textColumnParams = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@G_VALUE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"editable\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"foreground-rgba\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"foreground-set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i64)* @textColumnDataFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @textColumnDataFunc(i32* %0, i32* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.textColumnParams*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = inttoptr i64 %14 to %struct.textColumnParams*
  store %struct.textColumnParams* %15, %struct.textColumnParams** %11, align 8
  %16 = load i32, i32* @G_VALUE_INIT, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.textColumnParams*, %struct.textColumnParams** %11, align 8
  %20 = getelementptr inbounds %struct.textColumnParams, %struct.textColumnParams* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gtk_tree_model_get_value(i32* %17, i32* %18, i32 %21, i32* %12)
  %23 = call i32* @g_value_get_string(i32* %12)
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i32 @g_object_set(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %25, i32* null)
  %27 = call i32 @g_value_unset(i32* %12)
  %28 = load %struct.textColumnParams*, %struct.textColumnParams** %11, align 8
  %29 = getelementptr inbounds %struct.textColumnParams, %struct.textColumnParams* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.textColumnParams*, %struct.textColumnParams** %11, align 8
  %33 = getelementptr inbounds %struct.textColumnParams, %struct.textColumnParams* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @setEditable(i32 %30, i32* %31, i32 %34, i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.textColumnParams*, %struct.textColumnParams** %11, align 8
  %38 = getelementptr inbounds %struct.textColumnParams, %struct.textColumnParams* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %51

42:                                               ; preds = %5
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.textColumnParams*, %struct.textColumnParams** %11, align 8
  %46 = getelementptr inbounds %struct.textColumnParams, %struct.textColumnParams* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @applyColor(i32* %43, i32* %44, i32 %48, i32* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %42, %5
  %52 = load %struct.textColumnParams*, %struct.textColumnParams** %11, align 8
  %53 = getelementptr inbounds %struct.textColumnParams, %struct.textColumnParams* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @applyBackgroundColor(i32 %54, i32* %55, i32* %56, i32* %57)
  ret void
}

declare dso_local i32 @gtk_tree_model_get_value(i32*, i32*, i32, i32*) #1

declare dso_local i32* @g_value_get_string(i32*) #1

declare dso_local i32 @g_object_set(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @g_value_unset(i32*) #1

declare dso_local i32 @setEditable(i32, i32*, i32, i32*, i8*) #1

declare dso_local i32 @applyColor(i32*, i32*, i32, i32*, i8*, i8*) #1

declare dso_local i32 @applyBackgroundColor(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
