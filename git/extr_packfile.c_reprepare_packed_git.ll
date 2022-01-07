; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_reprepare_packed_git.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_reprepare_packed_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, %struct.object_directory* }
%struct.object_directory = type { %struct.object_directory* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reprepare_packed_git(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  %3 = alloca %struct.object_directory*, align 8
  store %struct.repository* %0, %struct.repository** %2, align 8
  %4 = load %struct.repository*, %struct.repository** %2, align 8
  %5 = getelementptr inbounds %struct.repository, %struct.repository* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load %struct.object_directory*, %struct.object_directory** %7, align 8
  store %struct.object_directory* %8, %struct.object_directory** %3, align 8
  br label %9

9:                                                ; preds = %15, %1
  %10 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %11 = icmp ne %struct.object_directory* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %14 = call i32 @odb_clear_loose_cache(%struct.object_directory* %13)
  br label %15

15:                                               ; preds = %12
  %16 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %17 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %16, i32 0, i32 0
  %18 = load %struct.object_directory*, %struct.object_directory** %17, align 8
  store %struct.object_directory* %18, %struct.object_directory** %3, align 8
  br label %9

19:                                               ; preds = %9
  %20 = load %struct.repository*, %struct.repository** %2, align 8
  %21 = getelementptr inbounds %struct.repository, %struct.repository* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.repository*, %struct.repository** %2, align 8
  %25 = getelementptr inbounds %struct.repository, %struct.repository* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.repository*, %struct.repository** %2, align 8
  %29 = call i32 @prepare_packed_git(%struct.repository* %28)
  ret void
}

declare dso_local i32 @odb_clear_loose_cache(%struct.object_directory*) #1

declare dso_local i32 @prepare_packed_git(%struct.repository*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
