; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_packfile_load__cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_packfile_load__cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.pack_backend = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.git_pack_file = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c".idx\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*)* @packfile_load__cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packfile_load__cb(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.pack_backend*, align 8
  %7 = alloca %struct.git_pack_file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.git_pack_file*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.pack_backend*
  store %struct.pack_backend* %14, %struct.pack_backend** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = call i8* @git_buf_cstr(%struct.TYPE_7__* %15)
  store i8* %16, i8** %8, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = call i64 @git_buf_len(%struct.TYPE_7__* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @git__suffixcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %2
  store i32 0, i32* %3, align 4
  br label %75

27:                                               ; preds = %22
  %28 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* %10, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %52, %27
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %34 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %31
  %39 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %40 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %39, i32 0, i32 0
  %41 = load i64, i64* %9, align 8
  %42 = call %struct.git_pack_file* @git_vector_get(%struct.TYPE_8__* %40, i64 %41)
  store %struct.git_pack_file* %42, %struct.git_pack_file** %12, align 8
  %43 = load %struct.git_pack_file*, %struct.git_pack_file** %12, align 8
  %44 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @strncmp(i32 %45, i8* %46, i64 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %75

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %31

55:                                               ; preds = %31
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @git_mwindow_get_pack(%struct.git_pack_file** %7, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @GIT_ENOTFOUND, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = call i32 (...) @git_error_clear()
  store i32 0, i32* %3, align 4
  br label %75

65:                                               ; preds = %55
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %70 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %69, i32 0, i32 0
  %71 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %72 = call i32 @git_vector_insert(%struct.TYPE_8__* %70, %struct.git_pack_file* %71)
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %68, %65
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %63, %50, %26
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i8* @git_buf_cstr(%struct.TYPE_7__*) #1

declare dso_local i64 @git_buf_len(%struct.TYPE_7__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @git__suffixcmp(i8*, i8*) #1

declare dso_local %struct.git_pack_file* @git_vector_get(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @strncmp(i32, i8*, i64) #1

declare dso_local i32 @git_mwindow_get_pack(%struct.git_pack_file**, i32) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_vector_insert(%struct.TYPE_8__*, %struct.git_pack_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
