; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_zstream.c_test_core_zstream__fails_on_trailing_garbage.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_zstream.c_test_core_zstream__fails_on_trailing_garbage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"foobar!!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_zstream__fails_on_trailing_garbage() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca i8, align 1
  %4 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %5 = bitcast %struct.TYPE_7__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i8 0, i8* %3, align 1
  %6 = call i32 @git_zstream_deflatebuf(%struct.TYPE_7__* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  store i8 0, i8* %3, align 1
  br label %7

7:                                                ; preds = %14, %0
  %8 = load i8, i8* %3, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i8, i8* %3, align 1
  %13 = call i32 @git_buf_putc(%struct.TYPE_7__* %1, i8 signext %12)
  br label %14

14:                                               ; preds = %11
  %15 = load i8, i8* %3, align 1
  %16 = add i8 %15, 1
  store i8 %16, i8* %3, align 1
  br label %7

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @git_zstream_inflatebuf(%struct.TYPE_7__* %2, i32 %19, i32 %21)
  %23 = call i32 @cl_git_fail(i32 %22)
  %24 = call i32 @git_buf_dispose(%struct.TYPE_7__* %1)
  %25 = call i32 @git_buf_dispose(%struct.TYPE_7__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_zstream_deflatebuf(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i32 @git_buf_putc(%struct.TYPE_7__*, i8 signext) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_zstream_inflatebuf(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
