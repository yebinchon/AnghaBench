; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_backend__alloc.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_backend__alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_backend = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@packfile_sort__cb = common dso_local global i32 0, align 4
@GIT_ODB_BACKEND_VERSION = common dso_local global i32 0, align 4
@pack_backend__read = common dso_local global i32 0, align 4
@pack_backend__read_prefix = common dso_local global i32 0, align 4
@pack_backend__read_header = common dso_local global i32 0, align 4
@pack_backend__exists = common dso_local global i32 0, align 4
@pack_backend__exists_prefix = common dso_local global i32 0, align 4
@pack_backend__refresh = common dso_local global i32 0, align 4
@pack_backend__foreach = common dso_local global i32 0, align 4
@pack_backend__writepack = common dso_local global i32 0, align 4
@pack_backend__freshen = common dso_local global i32 0, align 4
@pack_backend__free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pack_backend**, i64)* @pack_backend__alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_backend__alloc(%struct.pack_backend** %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pack_backend**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pack_backend*, align 8
  store %struct.pack_backend** %0, %struct.pack_backend*** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call %struct.pack_backend* @git__calloc(i32 1, i32 96)
  store %struct.pack_backend* %7, %struct.pack_backend** %6, align 8
  %8 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %9 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.pack_backend* %8)
  %10 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %11 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %10, i32 0, i32 1
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* @packfile_sort__cb, align 4
  %14 = call i64 @git_vector_init(i32* %11, i64 %12, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %18 = call i32 @git__free(%struct.pack_backend* %17)
  store i32 -1, i32* %3, align 4
  br label %56

19:                                               ; preds = %2
  %20 = load i32, i32* @GIT_ODB_BACKEND_VERSION, align 4
  %21 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %22 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 10
  store i32 %20, i32* %23, align 8
  %24 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %25 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 9
  store i32* @pack_backend__read, i32** %26, align 8
  %27 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %28 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 8
  store i32* @pack_backend__read_prefix, i32** %29, align 8
  %30 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %31 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 7
  store i32* @pack_backend__read_header, i32** %32, align 8
  %33 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %34 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  store i32* @pack_backend__exists, i32** %35, align 8
  %36 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %37 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  store i32* @pack_backend__exists_prefix, i32** %38, align 8
  %39 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %40 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  store i32* @pack_backend__refresh, i32** %41, align 8
  %42 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %43 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32* @pack_backend__foreach, i32** %44, align 8
  %45 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %46 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i32* @pack_backend__writepack, i32** %47, align 8
  %48 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %49 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32* @pack_backend__freshen, i32** %50, align 8
  %51 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %52 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32* @pack_backend__free, i32** %53, align 8
  %54 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %55 = load %struct.pack_backend**, %struct.pack_backend*** %4, align 8
  store %struct.pack_backend* %54, %struct.pack_backend** %55, align 8
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %19, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.pack_backend* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.pack_backend*) #1

declare dso_local i64 @git_vector_init(i32*, i64, i32) #1

declare dso_local i32 @git__free(%struct.pack_backend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
