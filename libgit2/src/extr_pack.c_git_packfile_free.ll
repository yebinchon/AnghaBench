; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_git_packfile_free.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_git_packfile_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_file = type { %struct.TYPE_2__, i32, %struct.git_pack_file* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_packfile_free(%struct.git_pack_file* %0) #0 {
  %2 = alloca %struct.git_pack_file*, align 8
  store %struct.git_pack_file* %0, %struct.git_pack_file** %2, align 8
  %3 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %4 = icmp ne %struct.git_pack_file* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %8 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %7, i32 0, i32 0
  %9 = call i32 @cache_free(%struct.TYPE_2__* %8)
  %10 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %11 = call i32 @git_packfile_close(%struct.git_pack_file* %10, i32 0)
  %12 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %13 = call i32 @pack_index_free(%struct.git_pack_file* %12)
  %14 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %15 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %14, i32 0, i32 2
  %16 = load %struct.git_pack_file*, %struct.git_pack_file** %15, align 8
  %17 = call i32 @git__free(%struct.git_pack_file* %16)
  %18 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %19 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %18, i32 0, i32 1
  %20 = call i32 @git_mutex_free(i32* %19)
  %21 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %22 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @git_mutex_free(i32* %23)
  %25 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %26 = call i32 @git__free(%struct.git_pack_file* %25)
  br label %27

27:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @cache_free(%struct.TYPE_2__*) #1

declare dso_local i32 @git_packfile_close(%struct.git_pack_file*, i32) #1

declare dso_local i32 @pack_index_free(%struct.git_pack_file*) #1

declare dso_local i32 @git__free(%struct.git_pack_file*) #1

declare dso_local i32 @git_mutex_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
