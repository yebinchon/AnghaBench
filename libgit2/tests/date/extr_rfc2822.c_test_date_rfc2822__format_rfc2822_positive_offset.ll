; ModuleID = '/home/carl/AnghaBench/libgit2/tests/date/extr_rfc2822.c_test_date_rfc2822__format_rfc2822_positive_offset.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/date/extr_rfc2822.c_test_date_rfc2822__format_rfc2822_positive_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@__const.test_date_rfc2822__format_rfc2822_positive_offset.t = private unnamed_addr constant %struct.TYPE_3__ { i32 1397031663, i32 120 }, align 4
@GIT_DATE_RFC2822_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Wed, 9 Apr 2014 10:21:03 +0200\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_date_rfc2822__format_rfc2822_positive_offset() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_3__* @__const.test_date_rfc2822__format_rfc2822_positive_offset.t to i8*), i64 8, i1 false)
  %5 = load i32, i32* @GIT_DATE_RFC2822_SZ, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = trunc i64 %6 to i32
  %10 = call i32 @git__date_rfc2822_fmt(i8* %8, i32 %9, %struct.TYPE_3__* %1)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  %16 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %16)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @cl_git_pass(i32) #3

declare dso_local i32 @git__date_rfc2822_fmt(i8*, i32, %struct.TYPE_3__*) #3

declare dso_local i32 @cl_assert(i32) #3

declare dso_local i64 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
