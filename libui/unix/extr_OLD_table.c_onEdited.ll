; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_OLD_table.c_onEdited.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_OLD_table.c_onEdited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tablePart = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tablePart*, i32, i8*, i8*)* @onEdited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onEdited(%struct.tablePart* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.tablePart*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.tablePart* %0, %struct.tablePart** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32* @gtk_tree_path_new_from_string(i8* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32* @gtk_tree_path_get_indices(i32* %14)
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @gtk_tree_path_free(i32* %18)
  %20 = load %struct.tablePart*, %struct.tablePart** %5, align 8
  %21 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %11, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, i8*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, i8*)** %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 %29(%struct.TYPE_8__* %32, %struct.TYPE_7__* %33, i32 %34, i32 %35, i8* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @uiTableModelRowChanged(%struct.TYPE_7__* %38, i32 %39)
  ret void
}

declare dso_local i32* @gtk_tree_path_new_from_string(i8*) #1

declare dso_local i32* @gtk_tree_path_get_indices(i32*) #1

declare dso_local i32 @gtk_tree_path_free(i32*) #1

declare dso_local i32 @uiTableModelRowChanged(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
