; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_rerere_clear.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_rerere_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rerere_id* }
%struct.rerere_id = type { i32 }

@write_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rerere_clear(%struct.repository* %0, %struct.string_list* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rerere_id*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  %7 = load %struct.repository*, %struct.repository** %3, align 8
  %8 = load %struct.string_list*, %struct.string_list** %4, align 8
  %9 = call i64 @setup_rerere(%struct.repository* %7, %struct.string_list* %8, i32 0)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %46

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %38, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.string_list*, %struct.string_list** %4, align 8
  %16 = getelementptr inbounds %struct.string_list, %struct.string_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.string_list*, %struct.string_list** %4, align 8
  %21 = getelementptr inbounds %struct.string_list, %struct.string_list* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.rerere_id*, %struct.rerere_id** %26, align 8
  store %struct.rerere_id* %27, %struct.rerere_id** %6, align 8
  %28 = load %struct.rerere_id*, %struct.rerere_id** %6, align 8
  %29 = call i32 @has_rerere_resolution(%struct.rerere_id* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %19
  %32 = load %struct.rerere_id*, %struct.rerere_id** %6, align 8
  %33 = call i32 @unlink_rr_item(%struct.rerere_id* %32)
  %34 = load %struct.rerere_id*, %struct.rerere_id** %6, align 8
  %35 = call i32 @rerere_path(%struct.rerere_id* %34, i32* null)
  %36 = call i32 @rmdir(i32 %35)
  br label %37

37:                                               ; preds = %31, %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load %struct.repository*, %struct.repository** %3, align 8
  %43 = call i32 @git_path_merge_rr(%struct.repository* %42)
  %44 = call i32 @unlink_or_warn(i32 %43)
  %45 = call i32 @rollback_lock_file(i32* @write_lock)
  br label %46

46:                                               ; preds = %41, %11
  ret void
}

declare dso_local i64 @setup_rerere(%struct.repository*, %struct.string_list*, i32) #1

declare dso_local i32 @has_rerere_resolution(%struct.rerere_id*) #1

declare dso_local i32 @unlink_rr_item(%struct.rerere_id*) #1

declare dso_local i32 @rmdir(i32) #1

declare dso_local i32 @rerere_path(%struct.rerere_id*, i32*) #1

declare dso_local i32 @unlink_or_warn(i32) #1

declare dso_local i32 @git_path_merge_rr(%struct.repository*) #1

declare dso_local i32 @rollback_lock_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
