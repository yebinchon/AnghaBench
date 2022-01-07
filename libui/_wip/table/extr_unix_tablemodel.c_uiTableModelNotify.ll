; ModuleID = '/home/carl/AnghaBench/libui/_wip/table/extr_unix_tablemodel.c_uiTableModelNotify.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/table/extr_unix_tablemodel.c_uiTableModelNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"invalid row given to row inserted in uiTableModelNotify()\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"invalid row given to row changed in uiTableModelNotify()\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"unknown uiTable notification %d in uiTableModelNotify()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiTableModelNotify(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @GTK_TREE_MODEL(i32* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32* @gtk_tree_path_new_from_indices(i32 %14, i32 -1)
  store i32* %15, i32** %10, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %45 [
    i32 128, label %17
    i32 129, label %29
    i32 130, label %33
  ]

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @gtk_tree_model_get_iter(i32* %18, i32* %11, i32* %19)
  %21 = load i32, i32* @FALSE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 (i8*, ...) @complain(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @gtk_tree_model_row_inserted(i32* %26, i32* %27, i32* %11)
  br label %48

29:                                               ; preds = %4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @gtk_tree_model_row_deleted(i32* %30, i32* %31)
  br label %48

33:                                               ; preds = %4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @gtk_tree_model_get_iter(i32* %34, i32* %11, i32* %35)
  %37 = load i32, i32* @FALSE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @complain(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %33
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @gtk_tree_model_row_changed(i32* %42, i32* %43, i32* %11)
  br label %48

45:                                               ; preds = %4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i8*, ...) @complain(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %41, %29, %25
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @gtk_tree_path_free(i32* %49)
  ret void
}

declare dso_local i32* @GTK_TREE_MODEL(i32*) #1

declare dso_local i32* @gtk_tree_path_new_from_indices(i32, i32) #1

declare dso_local i32 @gtk_tree_model_get_iter(i32*, i32*, i32*) #1

declare dso_local i32 @complain(i8*, ...) #1

declare dso_local i32 @gtk_tree_model_row_inserted(i32*, i32*, i32*) #1

declare dso_local i32 @gtk_tree_model_row_deleted(i32*, i32*) #1

declare dso_local i32 @gtk_tree_model_row_changed(i32*, i32*, i32*) #1

declare dso_local i32 @gtk_tree_path_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
