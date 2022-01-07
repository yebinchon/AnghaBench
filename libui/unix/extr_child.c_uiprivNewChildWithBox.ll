; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_child.c_uiprivNewChildWithBox.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_child.c_uiprivNewChildWithBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }

@GTK_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GTK_ALIGN_FILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @uiprivNewChildWithBox(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  br label %57

15:                                               ; preds = %4
  %16 = load i32, i32* @GTK_ORIENTATION_HORIZONTAL, align 4
  %17 = call i32* @gtk_box_new(i32 %16, i32 0)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @gtk_widget_show(i32* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @GTK_CONTAINER(i32* %22)
  %24 = call %struct.TYPE_5__* @uiprivNewChild(i32* %20, i32* %21, i32 %23)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %10, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @gtk_widget_set_hexpand(i32 %27, i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GTK_ALIGN_FILL, align 4
  %34 = call i32 @gtk_widget_set_halign(i32 %32, i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @gtk_widget_set_vexpand(i32 %37, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @GTK_ALIGN_FILL, align 4
  %44 = call i32 @gtk_widget_set_valign(i32 %42, i32 %43)
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @gtk_container_add(i32* %48, i32* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @uiprivChildSetMargined(%struct.TYPE_5__* %53, i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %5, align 8
  br label %57

57:                                               ; preds = %15, %14
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %58
}

declare dso_local i32* @gtk_box_new(i32, i32) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

declare dso_local %struct.TYPE_5__* @uiprivNewChild(i32*, i32*, i32) #1

declare dso_local i32 @GTK_CONTAINER(i32*) #1

declare dso_local i32 @gtk_widget_set_hexpand(i32, i32) #1

declare dso_local i32 @gtk_widget_set_halign(i32, i32) #1

declare dso_local i32 @gtk_widget_set_vexpand(i32, i32) #1

declare dso_local i32 @gtk_widget_set_valign(i32, i32) #1

declare dso_local i32 @gtk_container_add(i32*, i32*) #1

declare dso_local i32 @uiprivChildSetMargined(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
