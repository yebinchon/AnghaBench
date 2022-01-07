; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead-client.c_set_nonblock.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead-client.c_set_nonblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sockflags = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@s = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_nonblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_nonblock(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @sockflags, align 4
  %5 = load i32, i32* @O_NONBLOCK, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = icmp eq i32 %3, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @O_NONBLOCK, align 4
  %15 = load i32, i32* @sockflags, align 4
  %16 = xor i32 %15, %14
  store i32 %16, i32* @sockflags, align 4
  %17 = load i32, i32* @s, align 4
  %18 = load i32, i32* @F_SETFL, align 4
  %19 = load i32, i32* @sockflags, align 4
  %20 = call i32 @fcntl(i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
