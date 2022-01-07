; ModuleID = '/home/carl/AnghaBench/git/extr_string-list.c_get_entry_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_string-list.c_get_entry_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, i32 (i8*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*, i8*, i32*)* @get_entry_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_entry_index(%struct.string_list* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  %13 = load %struct.string_list*, %struct.string_list** %5, align 8
  %14 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.string_list*, %struct.string_list** %5, align 8
  %17 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 1
  %18 = load i32 (i8*, i32)*, i32 (i8*, i32)** %17, align 8
  %19 = icmp ne i32 (i8*, i32)* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.string_list*, %struct.string_list** %5, align 8
  %22 = getelementptr inbounds %struct.string_list, %struct.string_list* %21, i32 0, i32 1
  %23 = load i32 (i8*, i32)*, i32 (i8*, i32)** %22, align 8
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 (i8*, i32)* [ %23, %20 ], [ @strcmp, %24 ]
  store i32 (i8*, i32)* %26, i32 (i8*, i32)** %10, align 8
  br label %27

27:                                               ; preds = %63, %25
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sdiv i32 %36, 2
  %38 = add nsw i32 %33, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32 (i8*, i32)*, i32 (i8*, i32)** %10, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.string_list*, %struct.string_list** %5, align 8
  %42 = getelementptr inbounds %struct.string_list, %struct.string_list* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %39(i8* %40, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %9, align 4
  br label %63

54:                                               ; preds = %32
  %55 = load i32, i32* %12, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %8, align 4
  br label %62

59:                                               ; preds = %54
  %60 = load i32*, i32** %7, align 8
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %67

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %52
  br label %27

64:                                               ; preds = %27
  %65 = load i32*, i32** %7, align 8
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
