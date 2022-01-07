; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_hash.c_test_object_raw_hash__hash_by_blocks.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_hash.c_test_object_raw_hash__hash_by_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hello_text = common dso_local global i32 0, align 4
@hello_id = common dso_local global i32 0, align 4
@bye_text = common dso_local global i32 0, align 4
@bye_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_hash__hash_by_blocks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @git_hash_ctx_init(i32* %1)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @hello_text, align 4
  %7 = load i32, i32* @hello_text, align 4
  %8 = call i32 @strlen(i32 %7)
  %9 = call i32 @git_hash_update(i32* %1, i32 %6, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @git_hash_final(i32* %3, i32* %1)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @hello_id, align 4
  %14 = call i32 @git_oid_fromstr(i32* %2, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i64 @git_oid_cmp(i32* %2, i32* %3)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = call i32 @git_hash_init(i32* %1)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @bye_text, align 4
  %23 = load i32, i32* @bye_text, align 4
  %24 = call i32 @strlen(i32 %23)
  %25 = call i32 @git_hash_update(i32* %1, i32 %22, i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = call i32 @git_hash_final(i32* %3, i32* %1)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @bye_id, align 4
  %30 = call i32 @git_oid_fromstr(i32* %2, i32 %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = call i64 @git_oid_cmp(i32* %2, i32* %3)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  %36 = call i32 @git_hash_ctx_cleanup(i32* %1)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_hash_ctx_init(i32*) #1

declare dso_local i32 @git_hash_update(i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @git_hash_final(i32*, i32*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @git_hash_init(i32*) #1

declare dso_local i32 @git_hash_ctx_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
