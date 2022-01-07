; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_read_index_extension.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_read_index_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"index uses %.4s extension, which we do not understand\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ignoring %.4s extension\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, i8*, i64)* @read_index_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_index_extension(%struct.index_state* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @CACHE_EXT(i8* %10)
  switch i32 %11, label %44 [
    i32 129, label %12
    i32 130, label %18
    i32 131, label %24
    i32 128, label %32
    i32 133, label %38
    i32 134, label %43
    i32 132, label %43
  ]

12:                                               ; preds = %4
  %13 = load i8*, i8** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @cache_tree_read(i8* %13, i64 %14)
  %16 = load %struct.index_state*, %struct.index_state** %6, align 8
  %17 = getelementptr inbounds %struct.index_state, %struct.index_state* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  br label %63

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @resolve_undo_read(i8* %19, i64 %20)
  %22 = load %struct.index_state*, %struct.index_state** %6, align 8
  %23 = getelementptr inbounds %struct.index_state, %struct.index_state* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %63

24:                                               ; preds = %4
  %25 = load %struct.index_state*, %struct.index_state** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @read_link_extension(%struct.index_state* %25, i8* %26, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %64

31:                                               ; preds = %24
  br label %63

32:                                               ; preds = %4
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @read_untracked_extension(i8* %33, i64 %34)
  %36 = load %struct.index_state*, %struct.index_state** %6, align 8
  %37 = getelementptr inbounds %struct.index_state, %struct.index_state* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %63

38:                                               ; preds = %4
  %39 = load %struct.index_state*, %struct.index_state** %6, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @read_fsmonitor_extension(%struct.index_state* %39, i8* %40, i64 %41)
  br label %63

43:                                               ; preds = %4, %4
  br label %63

44:                                               ; preds = %4
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp slt i32 %47, 65
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp slt i32 90, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %44
  %55 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @error(i32 %55, i8* %56)
  store i32 %57, i32* %5, align 4
  br label %64

58:                                               ; preds = %49
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @fprintf_ln(i32 %59, i32 %60, i8* %61)
  br label %63

63:                                               ; preds = %58, %43, %38, %32, %31, %18, %12
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %54, %30
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @CACHE_EXT(i8*) #1

declare dso_local i32 @cache_tree_read(i8*, i64) #1

declare dso_local i32 @resolve_undo_read(i8*, i64) #1

declare dso_local i32 @read_link_extension(%struct.index_state*, i8*, i64) #1

declare dso_local i32 @read_untracked_extension(i8*, i64) #1

declare dso_local i32 @read_fsmonitor_extension(%struct.index_state*, i8*, i64) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @fprintf_ln(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
