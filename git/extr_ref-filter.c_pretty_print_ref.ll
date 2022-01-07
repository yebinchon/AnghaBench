; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_pretty_print_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_pretty_print_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.ref_format = type { i32 }
%struct.ref_array_item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pretty_print_ref(i8* %0, %struct.object_id* %1, %struct.ref_format* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.ref_format*, align 8
  %7 = alloca %struct.ref_array_item*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store %struct.ref_format* %2, %struct.ref_format** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.object_id*, %struct.object_id** %5, align 8
  %10 = call %struct.ref_array_item* @new_ref_array_item(i8* %8, %struct.object_id* %9)
  store %struct.ref_array_item* %10, %struct.ref_array_item** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @ref_kind_from_refname(i8* %11)
  %13 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  %14 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  %16 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %17 = call i32 @show_ref_array_item(%struct.ref_array_item* %15, %struct.ref_format* %16)
  %18 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  %19 = call i32 @free_array_item(%struct.ref_array_item* %18)
  ret void
}

declare dso_local %struct.ref_array_item* @new_ref_array_item(i8*, %struct.object_id*) #1

declare dso_local i32 @ref_kind_from_refname(i8*) #1

declare dso_local i32 @show_ref_array_item(%struct.ref_array_item*, %struct.ref_format*) #1

declare dso_local i32 @free_array_item(%struct.ref_array_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
