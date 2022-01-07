; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_repo_has_object_file_with_flags.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_repo_has_object_file_with_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@startup_info = common dso_local global %struct.TYPE_2__* null, align 8
@OBJECT_INFO_SKIP_CACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_has_object_file_with_flags(%struct.repository* %0, %struct.object_id* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

13:                                               ; preds = %3
  %14 = load %struct.repository*, %struct.repository** %5, align 8
  %15 = load %struct.object_id*, %struct.object_id** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @OBJECT_INFO_SKIP_CACHED, align 4
  %18 = or i32 %16, %17
  %19 = call i64 @oid_object_info_extended(%struct.repository* %14, %struct.object_id* %15, i32* null, i32 %18)
  %20 = icmp sge i64 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %13, %12
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i64 @oid_object_info_extended(%struct.repository*, %struct.object_id*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
