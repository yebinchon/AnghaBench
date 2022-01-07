; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_find_descendant_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_find_descendant_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @find_descendant_ref(i8* %0, %struct.string_list* %1, %struct.string_list* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.string_list* %1, %struct.string_list** %6, align 8
  store %struct.string_list* %2, %struct.string_list** %7, align 8
  %10 = load %struct.string_list*, %struct.string_list** %6, align 8
  %11 = icmp ne %struct.string_list* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %52

13:                                               ; preds = %3
  %14 = load %struct.string_list*, %struct.string_list** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @string_list_find_insert_index(%struct.string_list* %14, i8* %15, i32 0)
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %48, %13
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.string_list*, %struct.string_list** %6, align 8
  %20 = getelementptr inbounds %struct.string_list, %struct.string_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %17
  %24 = load %struct.string_list*, %struct.string_list** %6, align 8
  %25 = getelementptr inbounds %struct.string_list, %struct.string_list* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @starts_with(i8* %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  br label %51

37:                                               ; preds = %23
  %38 = load %struct.string_list*, %struct.string_list** %7, align 8
  %39 = icmp ne %struct.string_list* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.string_list*, %struct.string_list** %7, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @string_list_has_string(%struct.string_list* %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40, %37
  %46 = load i8*, i8** %9, align 8
  store i8* %46, i8** %4, align 8
  br label %52

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %17

51:                                               ; preds = %36, %17
  store i8* null, i8** %4, align 8
  br label %52

52:                                               ; preds = %51, %45, %12
  %53 = load i8*, i8** %4, align 8
  ret i8* %53
}

declare dso_local i32 @string_list_find_insert_index(%struct.string_list*, i8*, i32) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i32 @string_list_has_string(%struct.string_list*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
