; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_git_odb_backend_pack.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_git_odb_backend_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_backend = type { i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb_backend_pack(i32** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pack_backend*, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.pack_backend* null, %struct.pack_backend** %7, align 8
  %9 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i64 @pack_backend__alloc(%struct.pack_backend** %7, i32 8)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @git_buf_joinpath(i32* %8, i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = call i32 @git_buf_cstr(i32* %8)
  %19 = call i64 @git_path_isdir(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = call i32 @git_buf_detach(i32* %8)
  %23 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %24 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %26 = bitcast %struct.pack_backend* %25 to i32*
  %27 = call i32 @pack_backend__refresh(i32* %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %21, %17, %13
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %33 = bitcast %struct.pack_backend* %32 to i32*
  %34 = call i32 @pack_backend__free(i32* %33)
  store %struct.pack_backend* null, %struct.pack_backend** %7, align 8
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %37 = bitcast %struct.pack_backend* %36 to i32*
  %38 = load i32**, i32*** %4, align 8
  store i32* %37, i32** %38, align 8
  %39 = call i32 @git_buf_dispose(i32* %8)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @pack_backend__alloc(%struct.pack_backend**, i32) #1

declare dso_local i32 @git_buf_joinpath(i32*, i8*, i8*) #1

declare dso_local i64 @git_path_isdir(i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_detach(i32*) #1

declare dso_local i32 @pack_backend__refresh(i32*) #1

declare dso_local i32 @pack_backend__free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
