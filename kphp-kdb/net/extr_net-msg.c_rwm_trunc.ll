; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_trunc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rwm_trunc(%struct.raw_message* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.raw_message*, align 8
  %5 = alloca i32, align 4
  store %struct.raw_message* %0, %struct.raw_message** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.raw_message*, %struct.raw_message** %4, align 8
  %8 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %6, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.raw_message*, %struct.raw_message** %4, align 8
  %13 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.raw_message*, %struct.raw_message** %4, align 8
  %17 = load %struct.raw_message*, %struct.raw_message** %4, align 8
  %18 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %19, %20
  %22 = call i32 @rwm_fetch_data_back(%struct.raw_message* %16, i32 0, i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %15, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @rwm_fetch_data_back(%struct.raw_message*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
