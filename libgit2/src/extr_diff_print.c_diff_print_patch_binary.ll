; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_diff_print_patch_binary.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_diff_print_patch_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32 (i32*, i32*, %struct.TYPE_5__*, i32)*, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@DIFF_OLD_PREFIX_DEFAULT = common dso_local global i8* null, align 8
@DIFF_NEW_PREFIX_DEFAULT = common dso_local global i8* null, align 8
@GIT_DIFF_LINE_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @diff_print_patch_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_print_patch_binary(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  br label %24

22:                                               ; preds = %3
  %23 = load i8*, i8** @DIFF_OLD_PREFIX_DEFAULT, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i8* [ %21, %18 ], [ %23, %22 ]
  store i8* %25, i8** %9, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  br label %36

34:                                               ; preds = %24
  %35 = load i8*, i8** @DIFF_NEW_PREFIX_DEFAULT, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i8* [ %33, %30 ], [ %35, %34 ]
  store i8* %37, i8** %10, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @git_buf_clear(i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @diff_print_patch_file_binary(%struct.TYPE_4__* %42, i32* %43, i8* %44, i8* %45, i32* %46)
  store i32 %47, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %80

51:                                               ; preds = %36
  %52 = load i32, i32* @GIT_DIFF_LINE_BINARY, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @git_buf_cstr(i32 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @git_buf_len(i32 %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32 (i32*, i32*, %struct.TYPE_5__*, i32)*, i32 (i32*, i32*, %struct.TYPE_5__*, i32)** %71, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %72(i32* %73, i32* null, %struct.TYPE_5__* %75, i32 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %51, %49
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @git_buf_clear(i32) #1

declare dso_local i32 @diff_print_patch_file_binary(%struct.TYPE_4__*, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @git_buf_cstr(i32) #1

declare dso_local i32 @git_buf_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
