; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tag.c_write_tag_annotation.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tag.c_write_tag_annotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"object \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"type %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tag %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"tagger \00", align 1
@GIT_OBJECT_TAG = common dso_local global i32 0, align 4
@GIT_ERROR_OBJECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to create tag annotation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32*, i32*, i8*)* @write_tag_annotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_tag_annotation(i32* %0, i32* %1, i8* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_9__, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = bitcast %struct.TYPE_9__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @git_object_id(i32* %17)
  %19 = call i32 @git_oid__writebuf(%struct.TYPE_9__* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @git_object_type(i32* %20)
  %22 = call i8* @git_object_type2string(i32 %21)
  %23 = call i32 @git_buf_printf(%struct.TYPE_9__* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @git_buf_printf(%struct.TYPE_9__* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @git_signature__writebuf(%struct.TYPE_9__* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %26)
  %28 = call i32 @git_buf_putc(%struct.TYPE_9__* %14, i8 signext 10)
  %29 = load i8*, i8** %13, align 8
  %30 = call i64 @git_buf_puts(%struct.TYPE_9__* %14, i8* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  br label %51

33:                                               ; preds = %6
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @git_repository_odb__weakptr(i32** %15, i32* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %51

38:                                               ; preds = %33
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GIT_OBJECT_TAG, align 4
  %46 = call i64 @git_odb_write(i32* %39, i32* %40, i32 %42, i32 %44, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %51

49:                                               ; preds = %38
  %50 = call i32 @git_buf_dispose(%struct.TYPE_9__* %14)
  store i32 0, i32* %7, align 4
  br label %55

51:                                               ; preds = %48, %37, %32
  %52 = call i32 @git_buf_dispose(%struct.TYPE_9__* %14)
  %53 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %54 = call i32 @git_error_set(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %49
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_oid__writebuf(%struct.TYPE_9__*, i8*, i32) #2

declare dso_local i32 @git_object_id(i32*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_9__*, i8*, i8*) #2

declare dso_local i8* @git_object_type2string(i32) #2

declare dso_local i32 @git_object_type(i32*) #2

declare dso_local i32 @git_signature__writebuf(%struct.TYPE_9__*, i8*, i32*) #2

declare dso_local i32 @git_buf_putc(%struct.TYPE_9__*, i8 signext) #2

declare dso_local i64 @git_buf_puts(%struct.TYPE_9__*, i8*) #2

declare dso_local i64 @git_repository_odb__weakptr(i32**, i32*) #2

declare dso_local i64 @git_odb_write(i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
