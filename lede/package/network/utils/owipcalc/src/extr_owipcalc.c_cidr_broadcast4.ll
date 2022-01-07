; ModuleID = '/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_broadcast4.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_broadcast4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cidr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cidr*)* @cidr_broadcast4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidr_broadcast4(%struct.cidr* %0) #0 {
  %2 = alloca %struct.cidr*, align 8
  %3 = alloca %struct.cidr*, align 8
  store %struct.cidr* %0, %struct.cidr** %2, align 8
  %4 = load %struct.cidr*, %struct.cidr** %2, align 8
  %5 = call %struct.cidr* @cidr_clone(%struct.cidr* %4)
  store %struct.cidr* %5, %struct.cidr** %3, align 8
  %6 = load %struct.cidr*, %struct.cidr** %3, align 8
  %7 = getelementptr inbounds %struct.cidr, %struct.cidr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 32, %8
  %10 = shl i32 1, %9
  %11 = sub nsw i32 %10, 1
  %12 = call i32 @htonl(i32 %11)
  %13 = load %struct.cidr*, %struct.cidr** %3, align 8
  %14 = getelementptr inbounds %struct.cidr, %struct.cidr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %12
  store i32 %18, i32* %16, align 4
  %19 = load %struct.cidr*, %struct.cidr** %3, align 8
  %20 = getelementptr inbounds %struct.cidr, %struct.cidr* %19, i32 0, i32 0
  store i32 32, i32* %20, align 4
  ret i32 1
}

declare dso_local %struct.cidr* @cidr_clone(%struct.cidr*) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
