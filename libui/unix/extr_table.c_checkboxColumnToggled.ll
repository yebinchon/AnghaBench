; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_table.c_checkboxColumnToggled.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_table.c_checkboxColumnToggled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkboxColumnParams = type { i32, i32 }

@G_VALUE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64)* @checkboxColumnToggled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkboxColumnToggled(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.checkboxColumnParams*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.checkboxColumnParams*
  store %struct.checkboxColumnParams* %14, %struct.checkboxColumnParams** %7, align 8
  %15 = load i32, i32* @G_VALUE_INIT, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @gtk_tree_path_new_from_string(i32* %16)
  store i32* %17, i32** %11, align 8
  %18 = load %struct.checkboxColumnParams*, %struct.checkboxColumnParams** %7, align 8
  %19 = getelementptr inbounds %struct.checkboxColumnParams, %struct.checkboxColumnParams* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @GTK_TREE_MODEL(i32 %20)
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @gtk_tree_model_get_iter(i32 %21, i32* %12, i32* %22)
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @gtk_tree_path_free(i32* %24)
  %26 = load %struct.checkboxColumnParams*, %struct.checkboxColumnParams** %7, align 8
  %27 = getelementptr inbounds %struct.checkboxColumnParams, %struct.checkboxColumnParams* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @GTK_TREE_MODEL(i32 %28)
  %30 = load %struct.checkboxColumnParams*, %struct.checkboxColumnParams** %7, align 8
  %31 = getelementptr inbounds %struct.checkboxColumnParams, %struct.checkboxColumnParams* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gtk_tree_model_get_value(i32 %29, i32* %12, i32 %32, i32* %8)
  %34 = call i32 @g_value_get_int(i32* %8)
  store i32 %34, i32* %9, align 4
  %35 = call i32 @g_value_unset(i32* %8)
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32* @uiNewTableValueInt(i32 %39)
  store i32* %40, i32** %10, align 8
  %41 = load %struct.checkboxColumnParams*, %struct.checkboxColumnParams** %7, align 8
  %42 = getelementptr inbounds %struct.checkboxColumnParams, %struct.checkboxColumnParams* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.checkboxColumnParams*, %struct.checkboxColumnParams** %7, align 8
  %45 = getelementptr inbounds %struct.checkboxColumnParams, %struct.checkboxColumnParams* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @onEdited(i32 %43, i32 %46, i32* %47, i32* %48, i32* null)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @uiFreeTableValue(i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @GTK_CELL_RENDERER(i32* %52)
  %54 = load %struct.checkboxColumnParams*, %struct.checkboxColumnParams** %7, align 8
  %55 = getelementptr inbounds %struct.checkboxColumnParams, %struct.checkboxColumnParams* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @GTK_TREE_MODEL(i32 %56)
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @checkboxColumnDataFunc(i32* null, i32 %53, i32 %57, i32* %12, i64 %58)
  ret void
}

declare dso_local i32* @gtk_tree_path_new_from_string(i32*) #1

declare dso_local i32 @gtk_tree_model_get_iter(i32, i32*, i32*) #1

declare dso_local i32 @GTK_TREE_MODEL(i32) #1

declare dso_local i32 @gtk_tree_path_free(i32*) #1

declare dso_local i32 @gtk_tree_model_get_value(i32, i32*, i32, i32*) #1

declare dso_local i32 @g_value_get_int(i32*) #1

declare dso_local i32 @g_value_unset(i32*) #1

declare dso_local i32* @uiNewTableValueInt(i32) #1

declare dso_local i32 @onEdited(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @uiFreeTableValue(i32*) #1

declare dso_local i32 @checkboxColumnDataFunc(i32*, i32, i32, i32*, i64) #1

declare dso_local i32 @GTK_CELL_RENDERER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
