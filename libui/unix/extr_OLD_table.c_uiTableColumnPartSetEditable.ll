; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_OLD_table.c_uiTableColumnPartSetEditable.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_OLD_table.c_uiTableColumnPartSetEditable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.tablePart = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"editable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiTableColumnPartSetEditable(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tablePart*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @g_ptr_array_index(i32 %10, i32 %11)
  %13 = inttoptr i64 %12 to %struct.tablePart*
  store %struct.tablePart* %13, %struct.tablePart** %7, align 8
  %14 = load %struct.tablePart*, %struct.tablePart** %7, align 8
  %15 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %26 [
    i32 129, label %17
    i32 128, label %17
    i32 131, label %18
    i32 130, label %18
  ]

17:                                               ; preds = %3, %3
  br label %34

18:                                               ; preds = %3, %3
  %19 = load %struct.tablePart*, %struct.tablePart** %7, align 8
  %20 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @g_object_set(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %24, i32* null)
  br label %34

26:                                               ; preds = %3
  %27 = load %struct.tablePart*, %struct.tablePart** %7, align 8
  %28 = getelementptr inbounds %struct.tablePart, %struct.tablePart* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @g_object_set(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32* null)
  br label %34

34:                                               ; preds = %26, %18, %17
  ret void
}

declare dso_local i64 @g_ptr_array_index(i32, i32) #1

declare dso_local i32 @g_object_set(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
