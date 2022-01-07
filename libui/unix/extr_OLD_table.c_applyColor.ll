; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_OLD_table.c_applyColor.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_OLD_table.c_applyColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_VALUE_INIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*, i8*, i8*)* @applyColor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applyColor(i32* %0, i32* %1, i32 %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* @G_VALUE_INIT, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @gtk_tree_model_get_value(i32* %16, i32* %17, i32 %18, i32* %13)
  %20 = call i64 @g_value_get_boxed(i32* %13)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = load i32*, i32** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = call i32 @g_object_set(i32* %25, i8* %26, i32* %27, i32* null)
  br label %34

29:                                               ; preds = %6
  %30 = load i32*, i32** %10, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i32*, i32** @FALSE, align 8
  %33 = call i32 @g_object_set(i32* %30, i8* %31, i32* %32, i32* null)
  br label %34

34:                                               ; preds = %29, %24
  %35 = call i32 @g_value_unset(i32* %13)
  ret void
}

declare dso_local i32 @gtk_tree_model_get_value(i32*, i32*, i32, i32*) #1

declare dso_local i64 @g_value_get_boxed(i32*) #1

declare dso_local i32 @g_object_set(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @g_value_unset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
