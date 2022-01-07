; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_get_parameter.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_get_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_parameter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.string_list_item*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @get_parameters()
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.string_list_item* @string_list_lookup(i32 %4, i8* %5)
  store %struct.string_list_item* %6, %struct.string_list_item** %3, align 8
  %7 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %8 = icmp ne %struct.string_list_item* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %11 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i8* [ %12, %9 ], [ null, %13 ]
  ret i8* %15
}

declare dso_local %struct.string_list_item* @string_list_lookup(i32, i8*) #1

declare dso_local i32 @get_parameters(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
