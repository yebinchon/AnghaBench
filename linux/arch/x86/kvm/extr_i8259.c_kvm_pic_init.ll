; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8259.c_kvm_pic_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8259.c_kvm_pic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kvm_pic* }
%struct.kvm_pic = type { i32, i32, i32, %struct.TYPE_3__*, %struct.kvm*, i32 }
%struct.TYPE_3__ = type { i32, %struct.kvm_pic* }

@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@picdev_master_ops = common dso_local global i32 0, align 4
@picdev_slave_ops = common dso_local global i32 0, align 4
@picdev_eclr_ops = common dso_local global i32 0, align 4
@KVM_PIO_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_pic_init(%struct.kvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_pic*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %7 = call %struct.kvm_pic* @kzalloc(i32 40, i32 %6)
  store %struct.kvm_pic* %7, %struct.kvm_pic** %4, align 8
  %8 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %9 = icmp ne %struct.kvm_pic* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %107

13:                                               ; preds = %1
  %14 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %14, i32 0, i32 5
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.kvm*, %struct.kvm** %3, align 8
  %18 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %18, i32 0, i32 4
  store %struct.kvm* %17, %struct.kvm** %19, align 8
  %20 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 248, i32* %24, align 8
  %25 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 222, i32* %29, align 8
  %30 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %31 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store %struct.kvm_pic* %30, %struct.kvm_pic** %35, align 8
  %36 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %37 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store %struct.kvm_pic* %36, %struct.kvm_pic** %41, align 8
  %42 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %42, i32 0, i32 0
  %44 = call i32 @kvm_iodevice_init(i32* %43, i32* @picdev_master_ops)
  %45 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %45, i32 0, i32 1
  %47 = call i32 @kvm_iodevice_init(i32* %46, i32* @picdev_slave_ops)
  %48 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %49 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %48, i32 0, i32 2
  %50 = call i32 @kvm_iodevice_init(i32* %49, i32* @picdev_eclr_ops)
  %51 = load %struct.kvm*, %struct.kvm** %3, align 8
  %52 = getelementptr inbounds %struct.kvm, %struct.kvm* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.kvm*, %struct.kvm** %3, align 8
  %55 = load i32, i32* @KVM_PIO_BUS, align 4
  %56 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %57 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %56, i32 0, i32 0
  %58 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %54, i32 %55, i32 32, i32 2, i32* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %13
  br label %100

62:                                               ; preds = %13
  %63 = load %struct.kvm*, %struct.kvm** %3, align 8
  %64 = load i32, i32* @KVM_PIO_BUS, align 4
  %65 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %66 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %65, i32 0, i32 1
  %67 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %63, i32 %64, i32 160, i32 2, i32* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %94

71:                                               ; preds = %62
  %72 = load %struct.kvm*, %struct.kvm** %3, align 8
  %73 = load i32, i32* @KVM_PIO_BUS, align 4
  %74 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %75 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %74, i32 0, i32 2
  %76 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %72, i32 %73, i32 1232, i32 2, i32* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %88

80:                                               ; preds = %71
  %81 = load %struct.kvm*, %struct.kvm** %3, align 8
  %82 = getelementptr inbounds %struct.kvm, %struct.kvm* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %85 = load %struct.kvm*, %struct.kvm** %3, align 8
  %86 = getelementptr inbounds %struct.kvm, %struct.kvm* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store %struct.kvm_pic* %84, %struct.kvm_pic** %87, align 8
  store i32 0, i32* %2, align 4
  br label %107

88:                                               ; preds = %79
  %89 = load %struct.kvm*, %struct.kvm** %3, align 8
  %90 = load i32, i32* @KVM_PIO_BUS, align 4
  %91 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %92 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %91, i32 0, i32 1
  %93 = call i32 @kvm_io_bus_unregister_dev(%struct.kvm* %89, i32 %90, i32* %92)
  br label %94

94:                                               ; preds = %88, %70
  %95 = load %struct.kvm*, %struct.kvm** %3, align 8
  %96 = load i32, i32* @KVM_PIO_BUS, align 4
  %97 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %98 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %97, i32 0, i32 0
  %99 = call i32 @kvm_io_bus_unregister_dev(%struct.kvm* %95, i32 %96, i32* %98)
  br label %100

100:                                              ; preds = %94, %61
  %101 = load %struct.kvm*, %struct.kvm** %3, align 8
  %102 = getelementptr inbounds %struct.kvm, %struct.kvm* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %105 = call i32 @kfree(%struct.kvm_pic* %104)
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %100, %80, %10
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.kvm_pic* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kvm_iodevice_init(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_io_bus_register_dev(%struct.kvm*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kvm_io_bus_unregister_dev(%struct.kvm*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.kvm_pic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
