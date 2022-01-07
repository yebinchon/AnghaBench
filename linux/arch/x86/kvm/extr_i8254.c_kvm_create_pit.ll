; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_kvm_create_pit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_kvm_create_pit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pit = type { i64, i32, i32, i32, %struct.TYPE_5__, %struct.kvm_kpit_state, %struct.kvm*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.kvm_kpit_state = type { %struct.TYPE_4__, %struct.TYPE_6__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.kvm = type { i32 }
%struct.pid = type { i32 }

@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"kvm-pit/%d\00", align 1
@pit_do_work = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@pit_timer_fn = common dso_local global i32 0, align 4
@kvm_pit_ack_irq = common dso_local global i32 0, align 4
@pit_mask_notifer = common dso_local global i32 0, align 4
@pit_dev_ops = common dso_local global i32 0, align 4
@KVM_PIO_BUS = common dso_local global i32 0, align 4
@KVM_PIT_BASE_ADDRESS = common dso_local global i32 0, align 4
@KVM_PIT_MEM_LENGTH = common dso_local global i32 0, align 4
@KVM_PIT_SPEAKER_DUMMY = common dso_local global i32 0, align 4
@speaker_dev_ops = common dso_local global i32 0, align 4
@KVM_SPEAKER_BASE_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_pit* @kvm_create_pit(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_pit*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_pit*, align 8
  %7 = alloca %struct.kvm_kpit_state*, align 8
  %8 = alloca %struct.pid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %12 = call %struct.kvm_pit* @kzalloc(i32 64, i32 %11)
  store %struct.kvm_pit* %12, %struct.kvm_pit** %6, align 8
  %13 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %14 = icmp ne %struct.kvm_pit* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.kvm_pit* null, %struct.kvm_pit** %3, align 8
  br label %147

16:                                               ; preds = %2
  %17 = load %struct.kvm*, %struct.kvm** %4, align 8
  %18 = call i64 @kvm_request_irq_source_id(%struct.kvm* %17)
  %19 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %20 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %22 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %144

26:                                               ; preds = %16
  %27 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %28 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %28, i32 0, i32 2
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load i32, i32* @current, align 4
  %32 = call i32 @task_tgid(i32 %31)
  %33 = call %struct.pid* @get_pid(i32 %32)
  store %struct.pid* %33, %struct.pid** %8, align 8
  %34 = load %struct.pid*, %struct.pid** %8, align 8
  %35 = call i32 @pid_vnr(%struct.pid* %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.pid*, %struct.pid** %8, align 8
  %37 = call i32 @put_pid(%struct.pid* %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @kthread_create_worker(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %43 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  br label %138

48:                                               ; preds = %26
  %49 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %50 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %49, i32 0, i32 7
  %51 = load i32, i32* @pit_do_work, align 4
  %52 = call i32 @kthread_init_work(i32* %50, i32 %51)
  %53 = load %struct.kvm*, %struct.kvm** %4, align 8
  %54 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %55 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %54, i32 0, i32 6
  store %struct.kvm* %53, %struct.kvm** %55, align 8
  %56 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %57 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %56, i32 0, i32 5
  store %struct.kvm_kpit_state* %57, %struct.kvm_kpit_state** %7, align 8
  %58 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %59 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %58, i32 0, i32 1
  %60 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %61 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %62 = call i32 @hrtimer_init(%struct.TYPE_6__* %59, i32 %60, i32 %61)
  %63 = load i32, i32* @pit_timer_fn, align 4
  %64 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %65 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %68 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @kvm_pit_ack_irq, align 4
  %71 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %72 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @pit_mask_notifer, align 4
  %75 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %76 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %79 = call i32 @kvm_pit_reset(%struct.kvm_pit* %78)
  %80 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %81 = call i32 @kvm_pit_set_reinject(%struct.kvm_pit* %80, i32 1)
  %82 = load %struct.kvm*, %struct.kvm** %4, align 8
  %83 = getelementptr inbounds %struct.kvm, %struct.kvm* %82, i32 0, i32 0
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %86 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %85, i32 0, i32 2
  %87 = call i32 @kvm_iodevice_init(i32* %86, i32* @pit_dev_ops)
  %88 = load %struct.kvm*, %struct.kvm** %4, align 8
  %89 = load i32, i32* @KVM_PIO_BUS, align 4
  %90 = load i32, i32* @KVM_PIT_BASE_ADDRESS, align 4
  %91 = load i32, i32* @KVM_PIT_MEM_LENGTH, align 4
  %92 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %93 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %92, i32 0, i32 2
  %94 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %88, i32 %89, i32 %90, i32 %91, i32* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %48
  br label %128

98:                                               ; preds = %48
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @KVM_PIT_SPEAKER_DUMMY, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %105 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %104, i32 0, i32 3
  %106 = call i32 @kvm_iodevice_init(i32* %105, i32* @speaker_dev_ops)
  %107 = load %struct.kvm*, %struct.kvm** %4, align 8
  %108 = load i32, i32* @KVM_PIO_BUS, align 4
  %109 = load i32, i32* @KVM_SPEAKER_BASE_ADDRESS, align 4
  %110 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %111 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %110, i32 0, i32 3
  %112 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %107, i32 %108, i32 %109, i32 4, i32* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %122

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %98
  %118 = load %struct.kvm*, %struct.kvm** %4, align 8
  %119 = getelementptr inbounds %struct.kvm, %struct.kvm* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  store %struct.kvm_pit* %121, %struct.kvm_pit** %3, align 8
  br label %147

122:                                              ; preds = %115
  %123 = load %struct.kvm*, %struct.kvm** %4, align 8
  %124 = load i32, i32* @KVM_PIO_BUS, align 4
  %125 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %126 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %125, i32 0, i32 2
  %127 = call i32 @kvm_io_bus_unregister_dev(%struct.kvm* %123, i32 %124, i32* %126)
  br label %128

128:                                              ; preds = %122, %97
  %129 = load %struct.kvm*, %struct.kvm** %4, align 8
  %130 = getelementptr inbounds %struct.kvm, %struct.kvm* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %133 = call i32 @kvm_pit_set_reinject(%struct.kvm_pit* %132, i32 0)
  %134 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %135 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @kthread_destroy_worker(i32 %136)
  br label %138

138:                                              ; preds = %128, %47
  %139 = load %struct.kvm*, %struct.kvm** %4, align 8
  %140 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %141 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @kvm_free_irq_source_id(%struct.kvm* %139, i64 %142)
  br label %144

144:                                              ; preds = %138, %25
  %145 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %146 = call i32 @kfree(%struct.kvm_pit* %145)
  store %struct.kvm_pit* null, %struct.kvm_pit** %3, align 8
  br label %147

147:                                              ; preds = %144, %117, %15
  %148 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  ret %struct.kvm_pit* %148
}

declare dso_local %struct.kvm_pit* @kzalloc(i32, i32) #1

declare dso_local i64 @kvm_request_irq_source_id(%struct.kvm*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.pid* @get_pid(i32) #1

declare dso_local i32 @task_tgid(i32) #1

declare dso_local i32 @pid_vnr(%struct.pid*) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

declare dso_local i32 @kthread_create_worker(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kthread_init_work(i32*, i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @kvm_pit_reset(%struct.kvm_pit*) #1

declare dso_local i32 @kvm_pit_set_reinject(%struct.kvm_pit*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_iodevice_init(i32*, i32*) #1

declare dso_local i32 @kvm_io_bus_register_dev(%struct.kvm*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kvm_io_bus_unregister_dev(%struct.kvm*, i32, i32*) #1

declare dso_local i32 @kthread_destroy_worker(i32) #1

declare dso_local i32 @kvm_free_irq_source_id(%struct.kvm*, i64) #1

declare dso_local i32 @kfree(%struct.kvm_pit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
