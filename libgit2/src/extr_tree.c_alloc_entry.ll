; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree.c_alloc_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree.c_alloc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i8* }

@GIT_OID_RAWSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*, i64, i32*)* @alloc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @alloc_entry(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @TREE_ENTRY_CHECK_NAMELEN(i64 %12)
  %14 = load i64, i64* %6, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i64 @GIT_ADD_SIZET_OVERFLOW(i64* %9, i64 24, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @GIT_ADD_SIZET_OVERFLOW(i64* %9, i64 %19, i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @GIT_OID_RAWSZ, align 4
  %25 = call i64 @GIT_ADD_SIZET_OVERFLOW(i64* %9, i64 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %18, %3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %59

28:                                               ; preds = %22
  %29 = load i64, i64* %9, align 8
  %30 = call %struct.TYPE_4__* @git__calloc(i32 1, i64 %29)
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %8, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %59

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = bitcast %struct.TYPE_4__* %35 to i8*
  %37 = getelementptr inbounds i8, i8* %36, i64 24
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @memcpy(i8* %38, i8* %39, i64 %40)
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @git_oid_cpy(i8* %49, i32* %50)
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %4, align 8
  br label %59

59:                                               ; preds = %34, %33, %27
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %60
}

declare dso_local i32 @TREE_ENTRY_CHECK_NAMELEN(i64) #1

declare dso_local i64 @GIT_ADD_SIZET_OVERFLOW(i64*, i64, i32) #1

declare dso_local %struct.TYPE_4__* @git__calloc(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @git_oid_cpy(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
