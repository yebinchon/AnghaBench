; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_odb_loose__simple_reads.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_odb_loose__simple_reads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commit = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@tag = common dso_local global i32 0, align 4
@zero = common dso_local global i32 0, align 4
@one = common dso_local global i32 0, align 4
@two = common dso_local global i32 0, align 4
@some = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_loose__simple_reads() #0 {
  %1 = call i32 @test_read_object(i32* @commit)
  %2 = call i32 @test_read_object(i32* @tree)
  %3 = call i32 @test_read_object(i32* @tag)
  %4 = call i32 @test_read_object(i32* @zero)
  %5 = call i32 @test_read_object(i32* @one)
  %6 = call i32 @test_read_object(i32* @two)
  %7 = call i32 @test_read_object(i32* @some)
  ret void
}

declare dso_local i32 @test_read_object(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
