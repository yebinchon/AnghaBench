; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_OLD_table.c_appendPart.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_OLD_table.c_appendPart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.tablePart = type { i32* }

@dataFunc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.tablePart*, i32*, i32)* @appendPart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @appendPart(%struct.TYPE_3__* %0, %struct.tablePart* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.tablePart*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.tablePart* %1, %struct.tablePart** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %7, align 8
  %10 = load %struct.tablePart*, %struct.tablePart** %6, align 8
  %11 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tablePart*, %struct.tablePart** %6, align 8
  %16 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @gtk_tree_view_column_pack_start(i32 %14, i32* %17, i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tablePart*, %struct.tablePart** %6, align 8
  %26 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @dataFunc, align 4
  %29 = load %struct.tablePart*, %struct.tablePart** %6, align 8
  %30 = call i32 @gtk_tree_view_column_set_cell_data_func(i32 %24, i32* %27, i32 %28, %struct.tablePart* %29, i32* null)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tablePart*, %struct.tablePart** %6, align 8
  %35 = call i32 @g_ptr_array_add(i32 %33, %struct.tablePart* %34)
  ret void
}

declare dso_local i32 @gtk_tree_view_column_pack_start(i32, i32*, i32) #1

declare dso_local i32 @gtk_tree_view_column_set_cell_data_func(i32, i32*, i32, %struct.tablePart*, i32*) #1

declare dso_local i32 @g_ptr_array_add(i32, %struct.tablePart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
