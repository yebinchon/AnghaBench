; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_pack_index_free.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_pack_index_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_file = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_pack_file*)* @pack_index_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pack_index_free(%struct.git_pack_file* %0) #0 {
  %2 = alloca %struct.git_pack_file*, align 8
  store %struct.git_pack_file* %0, %struct.git_pack_file** %2, align 8
  %3 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %4 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %9 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @git__free(i32* %10)
  %12 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %13 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %16 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %22 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %21, i32 0, i32 0
  %23 = call i32 @git_futils_mmap_free(%struct.TYPE_2__* %22)
  %24 = load %struct.git_pack_file*, %struct.git_pack_file** %2, align 8
  %25 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %20, %14
  ret void
}

declare dso_local i32 @git__free(i32*) #1

declare dso_local i32 @git_futils_mmap_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
