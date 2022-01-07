; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects.c_traverse_commit_list_filtered.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects.c_traverse_commit_list_filtered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_objects_filter_options = type { i32 }
%struct.rev_info = type { i32 }
%struct.oidset = type { i32 }
%struct.traversal_context = type { i32, i8*, i32, i32, %struct.rev_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @traverse_commit_list_filtered(%struct.list_objects_filter_options* %0, %struct.rev_info* %1, i32 %2, i32 %3, i8* %4, %struct.oidset* %5) #0 {
  %7 = alloca %struct.list_objects_filter_options*, align 8
  %8 = alloca %struct.rev_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.oidset*, align 8
  %13 = alloca %struct.traversal_context, align 8
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %7, align 8
  store %struct.rev_info* %1, %struct.rev_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.oidset* %5, %struct.oidset** %12, align 8
  %14 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %15 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %13, i32 0, i32 4
  store %struct.rev_info* %14, %struct.rev_info** %15, align 8
  %16 = load i32, i32* %10, align 4
  %17 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %13, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %13, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %13, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load %struct.oidset*, %struct.oidset** %12, align 8
  %23 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %7, align 8
  %24 = call i32 @list_objects_filter__init(%struct.oidset* %22, %struct.list_objects_filter_options* %23)
  %25 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %13, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = call i32 @do_traverse(%struct.traversal_context* %13)
  %27 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %13, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @list_objects_filter__free(i32 %28)
  ret void
}

declare dso_local i32 @list_objects_filter__init(%struct.oidset*, %struct.list_objects_filter_options*) #1

declare dso_local i32 @do_traverse(%struct.traversal_context*) #1

declare dso_local i32 @list_objects_filter__free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
