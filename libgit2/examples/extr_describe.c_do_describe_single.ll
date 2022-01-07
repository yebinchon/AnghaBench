; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_describe.c_do_describe_single.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_describe.c_do_describe_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Failed to lookup rev\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to describe rev\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to describe workdir\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to format describe rev\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i8*)* @do_describe_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_describe_single(i32* %0, %struct.TYPE_6__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @git_revparse_single(i32** %7, i32* %14, i8* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @check_lg2(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = call i32 @git_describe_commit(i32** %8, i32* %19, i32* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @check_lg2(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %31

25:                                               ; preds = %3
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = call i32 @git_describe_workdir(i32** %8, i32* %26, i32* %28)
  %30 = call i32 @check_lg2(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* null)
  br label %31

31:                                               ; preds = %25, %13
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @git_describe_format(%struct.TYPE_5__* %9, i32* %32, i32* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @check_lg2(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @check_lg2(i32, i8*, i8*) #2

declare dso_local i32 @git_revparse_single(i32**, i32*, i8*) #2

declare dso_local i32 @git_describe_commit(i32**, i32*, i32*) #2

declare dso_local i32 @git_describe_workdir(i32**, i32*, i32*) #2

declare dso_local i32 @git_describe_format(%struct.TYPE_5__*, i32*, i32*) #2

declare dso_local i32 @printf(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
