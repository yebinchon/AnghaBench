; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_mempack.c_impl__read_header.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_mempack.c_impl__read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_packer_db = type { i32 }
%struct.memobject = type { i64, i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*, i32*, i32*)* @impl__read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @impl__read_header(i64* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.memory_packer_db*, align 8
  %11 = alloca %struct.memobject*, align 8
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = bitcast i32* %12 to %struct.memory_packer_db*
  store %struct.memory_packer_db* %13, %struct.memory_packer_db** %10, align 8
  %14 = load %struct.memory_packer_db*, %struct.memory_packer_db** %10, align 8
  %15 = getelementptr inbounds %struct.memory_packer_db, %struct.memory_packer_db* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call %struct.memobject* @git_oidmap_get(i32 %16, i32* %17)
  store %struct.memobject* %18, %struct.memobject** %11, align 8
  %19 = icmp eq %struct.memobject* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %21, i32* %5, align 4
  br label %31

22:                                               ; preds = %4
  %23 = load %struct.memobject*, %struct.memobject** %11, align 8
  %24 = getelementptr inbounds %struct.memobject, %struct.memobject* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %6, align 8
  store i64 %25, i64* %26, align 8
  %27 = load %struct.memobject*, %struct.memobject** %11, align 8
  %28 = getelementptr inbounds %struct.memobject, %struct.memobject* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %22, %20
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.memobject* @git_oidmap_get(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
