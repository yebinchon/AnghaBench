; ModuleID = '/home/carl/AnghaBench/git/extr_string-list.c_add_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_string-list.c_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.string_list*, i8*)* @add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_entry(i32 %0, %struct.string_list* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.string_list* %1, %struct.string_list** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  br label %18

14:                                               ; preds = %3
  %15 = load %struct.string_list*, %struct.string_list** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @get_entry_index(%struct.string_list* %15, i8* %16, i32* %8)
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi i32 [ %13, %12 ], [ %17, %14 ]
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 -1, %23
  store i32 %24, i32* %4, align 4
  br label %93

25:                                               ; preds = %18
  %26 = load %struct.string_list*, %struct.string_list** %6, align 8
  %27 = getelementptr inbounds %struct.string_list, %struct.string_list* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.string_list*, %struct.string_list** %6, align 8
  %30 = getelementptr inbounds %struct.string_list, %struct.string_list* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = load %struct.string_list*, %struct.string_list** %6, align 8
  %34 = getelementptr inbounds %struct.string_list, %struct.string_list* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ALLOC_GROW(%struct.TYPE_4__* %28, i32 %32, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.string_list*, %struct.string_list** %6, align 8
  %39 = getelementptr inbounds %struct.string_list, %struct.string_list* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %25
  %43 = load %struct.string_list*, %struct.string_list** %6, align 8
  %44 = getelementptr inbounds %struct.string_list, %struct.string_list* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 1
  %50 = load %struct.string_list*, %struct.string_list** %6, align 8
  %51 = getelementptr inbounds %struct.string_list, %struct.string_list* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = load %struct.string_list*, %struct.string_list** %6, align 8
  %57 = getelementptr inbounds %struct.string_list, %struct.string_list* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @MOVE_ARRAY(%struct.TYPE_4__* %49, %struct.TYPE_4__* %55, i32 %60)
  br label %62

62:                                               ; preds = %42, %25
  %63 = load %struct.string_list*, %struct.string_list** %6, align 8
  %64 = getelementptr inbounds %struct.string_list, %struct.string_list* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %7, align 8
  %69 = call i8* @xstrdup(i8* %68)
  br label %72

70:                                               ; preds = %62
  %71 = load i8*, i8** %7, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i8* [ %69, %67 ], [ %71, %70 ]
  %74 = load %struct.string_list*, %struct.string_list** %6, align 8
  %75 = getelementptr inbounds %struct.string_list, %struct.string_list* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i8* %73, i8** %80, align 8
  %81 = load %struct.string_list*, %struct.string_list** %6, align 8
  %82 = getelementptr inbounds %struct.string_list, %struct.string_list* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = load %struct.string_list*, %struct.string_list** %6, align 8
  %89 = getelementptr inbounds %struct.string_list, %struct.string_list* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %72, %22
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @get_entry_index(%struct.string_list*, i8*, i32*) #1

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @MOVE_ARRAY(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
