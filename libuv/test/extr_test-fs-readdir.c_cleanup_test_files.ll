; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs-readdir.c_cleanup_test_files.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs-readdir.c_cleanup_test_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"test_dir/file1\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"test_dir/file2\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"test_dir/test_subdir\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"test_dir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_test_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_test_files() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @uv_fs_unlink(i32* null, i32* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null)
  %3 = call i32 @uv_fs_req_cleanup(i32* %1)
  %4 = call i32 @uv_fs_unlink(i32* null, i32* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %5 = call i32 @uv_fs_req_cleanup(i32* %1)
  %6 = call i32 @uv_fs_rmdir(i32* null, i32* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %7 = call i32 @uv_fs_req_cleanup(i32* %1)
  %8 = call i32 @uv_fs_rmdir(i32* null, i32* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %9 = call i32 @uv_fs_req_cleanup(i32* %1)
  ret void
}

declare dso_local i32 @uv_fs_unlink(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @uv_fs_req_cleanup(i32*) #1

declare dso_local i32 @uv_fs_rmdir(i32*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
