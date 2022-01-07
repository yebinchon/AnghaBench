; ModuleID = '/home/carl/AnghaBench/libgit2/tests/pack/extr_indexer.c_find_tmp_file_recurs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/pack/extr_indexer.c_find_tmp_file_recurs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"_git2_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*)* @find_tmp_file_recurs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_tmp_file_recurs(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @p_lstat_posixly(i32 %13, %struct.stat* %8)
  store i32 %14, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @S_ISDIR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @git_path_direach(%struct.TYPE_7__* %24, i32 0, i32 (i8*, %struct.TYPE_7__*)* @find_tmp_file_recurs, i8* %25)
  store i32 %26, i32* %3, align 4
  br label %38

27:                                               ; preds = %18
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = call i32 @git_buf_cstr(%struct.TYPE_7__* %28)
  %30 = call i32* @strstr(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = call i32 @git_buf_cstr(%struct.TYPE_7__* %34)
  %36 = call i32 @git_buf_sets(%struct.TYPE_7__* %33, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32, %23, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @p_lstat_posixly(i32, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @git_path_direach(%struct.TYPE_7__*, i32, i32 (i8*, %struct.TYPE_7__*)*, i8*) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i32 @git_buf_cstr(%struct.TYPE_7__*) #1

declare dso_local i32 @git_buf_sets(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
