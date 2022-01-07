; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_largefiles.c_test_odb_largefiles__write_from_memory.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_largefiles.c_test_odb_largefiles__write_from_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"GITTEST_INVASIVE_FS_SIZE\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"GITTEST_INVASIVE_MEMORY\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"GITTEST_SLOW\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Hello, world.\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"3fb56989cca483b21ba7cb0a6edb229d10e1c26c\00", align 1
@odb = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_largefiles__write_from_memory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i64, align 8
  %5 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %6 = call i32 (...) @cl_skip()
  %7 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %9, %0
  %16 = call i32 (...) @cl_skip()
  br label %17

17:                                               ; preds = %15, %12
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %24, %17
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %19, 383479223
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = call i32 @git_buf_puts(%struct.TYPE_4__* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  br label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %4, align 8
  br label %18

27:                                               ; preds = %18
  %28 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32, i32* @odb, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %35 = call i32 @git_odb_write(i32* %2, i32 %29, i32 %31, i32 %33, i32 %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_skip(...) #2

declare dso_local i32 @cl_is_env_set(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_odb_write(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
