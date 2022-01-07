; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_hex.c_test_core_hex__fromhex.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_hex.c_test_core_hex__fromhex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_hex__fromhex() #0 {
  %1 = call i32 @git__fromhex(i8 signext 48)
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i32 @cl_assert(i32 %3)
  %5 = call i32 @git__fromhex(i8 signext 49)
  %6 = icmp eq i32 %5, 1
  %7 = zext i1 %6 to i32
  %8 = call i32 @cl_assert(i32 %7)
  %9 = call i32 @git__fromhex(i8 signext 51)
  %10 = icmp eq i32 %9, 3
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = call i32 @git__fromhex(i8 signext 57)
  %14 = icmp eq i32 %13, 9
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = call i32 @git__fromhex(i8 signext 65)
  %18 = icmp eq i32 %17, 10
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = call i32 @git__fromhex(i8 signext 67)
  %22 = icmp eq i32 %21, 12
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = call i32 @git__fromhex(i8 signext 70)
  %26 = icmp eq i32 %25, 15
  %27 = zext i1 %26 to i32
  %28 = call i32 @cl_assert(i32 %27)
  %29 = call i32 @git__fromhex(i8 signext 97)
  %30 = icmp eq i32 %29, 10
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  %33 = call i32 @git__fromhex(i8 signext 99)
  %34 = icmp eq i32 %33, 12
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = call i32 @git__fromhex(i8 signext 102)
  %38 = icmp eq i32 %37, 15
  %39 = zext i1 %38 to i32
  %40 = call i32 @cl_assert(i32 %39)
  %41 = call i32 @git__fromhex(i8 signext 103)
  %42 = icmp eq i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  %45 = call i32 @git__fromhex(i8 signext 122)
  %46 = icmp eq i32 %45, -1
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  %49 = call i32 @git__fromhex(i8 signext 88)
  %50 = icmp eq i32 %49, -1
  %51 = zext i1 %50 to i32
  %52 = call i32 @cl_assert(i32 %51)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git__fromhex(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
