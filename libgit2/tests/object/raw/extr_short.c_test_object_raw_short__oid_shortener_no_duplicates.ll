; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_short.c_test_object_raw_short__oid_shortener_no_duplicates.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_short.c_test_object_raw_short__oid_shortener_no_duplicates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"22596363b3de40b06f981fb85d82312e8c0ed511\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"ce08fe4884650f067bd5703b6a59a8b3b3c99a09\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"16a0123456789abcdef4b775213c23a8bd74f5e0\00", align 1
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_short__oid_shortener_no_duplicates() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32* @git_oid_shorten_new(i32 0)
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = icmp ne i32* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @cl_assert(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_oid_shorten_add(i32* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_oid_shorten_add(i32* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_oid_shorten_add(i32* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_oid_shorten_add(i32* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %18 = add nsw i32 %17, 1
  %19 = icmp eq i32 %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_oid_shorten_free(i32* %22)
  ret void
}

declare dso_local i32* @git_oid_shorten_new(i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_oid_shorten_add(i32*, i8*) #1

declare dso_local i32 @git_oid_shorten_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
