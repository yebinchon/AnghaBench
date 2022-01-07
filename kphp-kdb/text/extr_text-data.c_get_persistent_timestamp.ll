; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_persistent_timestamp.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_persistent_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.file_user_list_entry_search_history = type { i32 }

@persistent_history_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_persistent_timestamp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.file_user_list_entry_search_history*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @persistent_history_enabled, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @conv_uid(i32 %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store i32 -1, i32* %2, align 4
  br label %51

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.TYPE_5__* @get_user(i32 %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @lookup_user_directory(i32 %19)
  %21 = inttoptr i64 %20 to %struct.file_user_list_entry_search_history*
  store %struct.file_user_list_entry_search_history* %21, %struct.file_user_list_entry_search_history** %5, align 8
  %22 = load %struct.file_user_list_entry_search_history*, %struct.file_user_list_entry_search_history** %5, align 8
  %23 = icmp ne %struct.file_user_list_entry_search_history* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.file_user_list_entry_search_history*, %struct.file_user_list_entry_search_history** %5, align 8
  %26 = getelementptr inbounds %struct.file_user_list_entry_search_history, %struct.file_user_list_entry_search_history* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  br label %30

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i32 [ %28, %24 ], [ 1, %29 ]
  store i32 %31, i32* %2, align 4
  br label %51

32:                                               ; preds = %13
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  br label %48

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %41
  %49 = phi i32 [ %46, %41 ], [ 0, %47 ]
  %50 = add nsw i32 %36, %49
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %30, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local %struct.TYPE_5__* @get_user(i32) #1

declare dso_local i64 @lookup_user_directory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
