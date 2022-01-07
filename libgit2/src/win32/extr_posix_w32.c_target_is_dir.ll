; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_target_is_dir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_target_is_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @target_is_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_is_dir(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i32 1, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @git_path_is_absolute(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @git_win32_path_from_utf8(i32 %13, i8* %14)
  br label %32

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @git_path_dirname_r(%struct.TYPE_6__* %5, i8* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @git_path_apply_relative(%struct.TYPE_6__* %5, i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @git_win32_path_from_utf8(i32 %25, i8* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %20, %16
  br label %37

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %12
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @GetFileAttributesW(i32 %33)
  %35 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %30
  %38 = call i32 @git_buf_dispose(%struct.TYPE_6__* %5)
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_path_is_absolute(i8*) #2

declare dso_local i64 @git_win32_path_from_utf8(i32, i8*) #2

declare dso_local i64 @git_path_dirname_r(%struct.TYPE_6__*, i8*) #2

declare dso_local i64 @git_path_apply_relative(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @GetFileAttributesW(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
