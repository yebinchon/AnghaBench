; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_oid.c_test_core_oid__ncmp.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_oid.c_test_core_oid__ncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@id = common dso_local global i32 0, align 4
@idp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_oid__ncmp() #0 {
  %1 = call i32 @git_oid_ncmp(i32* @id, i32* @idp, i32 0)
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  %5 = call i32 @cl_assert(i32 %4)
  %6 = call i32 @git_oid_ncmp(i32* @id, i32* @idp, i32 1)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @cl_assert(i32 %9)
  %11 = call i32 @git_oid_ncmp(i32* @id, i32* @idp, i32 2)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  %16 = call i32 @git_oid_ncmp(i32* @id, i32* @idp, i32 17)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = call i32 @git_oid_ncmp(i32* @id, i32* @idp, i32 18)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = call i32 @git_oid_ncmp(i32* @id, i32* @idp, i32 19)
  %27 = call i32 @cl_assert(i32 %26)
  %28 = call i32 @git_oid_ncmp(i32* @id, i32* @idp, i32 40)
  %29 = call i32 @cl_assert(i32 %28)
  %30 = call i32 @git_oid_ncmp(i32* @id, i32* @idp, i32 41)
  %31 = call i32 @cl_assert(i32 %30)
  %32 = call i32 @git_oid_ncmp(i32* @id, i32* @idp, i32 42)
  %33 = call i32 @cl_assert(i32 %32)
  %34 = call i32 @git_oid_ncmp(i32* @id, i32* @id, i32 0)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  %39 = call i32 @git_oid_ncmp(i32* @id, i32* @id, i32 1)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @cl_assert(i32 %42)
  %44 = call i32 @git_oid_ncmp(i32* @id, i32* @id, i32 39)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  %49 = call i32 @git_oid_ncmp(i32* @id, i32* @id, i32 40)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @cl_assert(i32 %52)
  %54 = call i32 @git_oid_ncmp(i32* @id, i32* @id, i32 41)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @cl_assert(i32 %57)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_oid_ncmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
