; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_rsxx_eeh_save_issued_creg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_rsxx_eeh_save_issued_creg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, %struct.creg_cmd* }
%struct.creg_cmd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsxx_eeh_save_issued_creg(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca %struct.rsxx_cardinfo*, align 8
  %3 = alloca %struct.creg_cmd*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %2, align 8
  store %struct.creg_cmd* null, %struct.creg_cmd** %3, align 8
  %4 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %5 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  %7 = load %struct.creg_cmd*, %struct.creg_cmd** %6, align 8
  store %struct.creg_cmd* %7, %struct.creg_cmd** %3, align 8
  %8 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %9 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  store %struct.creg_cmd* null, %struct.creg_cmd** %10, align 8
  %11 = load %struct.creg_cmd*, %struct.creg_cmd** %3, align 8
  %12 = icmp ne %struct.creg_cmd* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  %14 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %15 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %17 = call i32 @del_timer_sync(i32* %16)
  %18 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %19 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.creg_cmd*, %struct.creg_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %22, i32 0, i32 0
  %24 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %25 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = call i32 @list_add(i32* %23, i32* %26)
  %28 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %29 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %34 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %37 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_bh(i32* %38)
  br label %40

40:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
