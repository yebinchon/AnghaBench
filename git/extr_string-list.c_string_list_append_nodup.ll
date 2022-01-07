; ModuleID = '/home/carl/AnghaBench/git/extr_string-list.c_string_list_append_nodup.c'
source_filename = "/home/carl/AnghaBench/git/extr_string-list.c_string_list_append_nodup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { i8*, i32* }
%struct.string_list = type { i64, %struct.string_list_item*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list_item* @string_list_append_nodup(%struct.string_list* %0, i8* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_list_item*, align 8
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.string_list*, %struct.string_list** %3, align 8
  %7 = getelementptr inbounds %struct.string_list, %struct.string_list* %6, i32 0, i32 1
  %8 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %9 = load %struct.string_list*, %struct.string_list** %3, align 8
  %10 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = load %struct.string_list*, %struct.string_list** %3, align 8
  %14 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ALLOC_GROW(%struct.string_list_item* %8, i64 %12, i32 %15)
  %17 = load %struct.string_list*, %struct.string_list** %3, align 8
  %18 = getelementptr inbounds %struct.string_list, %struct.string_list* %17, i32 0, i32 1
  %19 = load %struct.string_list_item*, %struct.string_list_item** %18, align 8
  %20 = load %struct.string_list*, %struct.string_list** %3, align 8
  %21 = getelementptr inbounds %struct.string_list, %struct.string_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %19, i64 %22
  store %struct.string_list_item* %24, %struct.string_list_item** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %27 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %29 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  ret %struct.string_list_item* %30
}

declare dso_local i32 @ALLOC_GROW(%struct.string_list_item*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
