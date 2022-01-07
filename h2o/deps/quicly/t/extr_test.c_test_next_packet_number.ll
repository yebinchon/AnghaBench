; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_test.c_test_next_packet_number.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_test.c_test_next_packet_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_next_packet_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_next_packet_number() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @quicly_determine_packet_number(i32 192, i32 8, i32 313)
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp eq i32 %3, 192
  %5 = zext i1 %4 to i32
  %6 = call i32 @ok(i32 %5)
  %7 = call i32 @quicly_determine_packet_number(i32 192, i32 8, i32 320)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp eq i32 %8, 448
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10)
  %12 = call i32 @quicly_determine_packet_number(i32 39730, i32 16, i32 -1473302293)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, -1473275086
  %15 = zext i1 %14 to i32
  %16 = call i32 @ok(i32 %15)
  %17 = call i32 @quicly_determine_packet_number(i32 31, i32 16, i32 65259)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %18, 65567
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20)
  ret void
}

declare dso_local i32 @quicly_determine_packet_number(i32, i32, i32) #1

declare dso_local i32 @ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
