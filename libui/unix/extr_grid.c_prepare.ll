; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_grid.c_prepare.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_grid.c_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gridChild = type { i32, i32, i32, i32, i32* }

@gtkAligns = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.gridChild*, i32*, i32, i64, i32, i64)* @prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @prepare(%struct.gridChild* %0, i32* %1, i32 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.gridChild*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.gridChild* %0, %struct.gridChild** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load %struct.gridChild*, %struct.gridChild** %7, align 8
  %16 = getelementptr inbounds %struct.gridChild, %struct.gridChild* %15, i32 0, i32 4
  store i32* %14, i32** %16, align 8
  %17 = load %struct.gridChild*, %struct.gridChild** %7, align 8
  %18 = getelementptr inbounds %struct.gridChild, %struct.gridChild* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @uiControlHandle(i32* %19)
  %21 = call i32* @GTK_WIDGET(i32 %20)
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call i32 @gtk_widget_get_hexpand(i32* %22)
  %24 = load %struct.gridChild*, %struct.gridChild** %7, align 8
  %25 = getelementptr inbounds %struct.gridChild, %struct.gridChild* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @gtk_widget_get_halign(i32* %26)
  %28 = load %struct.gridChild*, %struct.gridChild** %7, align 8
  %29 = getelementptr inbounds %struct.gridChild, %struct.gridChild* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @gtk_widget_get_vexpand(i32* %30)
  %32 = load %struct.gridChild*, %struct.gridChild** %7, align 8
  %33 = getelementptr inbounds %struct.gridChild, %struct.gridChild* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @gtk_widget_get_valign(i32* %34)
  %36 = load %struct.gridChild*, %struct.gridChild** %7, align 8
  %37 = getelementptr inbounds %struct.gridChild, %struct.gridChild* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @gtk_widget_set_hexpand(i32* %38, i32 %41)
  %43 = load i32*, i32** %13, align 8
  %44 = load i32*, i32** @gtkAligns, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gtk_widget_set_halign(i32* %43, i32 %47)
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @gtk_widget_set_vexpand(i32* %49, i32 %52)
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** @gtkAligns, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @gtk_widget_set_valign(i32* %54, i32 %58)
  %60 = load i32*, i32** %13, align 8
  ret i32* %60
}

declare dso_local i32* @GTK_WIDGET(i32) #1

declare dso_local i32 @uiControlHandle(i32*) #1

declare dso_local i32 @gtk_widget_get_hexpand(i32*) #1

declare dso_local i32 @gtk_widget_get_halign(i32*) #1

declare dso_local i32 @gtk_widget_get_vexpand(i32*) #1

declare dso_local i32 @gtk_widget_get_valign(i32*) #1

declare dso_local i32 @gtk_widget_set_hexpand(i32*, i32) #1

declare dso_local i32 @gtk_widget_set_halign(i32*, i32) #1

declare dso_local i32 @gtk_widget_set_vexpand(i32*, i32) #1

declare dso_local i32 @gtk_widget_set_valign(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
