; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_box.c_uiBoxDelete.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_box.c_uiBoxDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.boxChild = type { i32, i32, i32, i32, i64, i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiBoxDelete(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.boxChild*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.boxChild* @ctrl(%struct.TYPE_4__* %7, i32 %8)
  store %struct.boxChild* %9, %struct.boxChild** %5, align 8
  %10 = load %struct.boxChild*, %struct.boxChild** %5, align 8
  %11 = getelementptr inbounds %struct.boxChild, %struct.boxChild* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @uiControlHandle(i32 %12)
  %14 = call i32* @GTK_WIDGET(i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load %struct.boxChild*, %struct.boxChild** %5, align 8
  %16 = getelementptr inbounds %struct.boxChild, %struct.boxChild* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @uiControlSetParent(i32 %17, i32* null)
  %19 = load %struct.boxChild*, %struct.boxChild** %5, align 8
  %20 = getelementptr inbounds %struct.boxChild, %struct.boxChild* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @uiUnixControl(i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @uiUnixControlSetContainer(i32 %22, i32 %25, i32 %26)
  %28 = load %struct.boxChild*, %struct.boxChild** %5, align 8
  %29 = getelementptr inbounds %struct.boxChild, %struct.boxChild* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @gtk_size_group_remove_widget(i32 %35, i32* %36)
  br label %38

38:                                               ; preds = %32, %2
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.boxChild*, %struct.boxChild** %5, align 8
  %41 = getelementptr inbounds %struct.boxChild, %struct.boxChild* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gtk_widget_set_hexpand(i32* %39, i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.boxChild*, %struct.boxChild** %5, align 8
  %46 = getelementptr inbounds %struct.boxChild, %struct.boxChild* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @gtk_widget_set_halign(i32* %44, i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.boxChild*, %struct.boxChild** %5, align 8
  %51 = getelementptr inbounds %struct.boxChild, %struct.boxChild* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gtk_widget_set_vexpand(i32* %49, i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.boxChild*, %struct.boxChild** %5, align 8
  %56 = getelementptr inbounds %struct.boxChild, %struct.boxChild* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @gtk_widget_set_valign(i32* %54, i32 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @g_array_remove_index(i32 %61, i32 %62)
  ret void
}

declare dso_local %struct.boxChild* @ctrl(%struct.TYPE_4__*, i32) #1

declare dso_local i32* @GTK_WIDGET(i32) #1

declare dso_local i32 @uiControlHandle(i32) #1

declare dso_local i32 @uiControlSetParent(i32, i32*) #1

declare dso_local i32 @uiUnixControlSetContainer(i32, i32, i32) #1

declare dso_local i32 @uiUnixControl(i32) #1

declare dso_local i32 @gtk_size_group_remove_widget(i32, i32*) #1

declare dso_local i32 @gtk_widget_set_hexpand(i32*, i32) #1

declare dso_local i32 @gtk_widget_set_halign(i32*, i32) #1

declare dso_local i32 @gtk_widget_set_vexpand(i32*, i32) #1

declare dso_local i32 @gtk_widget_set_valign(i32*, i32) #1

declare dso_local i32 @g_array_remove_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
