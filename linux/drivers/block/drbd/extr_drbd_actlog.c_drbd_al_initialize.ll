; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_al_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_al_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drbd_md }
%struct.drbd_md = type { i32, i32 }
%struct.al_transaction_on_disk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_al_initialize(%struct.drbd_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.al_transaction_on_disk*, align 8
  %7 = alloca %struct.drbd_md*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.al_transaction_on_disk*
  store %struct.al_transaction_on_disk* %12, %struct.al_transaction_on_disk** %6, align 8
  %13 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %14 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.drbd_md* %16, %struct.drbd_md** %7, align 8
  %17 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %18 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %21 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %25 = load %struct.al_transaction_on_disk*, %struct.al_transaction_on_disk** %6, align 8
  %26 = call i32 @__al_write_transaction(%struct.drbd_device* %24, %struct.al_transaction_on_disk* %25)
  %27 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %28 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %31 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lc_committed(i32 %32)
  %34 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %35 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_irq(i32* %35)
  store i32 1, i32* %9, align 4
  br label %37

37:                                               ; preds = %50, %2
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %43 = load %struct.al_transaction_on_disk*, %struct.al_transaction_on_disk** %6, align 8
  %44 = call i32 @__al_write_transaction(%struct.drbd_device* %42, %struct.al_transaction_on_disk* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %54

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %37

53:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @__al_write_transaction(%struct.drbd_device*, %struct.al_transaction_on_disk*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @lc_committed(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
