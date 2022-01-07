; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_list_objects_filter_die_if_populated.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_list_objects_filter_die_if_populated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_objects_filter_options = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"multiple filter-specs cannot be combined\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_objects_filter_die_if_populated(%struct.list_objects_filter_options* %0) #0 {
  %2 = alloca %struct.list_objects_filter_options*, align 8
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %2, align 8
  %3 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %4 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @die(i32 %8)
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
