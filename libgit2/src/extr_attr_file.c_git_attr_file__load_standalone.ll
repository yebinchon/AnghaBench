; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_attr_file.c_git_attr_file__load_standalone.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_attr_file.c_git_attr_file__load_standalone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_ATTR_FILE__FROM_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_attr_file__load_standalone(%struct.TYPE_11__** %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @git_futils_readbuffer(%struct.TYPE_10__* %5, i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %35

13:                                               ; preds = %2
  %14 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %15 = call i32 @git_attr_file__new(%struct.TYPE_11__** %6, i32* null, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @git_attr_file__parse_buffer(i32* null, %struct.TYPE_11__* %18, i32 %20, i32 1)
  store i32 %21, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = call i32 @git_attr_cache__alloc_file_entry(i32* %25, i32* null, i8* %26, i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %17, %13
  br label %35

32:                                               ; preds = %23
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %34, align 8
  br label %35

35:                                               ; preds = %32, %31, %12
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = call i32 @git_attr_file__free(%struct.TYPE_11__* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = call i32 @git_buf_dispose(%struct.TYPE_10__* %5)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @git_attr_file__new(%struct.TYPE_11__**, i32*, i32) #2

declare dso_local i32 @git_attr_file__parse_buffer(i32*, %struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @git_attr_cache__alloc_file_entry(i32*, i32*, i8*, i32*) #2

declare dso_local i32 @git_attr_file__free(%struct.TYPE_11__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
