; ModuleID = '/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_fconst.c'
source_filename = "/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_fconst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@l2t = common dso_local global i32 0, align 4
@l2e = common dso_local global i32 0, align 4
@pi = common dso_local global i32 0, align 4
@lg2 = common dso_local global i32 0, align 4
@ln2 = common dso_local global i32 0, align 4
@z = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fconst() #0 {
  %1 = alloca double, align 8
  %2 = call i32 @TEST(i32 1)
  %3 = load i32, i32* @l2t, align 4
  %4 = call i32 @TEST(i32 %3)
  %5 = load i32, i32* @l2e, align 4
  %6 = call i32 @TEST(i32 %5)
  %7 = load i32, i32* @pi, align 4
  %8 = call i32 @TEST(i32 %7)
  %9 = load i32, i32* @lg2, align 4
  %10 = call i32 @TEST(i32 %9)
  %11 = load i32, i32* @ln2, align 4
  %12 = call i32 @TEST(i32 %11)
  %13 = load i32, i32* @z, align 4
  %14 = call i32 @TEST(i32 %13)
  ret void
}

declare dso_local i32 @TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
