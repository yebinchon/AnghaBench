; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_indexer.c_append_to_pack.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_indexer.c_append_to_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot extend packfile '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64)* @append_to_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_to_pack(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %12, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

30:                                               ; preds = %3
  %31 = call i32 @git__mmap_alignment(i64* %9)
  store i32 %31, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %4, align 4
  br label %82

35:                                               ; preds = %30
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %36, %37
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = urem i64 %39, %40
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = sub i64 %42, %43
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %46, %47
  %49 = sub i64 %48, 1
  %50 = load i32, i32* @SEEK_SET, align 4
  %51 = call i64 @p_lseek(i32 %45, i64 %49, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %35
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i64 @p_write(i32 %59, i8* %60, i32 1)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %53, %35
  %64 = load i32, i32* @GIT_ERROR_OS, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @git_error_set(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 -1, i32* %4, align 4
  br label %82

71:                                               ; preds = %53
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @write_at(%struct.TYPE_8__* %72, i8* %73, i64 %79, i64 %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %71, %63, %33, %29
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @git__mmap_alignment(i64*) #1

declare dso_local i64 @p_lseek(i32, i64, i32) #1

declare dso_local i64 @p_write(i32, i8*, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

declare dso_local i32 @write_at(%struct.TYPE_8__*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
