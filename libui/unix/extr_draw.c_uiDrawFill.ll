; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_draw.c_uiDrawFill.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_draw.c_uiDrawFill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CAIRO_FILL_RULE_WINDING = common dso_local global i32 0, align 4
@CAIRO_FILL_RULE_EVEN_ODD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiDrawFill(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @uiprivRunPath(i32* %8, i32 %11)
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @mkbrush(i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @cairo_set_source(i32 %17, i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @uiprivPathFillMode(i32* %20)
  switch i32 %21, label %34 [
    i32 128, label %22
    i32 129, label %28
  ]

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CAIRO_FILL_RULE_WINDING, align 4
  %27 = call i32 @cairo_set_fill_rule(i32 %25, i32 %26)
  br label %34

28:                                               ; preds = %3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CAIRO_FILL_RULE_EVEN_ODD, align 4
  %33 = call i32 @cairo_set_fill_rule(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %3, %28, %22
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cairo_fill(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @cairo_pattern_destroy(i32* %39)
  ret void
}

declare dso_local i32 @uiprivRunPath(i32*, i32) #1

declare dso_local i32* @mkbrush(i32*) #1

declare dso_local i32 @cairo_set_source(i32, i32*) #1

declare dso_local i32 @uiprivPathFillMode(i32*) #1

declare dso_local i32 @cairo_set_fill_rule(i32, i32) #1

declare dso_local i32 @cairo_fill(i32) #1

declare dso_local i32 @cairo_pattern_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
