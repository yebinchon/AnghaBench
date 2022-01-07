; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_reuc_entry_alloc.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_reuc_entry_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reuc_entry_internal = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @reuc_entry_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @reuc_entry_alloc(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.reuc_entry_internal*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %4, align 8
  store i64 16, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i64 @GIT_ADD_SIZET_OVERFLOW(i64* %6, i64 %10, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @GIT_ADD_SIZET_OVERFLOW(i64* %6, i64 %16, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %1
  store i32* null, i32** %2, align 8
  br label %44

20:                                               ; preds = %15
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.reuc_entry_internal* @git__calloc(i32 1, i64 %21)
  store %struct.reuc_entry_internal* %22, %struct.reuc_entry_internal** %7, align 8
  %23 = load %struct.reuc_entry_internal*, %struct.reuc_entry_internal** %7, align 8
  %24 = icmp ne %struct.reuc_entry_internal* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32* null, i32** %2, align 8
  br label %44

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.reuc_entry_internal*, %struct.reuc_entry_internal** %7, align 8
  %29 = getelementptr inbounds %struct.reuc_entry_internal, %struct.reuc_entry_internal* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.reuc_entry_internal*, %struct.reuc_entry_internal** %7, align 8
  %31 = getelementptr inbounds %struct.reuc_entry_internal, %struct.reuc_entry_internal* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @memcpy(i32 %32, i8* %33, i64 %34)
  %36 = load %struct.reuc_entry_internal*, %struct.reuc_entry_internal** %7, align 8
  %37 = getelementptr inbounds %struct.reuc_entry_internal, %struct.reuc_entry_internal* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.reuc_entry_internal*, %struct.reuc_entry_internal** %7, align 8
  %40 = getelementptr inbounds %struct.reuc_entry_internal, %struct.reuc_entry_internal* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.reuc_entry_internal*, %struct.reuc_entry_internal** %7, align 8
  %43 = bitcast %struct.reuc_entry_internal* %42 to i32*
  store i32* %43, i32** %2, align 8
  br label %44

44:                                               ; preds = %26, %25, %19
  %45 = load i32*, i32** %2, align 8
  ret i32* %45
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @GIT_ADD_SIZET_OVERFLOW(i64*, i64, i32) #1

declare dso_local %struct.reuc_entry_internal* @git__calloc(i32, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
