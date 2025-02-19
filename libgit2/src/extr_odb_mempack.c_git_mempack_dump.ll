; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_mempack.c_git_mempack_dump.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_mempack.c_git_mempack_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_packer_db = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.memobject** }
%struct.memobject = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_mempack_dump(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.memory_packer_db*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.memobject*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to %struct.memory_packer_db*
  store %struct.memory_packer_db* %14, %struct.memory_packer_db** %8, align 8
  store i32 -1, i32* %11, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @git_packbuilder_new(i32** %9, i32* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.memory_packer_db*, %struct.memory_packer_db** %8, align 8
  %23 = getelementptr inbounds %struct.memory_packer_db, %struct.memory_packer_db* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %21, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %20
  %28 = load %struct.memory_packer_db*, %struct.memory_packer_db** %8, align 8
  %29 = getelementptr inbounds %struct.memory_packer_db, %struct.memory_packer_db* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.memobject**, %struct.memobject*** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.memobject*, %struct.memobject** %31, i64 %32
  %34 = load %struct.memobject*, %struct.memobject** %33, align 8
  store %struct.memobject* %34, %struct.memobject** %12, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.memobject*, %struct.memobject** %12, align 8
  %37 = getelementptr inbounds %struct.memobject, %struct.memobject* %36, i32 0, i32 0
  %38 = call i32 @git_packbuilder_insert_commit(i32* %35, i32* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %50

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %20

46:                                               ; preds = %20
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @git_packbuilder_write_buf(i32* %47, i32* %48)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @git_packbuilder_free(i32* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %18
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @git_packbuilder_new(i32**, i32*) #1

declare dso_local i32 @git_packbuilder_insert_commit(i32*, i32*) #1

declare dso_local i32 @git_packbuilder_write_buf(i32*, i32*) #1

declare dso_local i32 @git_packbuilder_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
