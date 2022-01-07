; ModuleID = '/home/carl/AnghaBench/git/extr_mailmap.c_lookup_prefix.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailmap.c_lookup_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { i32* }
%struct.string_list = type { i32, %struct.string_list_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.string_list_item* (%struct.string_list*, i8*, i64)* @lookup_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.string_list_item* @lookup_prefix(%struct.string_list* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.string_list_item*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.string_list*, %struct.string_list** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @string_list_find_insert_index(%struct.string_list* %10, i8* %11, i32 1)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 -1, %16
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = load %struct.string_list*, %struct.string_list** %5, align 8
  %25 = getelementptr inbounds %struct.string_list, %struct.string_list* %24, i32 0, i32 1
  %26 = load %struct.string_list_item*, %struct.string_list_item** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %26, i64 %28
  store %struct.string_list_item* %29, %struct.string_list_item** %4, align 8
  br label %93

30:                                               ; preds = %15
  br label %39

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store %struct.string_list_item* null, %struct.string_list_item** %4, align 8
  br label %93

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %30
  br label %40

40:                                               ; preds = %91, %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %8, align 4
  %43 = icmp sle i32 0, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.string_list*, %struct.string_list** %5, align 8
  %47 = getelementptr inbounds %struct.string_list, %struct.string_list* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br label %50

50:                                               ; preds = %44, %40
  %51 = phi i1 [ false, %40 ], [ %49, %44 ]
  br i1 %51, label %52, label %92

52:                                               ; preds = %50
  %53 = load %struct.string_list*, %struct.string_list** %5, align 8
  %54 = getelementptr inbounds %struct.string_list, %struct.string_list* %53, i32 0, i32 1
  %55 = load %struct.string_list_item*, %struct.string_list_item** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %55, i64 %57
  %59 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @strncasecmp(i32* %60, i8* %61, i64 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %92

67:                                               ; preds = %52
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %90, label %70

70:                                               ; preds = %67
  %71 = load %struct.string_list*, %struct.string_list** %5, align 8
  %72 = getelementptr inbounds %struct.string_list, %struct.string_list* %71, i32 0, i32 1
  %73 = load %struct.string_list_item*, %struct.string_list_item** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %73, i64 %75
  %77 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %70
  %84 = load %struct.string_list*, %struct.string_list** %5, align 8
  %85 = getelementptr inbounds %struct.string_list, %struct.string_list* %84, i32 0, i32 1
  %86 = load %struct.string_list_item*, %struct.string_list_item** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %86, i64 %88
  store %struct.string_list_item* %89, %struct.string_list_item** %4, align 8
  br label %93

90:                                               ; preds = %70, %67
  br label %91

91:                                               ; preds = %90
  br label %40

92:                                               ; preds = %66, %50
  store %struct.string_list_item* null, %struct.string_list_item** %4, align 8
  br label %93

93:                                               ; preds = %92, %83, %37, %23
  %94 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  ret %struct.string_list_item* %94
}

declare dso_local i32 @string_list_find_insert_index(%struct.string_list*, i8*, i32) #1

declare dso_local i32 @strncasecmp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
