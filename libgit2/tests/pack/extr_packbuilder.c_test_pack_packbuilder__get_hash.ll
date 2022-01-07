; ModuleID = '/home/carl/AnghaBench/libgit2/tests/pack/extr_packbuilder.c_test_pack_packbuilder__get_hash.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/pack/extr_packbuilder.c_test_pack_packbuilder__get_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@_packbuilder = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"7f5fa362c664d68ba7221259be1cbd187434b2f0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_pack_packbuilder__get_hash() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %4 = add nsw i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %7, i64 %9
  store i8 0, i8* %10, align 1
  %11 = call i32 (...) @seed_packbuilder()
  %12 = load i32, i32* @_packbuilder, align 4
  %13 = call i32 @git_packbuilder_write(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* null)
  %14 = load i32, i32* @_packbuilder, align 4
  %15 = call i32 @git_packbuilder_hash(i32 %14)
  %16 = call i32 @git_oid_fmt(i8* %7, i32 %15)
  %17 = call i32 @cl_assert_equal_s(i8* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %18)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @seed_packbuilder(...) #2

declare dso_local i32 @git_packbuilder_write(i32, i8*, i32, i32*, i32*) #2

declare dso_local i32 @git_oid_fmt(i8*, i32) #2

declare dso_local i32 @git_packbuilder_hash(i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
