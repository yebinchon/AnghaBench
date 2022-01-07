; ModuleID = '/home/carl/AnghaBench/git/extr_diff-lib.c_index_differs_from.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-lib.c_index_differs_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.diff_flags = type { i32 }
%struct.rev_info = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.setup_revision_opt = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @index_differs_from(%struct.repository* %0, i8* %1, %struct.diff_flags* %2, i32 %3) #0 {
  %5 = alloca %struct.repository*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.diff_flags*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rev_info, align 8
  %10 = alloca %struct.setup_revision_opt, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.diff_flags* %2, %struct.diff_flags** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.repository*, %struct.repository** %5, align 8
  %12 = call i32 @repo_init_revisions(%struct.repository* %11, %struct.rev_info* %9, i32* null)
  %13 = call i32 @memset(%struct.setup_revision_opt* %10, i32 0, i32 8)
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %10, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = call i32 @setup_revisions(i32 0, i32* null, %struct.rev_info* %9, %struct.setup_revision_opt* %10)
  %17 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.diff_flags*, %struct.diff_flags** %7, align 8
  %24 = icmp ne %struct.diff_flags* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.diff_flags*, %struct.diff_flags** %7, align 8
  %29 = call i32 @diff_flags_or(%struct.TYPE_4__* %27, %struct.diff_flags* %28)
  br label %30

30:                                               ; preds = %25, %4
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = call i32 @run_diff_index(%struct.rev_info* %9, i32 1)
  %35 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 1
  %36 = call i32 @object_array_clear(i32* %35)
  %37 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local i32 @repo_init_revisions(%struct.repository*, %struct.rev_info*, i32*) #1

declare dso_local i32 @memset(%struct.setup_revision_opt*, i32, i32) #1

declare dso_local i32 @setup_revisions(i32, i32*, %struct.rev_info*, %struct.setup_revision_opt*) #1

declare dso_local i32 @diff_flags_or(%struct.TYPE_4__*, %struct.diff_flags*) #1

declare dso_local i32 @run_diff_index(%struct.rev_info*, i32) #1

declare dso_local i32 @object_array_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
