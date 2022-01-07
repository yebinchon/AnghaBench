; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_mempack.c_git_mempack_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_mempack.c_git_mempack_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_packer_db = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32*, i32 }

@GIT_ODB_BACKEND_VERSION = common dso_local global i32 0, align 4
@impl__read = common dso_local global i32 0, align 4
@impl__write = common dso_local global i32 0, align 4
@impl__read_header = common dso_local global i32 0, align 4
@impl__exists = common dso_local global i32 0, align 4
@impl__free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_mempack_new(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca %struct.memory_packer_db*, align 8
  store i32** %0, i32*** %3, align 8
  %5 = load i32**, i32*** %3, align 8
  %6 = call i32 @assert(i32** %5)
  %7 = call %struct.memory_packer_db* @git__calloc(i32 1, i32 56)
  store %struct.memory_packer_db* %7, %struct.memory_packer_db** %4, align 8
  %8 = load %struct.memory_packer_db*, %struct.memory_packer_db** %4, align 8
  %9 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.memory_packer_db* %8)
  %10 = load %struct.memory_packer_db*, %struct.memory_packer_db** %4, align 8
  %11 = getelementptr inbounds %struct.memory_packer_db, %struct.memory_packer_db* %10, i32 0, i32 1
  %12 = call i64 @git_oidmap_new(i32* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load i32, i32* @GIT_ODB_BACKEND_VERSION, align 4
  %17 = load %struct.memory_packer_db*, %struct.memory_packer_db** %4, align 8
  %18 = getelementptr inbounds %struct.memory_packer_db, %struct.memory_packer_db* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  store i32 %16, i32* %19, align 8
  %20 = load %struct.memory_packer_db*, %struct.memory_packer_db** %4, align 8
  %21 = getelementptr inbounds %struct.memory_packer_db, %struct.memory_packer_db* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i32* @impl__read, i32** %22, align 8
  %23 = load %struct.memory_packer_db*, %struct.memory_packer_db** %4, align 8
  %24 = getelementptr inbounds %struct.memory_packer_db, %struct.memory_packer_db* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32* @impl__write, i32** %25, align 8
  %26 = load %struct.memory_packer_db*, %struct.memory_packer_db** %4, align 8
  %27 = getelementptr inbounds %struct.memory_packer_db, %struct.memory_packer_db* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32* @impl__read_header, i32** %28, align 8
  %29 = load %struct.memory_packer_db*, %struct.memory_packer_db** %4, align 8
  %30 = getelementptr inbounds %struct.memory_packer_db, %struct.memory_packer_db* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32* @impl__exists, i32** %31, align 8
  %32 = load %struct.memory_packer_db*, %struct.memory_packer_db** %4, align 8
  %33 = getelementptr inbounds %struct.memory_packer_db, %struct.memory_packer_db* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* @impl__free, i32** %34, align 8
  %35 = load %struct.memory_packer_db*, %struct.memory_packer_db** %4, align 8
  %36 = bitcast %struct.memory_packer_db* %35 to i32*
  %37 = load i32**, i32*** %3, align 8
  store i32* %36, i32** %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %15, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @assert(i32**) #1

declare dso_local %struct.memory_packer_db* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.memory_packer_db*) #1

declare dso_local i64 @git_oidmap_new(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
