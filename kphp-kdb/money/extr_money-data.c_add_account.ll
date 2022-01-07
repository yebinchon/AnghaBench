; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_add_account.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_add_account.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.account = type { %struct.account*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AccHash = common dso_local global %struct.account** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.account*)* @add_account to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_account(%struct.account* %0) #0 {
  %2 = alloca %struct.account*, align 8
  %3 = alloca i32, align 4
  store %struct.account* %0, %struct.account** %2, align 8
  %4 = load %struct.account*, %struct.account** %2, align 8
  %5 = getelementptr inbounds %struct.account, %struct.account* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.account*, %struct.account** %2, align 8
  %10 = getelementptr inbounds %struct.account, %struct.account* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @account_bucket(i32 %8, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.account**, %struct.account*** @AccHash, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.account*, %struct.account** %13, i64 %15
  %17 = load %struct.account*, %struct.account** %16, align 8
  %18 = load %struct.account*, %struct.account** %2, align 8
  %19 = getelementptr inbounds %struct.account, %struct.account* %18, i32 0, i32 0
  store %struct.account* %17, %struct.account** %19, align 8
  %20 = load %struct.account*, %struct.account** %2, align 8
  %21 = load %struct.account**, %struct.account*** @AccHash, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.account*, %struct.account** %21, i64 %23
  store %struct.account* %20, %struct.account** %24, align 8
  ret i32 0
}

declare dso_local i32 @account_bucket(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
