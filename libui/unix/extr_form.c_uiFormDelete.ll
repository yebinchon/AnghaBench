; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_form.c_uiFormDelete.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_form.c_uiFormDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.formChild = type { i32, i32, i32, i32, i64, i32, i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiFormDelete(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.formChild*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.formChild* @ctrl(%struct.TYPE_4__* %7, i32 %8)
  store %struct.formChild* %9, %struct.formChild** %5, align 8
  %10 = load %struct.formChild*, %struct.formChild** %5, align 8
  %11 = getelementptr inbounds %struct.formChild, %struct.formChild* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @uiControlHandle(i32 %12)
  %14 = call i32* @GTK_WIDGET(i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load %struct.formChild*, %struct.formChild** %5, align 8
  %16 = getelementptr inbounds %struct.formChild, %struct.formChild* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gtk_widget_destroy(i32 %17)
  %19 = load %struct.formChild*, %struct.formChild** %5, align 8
  %20 = getelementptr inbounds %struct.formChild, %struct.formChild* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @uiControlSetParent(i32 %21, i32* null)
  %23 = load %struct.formChild*, %struct.formChild** %5, align 8
  %24 = getelementptr inbounds %struct.formChild, %struct.formChild* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @uiUnixControl(i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @uiUnixControlSetContainer(i32 %26, i32 %29, i32 %30)
  %32 = load %struct.formChild*, %struct.formChild** %5, align 8
  %33 = getelementptr inbounds %struct.formChild, %struct.formChild* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @gtk_size_group_remove_widget(i32 %39, i32* %40)
  br label %42

42:                                               ; preds = %36, %2
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.formChild*, %struct.formChild** %5, align 8
  %45 = getelementptr inbounds %struct.formChild, %struct.formChild* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @gtk_widget_set_hexpand(i32* %43, i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.formChild*, %struct.formChild** %5, align 8
  %50 = getelementptr inbounds %struct.formChild, %struct.formChild* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @gtk_widget_set_halign(i32* %48, i32 %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.formChild*, %struct.formChild** %5, align 8
  %55 = getelementptr inbounds %struct.formChild, %struct.formChild* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @gtk_widget_set_vexpand(i32* %53, i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.formChild*, %struct.formChild** %5, align 8
  %60 = getelementptr inbounds %struct.formChild, %struct.formChild* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @gtk_widget_set_valign(i32* %58, i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @g_array_remove_index(i32 %65, i32 %66)
  ret void
}

declare dso_local %struct.formChild* @ctrl(%struct.TYPE_4__*, i32) #1

declare dso_local i32* @GTK_WIDGET(i32) #1

declare dso_local i32 @uiControlHandle(i32) #1

declare dso_local i32 @gtk_widget_destroy(i32) #1

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
