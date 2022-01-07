; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.rerere_id = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [10 x i8] c"thisimage\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"postimage\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed utime() on '%s'\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"could not open '%s'\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"could not write '%s'\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"writing '%s' failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.rerere_id*, i8*)* @merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge(%struct.index_state* %0, %struct.rerere_id* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.rerere_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store %struct.rerere_id* %1, %struct.rerere_id** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = bitcast %struct.TYPE_6__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = bitcast %struct.TYPE_7__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load %struct.index_state*, %struct.index_state** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.rerere_id*, %struct.rerere_id** %6, align 8
  %17 = call i32 @rerere_path(%struct.rerere_id* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = call i64 @handle_file(%struct.index_state* %14, i8* %15, i32* null, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.rerere_id*, %struct.rerere_id** %6, align 8
  %22 = call i32 @rerere_path(%struct.rerere_id* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %23 = call i64 @read_mmfile(%struct.TYPE_6__* %10, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %3
  store i32 1, i32* %9, align 4
  br label %74

26:                                               ; preds = %20
  %27 = load %struct.index_state*, %struct.index_state** %5, align 8
  %28 = load %struct.rerere_id*, %struct.rerere_id** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @try_merge(%struct.index_state* %27, %struct.rerere_id* %28, i8* %29, %struct.TYPE_6__* %10, %struct.TYPE_7__* %11)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %74

34:                                               ; preds = %26
  %35 = load %struct.rerere_id*, %struct.rerere_id** %6, align 8
  %36 = call i32 @rerere_path(%struct.rerere_id* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i64 @utime(i32 %36, i32* null)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.rerere_id*, %struct.rerere_id** %6, align 8
  %42 = call i32 @rerere_path(%struct.rerere_id* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @warning_errno(i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i8*, i8** %7, align 8
  %46 = call i32* @fopen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @error_errno(i32 %50, i8* %51)
  store i32 %52, i32* %4, align 4
  br label %82

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @fwrite(i32 %55, i32 %57, i32 1, i32* %58)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @error_errno(i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i32*, i32** %8, align 8
  %67 = call i64 @fclose(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @error_errno(i32 %70, i8* %71)
  store i32 %72, i32* %4, align 4
  br label %82

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %33, %25
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @free(i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @free(i32 %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %74, %69, %49
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @handle_file(%struct.index_state*, i8*, i32*, i32) #2

declare dso_local i32 @rerere_path(%struct.rerere_id*, i8*) #2

declare dso_local i64 @read_mmfile(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @try_merge(%struct.index_state*, %struct.rerere_id*, i8*, %struct.TYPE_6__*, %struct.TYPE_7__*) #2

declare dso_local i64 @utime(i32, i32*) #2

declare dso_local i32 @warning_errno(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @error_errno(i32, i8*) #2

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #2

declare dso_local i64 @fclose(i32*) #2

declare dso_local i32 @free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
