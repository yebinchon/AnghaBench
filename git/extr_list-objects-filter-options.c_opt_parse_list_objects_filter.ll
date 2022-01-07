; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_opt_parse_list_objects_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_opt_parse_list_objects_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.list_objects_filter_options* }
%struct.list_objects_filter_options = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opt_parse_list_objects_filter(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_objects_filter_options*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.option*, %struct.option** %4, align 8
  %9 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 0
  %10 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %9, align 8
  store %struct.list_objects_filter_options* %10, %struct.list_objects_filter_options** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %7, align 8
  %18 = call i32 @list_objects_filter_set_no_filter(%struct.list_objects_filter_options* %17)
  br label %23

19:                                               ; preds = %13
  %20 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @parse_list_objects_filter(%struct.list_objects_filter_options* %20, i8* %21)
  br label %23

23:                                               ; preds = %19, %16
  ret i32 0
}

declare dso_local i32 @list_objects_filter_set_no_filter(%struct.list_objects_filter_options*) #1

declare dso_local i32 @parse_list_objects_filter(%struct.list_objects_filter_options*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
