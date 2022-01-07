; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_table.c_checkboxColumnDataFunc.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_table.c_checkboxColumnDataFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkboxColumnParams = type { i32, i32, i32, i32 }

@G_VALUE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"activatable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i64)* @checkboxColumnDataFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkboxColumnDataFunc(i32* %0, i32* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.checkboxColumnParams*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = inttoptr i64 %14 to %struct.checkboxColumnParams*
  store %struct.checkboxColumnParams* %15, %struct.checkboxColumnParams** %11, align 8
  %16 = load i32, i32* @G_VALUE_INIT, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.checkboxColumnParams*, %struct.checkboxColumnParams** %11, align 8
  %20 = getelementptr inbounds %struct.checkboxColumnParams, %struct.checkboxColumnParams* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gtk_tree_model_get_value(i32* %17, i32* %18, i32 %21, i32* %12)
  %23 = call i64 @g_value_get_int(i32* %12)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @g_object_set(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %27, i32* null)
  %29 = call i32 @g_value_unset(i32* %12)
  %30 = load %struct.checkboxColumnParams*, %struct.checkboxColumnParams** %11, align 8
  %31 = getelementptr inbounds %struct.checkboxColumnParams, %struct.checkboxColumnParams* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.checkboxColumnParams*, %struct.checkboxColumnParams** %11, align 8
  %35 = getelementptr inbounds %struct.checkboxColumnParams, %struct.checkboxColumnParams* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @setEditable(i32 %32, i32* %33, i32 %36, i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.checkboxColumnParams*, %struct.checkboxColumnParams** %11, align 8
  %40 = getelementptr inbounds %struct.checkboxColumnParams, %struct.checkboxColumnParams* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @applyBackgroundColor(i32 %41, i32* %42, i32* %43, i32* %44)
  ret void
}

declare dso_local i32 @gtk_tree_model_get_value(i32*, i32*, i32, i32*) #1

declare dso_local i64 @g_value_get_int(i32*) #1

declare dso_local i32 @g_object_set(i32*, i8*, i32, i32*) #1

declare dso_local i32 @g_value_unset(i32*) #1

declare dso_local i32 @setEditable(i32, i32*, i32, i32*, i8*) #1

declare dso_local i32 @applyBackgroundColor(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
