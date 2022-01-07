; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_chars.c_test_object_raw_chars__find_invalid_chars_in_oid.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_chars.c_test_object_raw_chars__find_invalid_chars_in_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@__const.test_object_raw_chars__find_invalid_chars_in_oid.exp = private unnamed_addr constant [20 x i8] c"\16\A6wp\B7\D8\D7#\17\C4\B7u!<#\A8\BDt\F5\E0", align 16
@__const.test_object_raw_chars__find_invalid_chars_in_oid.in = private unnamed_addr constant [41 x i8] c"16a67770b7d8d72317c4b775213c23a8bd74f5e0\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_chars__find_invalid_chars_in_oid() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca [41 x i8], align 16
  %4 = alloca i32, align 4
  %5 = bitcast [20 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.test_object_raw_chars__find_invalid_chars_in_oid.exp, i32 0, i32 0), i64 20, i1 false)
  %6 = bitcast [41 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([41 x i8], [41 x i8]* @__const.test_object_raw_chars__find_invalid_chars_in_oid.in, i32 0, i32 0), i64 41, i1 false)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %38, %0
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %8, 256
  br i1 %9, label %10, label %41

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds [41 x i8], [41 x i8]* %3, i64 0, i64 38
  store i8 %12, i8* %13, align 2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @git__fromhex(i32 %14)
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @git__fromhex(i32 %18)
  %20 = shl i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds [41 x i8], [41 x i8]* %3, i64 0, i64 0
  %24 = call i32 @git_oid_fromstr(%struct.TYPE_3__* %1, i8* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %29 = call i64 @memcmp(i32 %27, i8* %28, i32 4)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  br label %37

33:                                               ; preds = %10
  %34 = getelementptr inbounds [41 x i8], [41 x i8]* %3, i64 0, i64 0
  %35 = call i32 @git_oid_fromstr(%struct.TYPE_3__* %1, i8* %34)
  %36 = call i32 @cl_git_fail(i32 %35)
  br label %37

37:                                               ; preds = %33, %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %7

41:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git__fromhex(i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(%struct.TYPE_3__*, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @cl_git_fail(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
