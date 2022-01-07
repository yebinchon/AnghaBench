; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_default.c_ack.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_default.c_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_negotiator = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fetch_negotiator*, %struct.commit*)* @ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ack(%struct.fetch_negotiator* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.fetch_negotiator*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i32, align 4
  store %struct.fetch_negotiator* %0, %struct.fetch_negotiator** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %6 = load %struct.commit*, %struct.commit** %4, align 8
  %7 = getelementptr inbounds %struct.commit, %struct.commit* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @COMMON, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %3, align 8
  %17 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.commit*, %struct.commit** %4, align 8
  %20 = call i32 @mark_common(i32 %18, %struct.commit* %19, i32 0, i32 1)
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @mark_common(i32, %struct.commit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
