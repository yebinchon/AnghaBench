; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_OLD_table.c_checkboxToggled.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_OLD_table.c_checkboxToggled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tablePart = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* (%struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64)* @checkboxToggled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkboxToggled(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tablePart*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.tablePart*
  store %struct.tablePart* %14, %struct.tablePart** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @gtk_tree_path_new_from_string(i32* %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @gtk_tree_path_get_indices(i32* %17)
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @gtk_tree_path_free(i32* %21)
  %23 = load %struct.tablePart*, %struct.tablePart** %7, align 8
  %24 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %10, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i8* (%struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32)*, i8* (%struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32)** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.tablePart*, %struct.tablePart** %7, align 8
  %39 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i8* %32(%struct.TYPE_7__* %35, %struct.TYPE_6__* %36, i32 %37, i32 %40)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @uiTableModelTakeInt(i8* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load %struct.tablePart*, %struct.tablePart** %7, align 8
  %48 = load %struct.tablePart*, %struct.tablePart** %7, align 8
  %49 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @uiTableModelGiveInt(i32 %52)
  %54 = call i32 @onEdited(%struct.tablePart* %47, i32 %50, i32* %51, i32 %53)
  ret void
}

declare dso_local i32* @gtk_tree_path_new_from_string(i32*) #1

declare dso_local i32* @gtk_tree_path_get_indices(i32*) #1

declare dso_local i32 @gtk_tree_path_free(i32*) #1

declare dso_local i32 @uiTableModelTakeInt(i8*) #1

declare dso_local i32 @onEdited(%struct.tablePart*, i32, i32*, i32) #1

declare dso_local i32 @uiTableModelGiveInt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
