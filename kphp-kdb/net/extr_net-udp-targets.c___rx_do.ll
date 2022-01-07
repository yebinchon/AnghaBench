; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c___rx_do.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c___rx_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__f = common dso_local global i32 0, align 4
@__c = common dso_local global i32 0, align 4
@__a = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__rx_do(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @__f, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = load i32, i32* @__c, align 4
  %8 = icmp slt i32 %7, 50
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load i32, i32* @__f, align 4
  %11 = load i32*, i32** @__a, align 8
  %12 = load i32, i32* @__c, align 4
  %13 = mul nsw i32 2, %12
  %14 = add nsw i32 %13, 0
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  store i32 %10, i32* %16, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i32*, i32** @__a, align 8
  %20 = load i32, i32* @__c, align 4
  %21 = mul nsw i32 2, %20
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  store i32 %18, i32* %24, align 4
  %25 = load i32, i32* @__c, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @__c, align 4
  br label %27

27:                                               ; preds = %9, %6, %1
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @__f, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
