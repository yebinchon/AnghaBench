; ModuleID = '/home/carl/AnghaBench/git/extr_entry.c_remove_available_paths.c'
source_filename = "/home/carl/AnghaBench/git/extr_entry.c_remove_available_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { i64, i8* }
%struct.string_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list_item*, i8*)* @remove_available_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_available_paths(%struct.string_list_item* %0, i8* %1) #0 {
  %3 = alloca %struct.string_list_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca %struct.string_list_item*, align 8
  store %struct.string_list_item* %0, %struct.string_list_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.string_list*
  store %struct.string_list* %8, %struct.string_list** %5, align 8
  %9 = load %struct.string_list*, %struct.string_list** %5, align 8
  %10 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %11 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call %struct.string_list_item* @string_list_lookup(%struct.string_list* %9, i64 %12)
  store %struct.string_list_item* %13, %struct.string_list_item** %6, align 8
  %14 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %15 = icmp ne %struct.string_list_item* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %18 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %22 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %25 = icmp ne %struct.string_list_item* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local %struct.string_list_item* @string_list_lookup(%struct.string_list*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
