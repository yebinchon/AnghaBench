; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_prepare_packed_git.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_prepare_packed_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.object_directory* }
%struct.object_directory = type { i32, %struct.object_directory* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*)* @prepare_packed_git to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_packed_git(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  %3 = alloca %struct.object_directory*, align 8
  %4 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %2, align 8
  %5 = load %struct.repository*, %struct.repository** %2, align 8
  %6 = getelementptr inbounds %struct.repository, %struct.repository* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.repository*, %struct.repository** %2, align 8
  %14 = call i32 @prepare_alt_odb(%struct.repository* %13)
  %15 = load %struct.repository*, %struct.repository** %2, align 8
  %16 = getelementptr inbounds %struct.repository, %struct.repository* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.object_directory*, %struct.object_directory** %18, align 8
  store %struct.object_directory* %19, %struct.object_directory** %3, align 8
  br label %20

20:                                               ; preds = %44, %12
  %21 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %22 = icmp ne %struct.object_directory* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %20
  %24 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %25 = load %struct.repository*, %struct.repository** %2, align 8
  %26 = getelementptr inbounds %struct.repository, %struct.repository* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.object_directory*, %struct.object_directory** %28, align 8
  %30 = icmp eq %struct.object_directory* %24, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load %struct.repository*, %struct.repository** %2, align 8
  %33 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %34 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @prepare_multi_pack_index_one(%struct.repository* %32, i32 %35, i32 %36)
  %38 = load %struct.repository*, %struct.repository** %2, align 8
  %39 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %40 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @prepare_packed_git_one(%struct.repository* %38, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %23
  %45 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %46 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %45, i32 0, i32 1
  %47 = load %struct.object_directory*, %struct.object_directory** %46, align 8
  store %struct.object_directory* %47, %struct.object_directory** %3, align 8
  br label %20

48:                                               ; preds = %20
  %49 = load %struct.repository*, %struct.repository** %2, align 8
  %50 = call i32 @rearrange_packed_git(%struct.repository* %49)
  %51 = load %struct.repository*, %struct.repository** %2, align 8
  %52 = call i32 @prepare_packed_git_mru(%struct.repository* %51)
  %53 = load %struct.repository*, %struct.repository** %2, align 8
  %54 = getelementptr inbounds %struct.repository, %struct.repository* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %48, %11
  ret void
}

declare dso_local i32 @prepare_alt_odb(%struct.repository*) #1

declare dso_local i32 @prepare_multi_pack_index_one(%struct.repository*, i32, i32) #1

declare dso_local i32 @prepare_packed_git_one(%struct.repository*, i32, i32) #1

declare dso_local i32 @rearrange_packed_git(%struct.repository*) #1

declare dso_local i32 @prepare_packed_git_mru(%struct.repository*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
