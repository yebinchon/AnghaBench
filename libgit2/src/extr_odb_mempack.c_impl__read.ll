; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_mempack.c_impl__read.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_mempack.c_impl__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_packer_db = type { i32 }
%struct.memobject = type { i64, i32, i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i32*, i32*, i32*)* @impl__read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @impl__read(i8** %0, i64* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.memory_packer_db*, align 8
  %13 = alloca %struct.memobject*, align 8
  store i8** %0, i8*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = bitcast i32* %14 to %struct.memory_packer_db*
  store %struct.memory_packer_db* %15, %struct.memory_packer_db** %12, align 8
  %16 = load %struct.memory_packer_db*, %struct.memory_packer_db** %12, align 8
  %17 = getelementptr inbounds %struct.memory_packer_db, %struct.memory_packer_db* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = call %struct.memobject* @git_oidmap_get(i32 %18, i32* %19)
  store %struct.memobject* %20, %struct.memobject** %13, align 8
  %21 = icmp eq %struct.memobject* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %23, i32* %6, align 4
  br label %50

24:                                               ; preds = %5
  %25 = load %struct.memobject*, %struct.memobject** %13, align 8
  %26 = getelementptr inbounds %struct.memobject, %struct.memobject* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %8, align 8
  store i64 %27, i64* %28, align 8
  %29 = load %struct.memobject*, %struct.memobject** %13, align 8
  %30 = getelementptr inbounds %struct.memobject, %struct.memobject* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.memobject*, %struct.memobject** %13, align 8
  %34 = getelementptr inbounds %struct.memobject, %struct.memobject* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @git__malloc(i64 %35)
  %37 = load i8**, i8*** %7, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %39)
  %41 = load i8**, i8*** %7, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.memobject*, %struct.memobject** %13, align 8
  %44 = getelementptr inbounds %struct.memobject, %struct.memobject* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.memobject*, %struct.memobject** %13, align 8
  %47 = getelementptr inbounds %struct.memobject, %struct.memobject* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @memcpy(i8* %42, i32 %45, i64 %48)
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %24, %22
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.memobject* @git_oidmap_get(i32, i32*) #1

declare dso_local i8* @git__malloc(i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
