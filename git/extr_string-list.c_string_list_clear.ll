; ModuleID = '/home/carl/AnghaBench/git/extr_string-list.c_string_list_clear.c'
source_filename = "/home/carl/AnghaBench/git/extr_string-list.c_string_list_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.TYPE_2__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @string_list_clear(%struct.string_list* %0, i32 %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.string_list*, %struct.string_list** %3, align 8
  %7 = getelementptr inbounds %struct.string_list, %struct.string_list* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %65

10:                                               ; preds = %2
  %11 = load %struct.string_list*, %struct.string_list** %3, align 8
  %12 = getelementptr inbounds %struct.string_list, %struct.string_list* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %32, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.string_list*, %struct.string_list** %3, align 8
  %19 = getelementptr inbounds %struct.string_list, %struct.string_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.string_list*, %struct.string_list** %3, align 8
  %24 = getelementptr inbounds %struct.string_list, %struct.string_list* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @free(%struct.TYPE_2__* %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %16

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.string_list*, %struct.string_list** %3, align 8
  %43 = getelementptr inbounds %struct.string_list, %struct.string_list* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load %struct.string_list*, %struct.string_list** %3, align 8
  %48 = getelementptr inbounds %struct.string_list, %struct.string_list* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = call i32 @free(%struct.TYPE_2__* %54)
  br label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %40

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59, %36
  %61 = load %struct.string_list*, %struct.string_list** %3, align 8
  %62 = getelementptr inbounds %struct.string_list, %struct.string_list* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = call i32 @free(%struct.TYPE_2__* %63)
  br label %65

65:                                               ; preds = %60, %2
  %66 = load %struct.string_list*, %struct.string_list** %3, align 8
  %67 = getelementptr inbounds %struct.string_list, %struct.string_list* %66, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %67, align 8
  %68 = load %struct.string_list*, %struct.string_list** %3, align 8
  %69 = getelementptr inbounds %struct.string_list, %struct.string_list* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load %struct.string_list*, %struct.string_list** %3, align 8
  %71 = getelementptr inbounds %struct.string_list, %struct.string_list* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  ret void
}

declare dso_local i32 @free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
