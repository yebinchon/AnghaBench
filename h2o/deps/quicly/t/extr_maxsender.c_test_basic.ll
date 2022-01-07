; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_maxsender.c_test_basic.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_maxsender.c_test_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_basic() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @quicly_maxsender_init(i32* %1, i32 100)
  %4 = call i32 @quicly_maxsender_should_send_max(i32* %1, i32 0, i32 100, i32 512)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @ok(i32 %7)
  %9 = call i32 @quicly_maxsender_should_send_max(i32* %1, i32 0, i32 100, i32 1024)
  %10 = call i32 @ok(i32 %9)
  %11 = call i32 @quicly_maxsender_should_send_max(i32* %1, i32 99, i32 100, i32 0)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14)
  %16 = call i32 @quicly_maxsender_should_send_max(i32* %1, i32 100, i32 100, i32 0)
  %17 = call i32 @ok(i32 %16)
  %18 = call i32 @quicly_maxsender_should_send_max(i32* %1, i32 24, i32 100, i32 768)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21)
  %23 = call i32 @quicly_maxsender_should_send_max(i32* %1, i32 25, i32 100, i32 768)
  %24 = call i32 @ok(i32 %23)
  %25 = call i32 @quicly_maxsender_record(i32* %1, i32 125, i32* %2)
  %26 = call i32 @quicly_maxsender_should_send_max(i32* %1, i32 49, i32 100, i32 768)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29)
  %31 = call i32 @quicly_maxsender_should_send_max(i32* %1, i32 50, i32 100, i32 768)
  %32 = call i32 @ok(i32 %31)
  %33 = call i32 @quicly_maxsender_acked(i32* %1, i32* %2)
  %34 = call i32 @quicly_maxsender_should_send_max(i32* %1, i32 49, i32 100, i32 768)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @ok(i32 %37)
  %39 = call i32 @quicly_maxsender_should_send_max(i32* %1, i32 50, i32 100, i32 768)
  %40 = call i32 @ok(i32 %39)
  %41 = call i32 @quicly_maxsender_record(i32* %1, i32 150, i32* %2)
  %42 = call i32 @quicly_maxsender_should_send_max(i32* %1, i32 74, i32 100, i32 768)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @ok(i32 %45)
  %47 = call i32 @quicly_maxsender_lost(i32* %1, i32* %2)
  %48 = call i32 @quicly_maxsender_should_send_max(i32* %1, i32 74, i32 100, i32 768)
  %49 = call i32 @ok(i32 %48)
  ret void
}

declare dso_local i32 @quicly_maxsender_init(i32*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @quicly_maxsender_should_send_max(i32*, i32, i32, i32) #1

declare dso_local i32 @quicly_maxsender_record(i32*, i32, i32*) #1

declare dso_local i32 @quicly_maxsender_acked(i32*, i32*) #1

declare dso_local i32 @quicly_maxsender_lost(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
