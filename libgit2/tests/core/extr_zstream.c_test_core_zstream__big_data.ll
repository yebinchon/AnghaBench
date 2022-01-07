; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_zstream.c_test_core_zstream__big_data.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_zstream.c_test_core_zstream__big_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BIG_STRING_PART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_zstream__big_data() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  store i64 1024, i64* %3, align 8
  br label %5

5:                                                ; preds = %41, %0
  %6 = load i64, i64* %3, align 8
  %7 = icmp ule i64 %6, 4194304
  br i1 %7, label %8, label %44

8:                                                ; preds = %5
  %9 = call i32 @git_buf_clear(%struct.TYPE_7__* %1)
  br label %10

10:                                               ; preds = %15, %8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @BIG_STRING_PART, align 4
  %17 = load i32, i32* @BIG_STRING_PART, align 4
  %18 = call i32 @strlen(i32 %17)
  %19 = call i32 @git_buf_put(%struct.TYPE_7__* %1, i32 %16, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  br label %10

21:                                               ; preds = %10
  %22 = call i32 @compress_and_decompress_input_various_ways(%struct.TYPE_7__* %1)
  %23 = call i32 @srand(i32 -1414717974)
  store i64 0, i64* %2, align 8
  br label %24

24:                                               ; preds = %36, %21
  %25 = load i64, i64* %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = call i64 (...) @rand()
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %2, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8 %31, i8* %35, align 1
  br label %36

36:                                               ; preds = %29
  %37 = load i64, i64* %2, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %2, align 8
  br label %24

39:                                               ; preds = %24
  %40 = call i32 @compress_and_decompress_input_various_ways(%struct.TYPE_7__* %1)
  br label %41

41:                                               ; preds = %39
  %42 = load i64, i64* %3, align 8
  %43 = mul i64 %42, 8
  store i64 %43, i64* %3, align 8
  br label %5

44:                                               ; preds = %5
  %45 = call i32 @git_buf_dispose(%struct.TYPE_7__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_clear(%struct.TYPE_7__*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_put(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @compress_and_decompress_input_various_ways(%struct.TYPE_7__*) #2

declare dso_local i32 @srand(i32) #2

declare dso_local i64 @rand(...) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
