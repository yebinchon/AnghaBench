; ModuleID = '/home/carl/AnghaBench/git/extr_string-list.c_string_list_split_in_place.c'
source_filename = "/home/carl/AnghaBench/git/extr_string-list.c_string_list_split_in_place.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64 }

@.str = private unnamed_addr constant [85 x i8] c"internal error in string_list_split_in_place(): list->strdup_strings must not be set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_list_split_in_place(%struct.string_list* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.string_list* %0, %struct.string_list** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %11, align 8
  %14 = load %struct.string_list*, %struct.string_list** %6, align 8
  %15 = getelementptr inbounds %struct.string_list, %struct.string_list* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = call i32 @die(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %4
  br label %21

21:                                               ; preds = %53, %20
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.string_list*, %struct.string_list** %6, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @string_list_append(%struct.string_list* %31, i8* %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %54

35:                                               ; preds = %26, %21
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i8* @strchr(i8* %36, i32 %37)
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i8*, i8** %12, align 8
  store i8 0, i8* %42, align 1
  %43 = load %struct.string_list*, %struct.string_list** %6, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @string_list_append(%struct.string_list* %43, i8* %44)
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %11, align 8
  br label %53

48:                                               ; preds = %35
  %49 = load %struct.string_list*, %struct.string_list** %6, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @string_list_append(%struct.string_list* %49, i8* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %54

53:                                               ; preds = %41
  br label %21

54:                                               ; preds = %48, %30
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
