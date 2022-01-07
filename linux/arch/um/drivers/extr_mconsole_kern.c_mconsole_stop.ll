; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_mconsole_kern.c_mconsole_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_mconsole_kern.c_mconsole_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_request = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.pt_regs = type { i32 }

@MCONSOLE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Already stopped\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mconsole_stop(%struct.mc_request* %0) #0 {
  %2 = alloca %struct.mc_request*, align 8
  %3 = alloca %struct.pt_regs*, align 8
  store %struct.mc_request* %0, %struct.mc_request** %2, align 8
  %4 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %5 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MCONSOLE_IRQ, align 4
  %8 = call i32 @deactivate_fd(i32 %6, i32 %7)
  %9 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %10 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @os_set_fd_block(i32 %11, i32 1)
  %13 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %14 = call i32 @mconsole_reply(%struct.mc_request* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  br label %15

15:                                               ; preds = %59, %51, %40, %22, %1
  %16 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %17 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %20 = call i32 @mconsole_get_request(i32 %18, %struct.mc_request* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %15

23:                                               ; preds = %15
  %24 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %25 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to void (%struct.mc_request*)**
  %29 = load void (%struct.mc_request*)*, void (%struct.mc_request*)** %28, align 8
  %30 = icmp eq void (%struct.mc_request*)* %29, @mconsole_go
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %67

32:                                               ; preds = %23
  %33 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %34 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to void (%struct.mc_request*)**
  %38 = load void (%struct.mc_request*)*, void (%struct.mc_request*)** %37, align 8
  %39 = icmp eq void (%struct.mc_request*)* %38, @mconsole_stop
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %42 = call i32 @mconsole_reply(%struct.mc_request* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 0)
  br label %15

43:                                               ; preds = %32
  %44 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %45 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = bitcast {}** %47 to void (%struct.mc_request*)**
  %49 = load void (%struct.mc_request*)*, void (%struct.mc_request*)** %48, align 8
  %50 = icmp eq void (%struct.mc_request*)* %49, @mconsole_sysrq
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %53 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %52, i32 0, i32 2
  %54 = bitcast i32* %53 to %struct.pt_regs*
  %55 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %54)
  store %struct.pt_regs* %55, %struct.pt_regs** %3, align 8
  %56 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  call void @mconsole_sysrq(%struct.mc_request* %56)
  %57 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %58 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %57)
  br label %15

59:                                               ; preds = %43
  %60 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %61 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = bitcast {}** %63 to void (%struct.mc_request*)**
  %65 = load void (%struct.mc_request*)*, void (%struct.mc_request*)** %64, align 8
  %66 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  call void %65(%struct.mc_request* %66)
  br label %15

67:                                               ; preds = %31
  %68 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %69 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @os_set_fd_block(i32 %70, i32 0)
  %72 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %73 = call i32 @mconsole_reply(%struct.mc_request* %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  ret void
}

declare dso_local i32 @deactivate_fd(i32, i32) #1

declare dso_local i32 @os_set_fd_block(i32, i32) #1

declare dso_local i32 @mconsole_reply(%struct.mc_request*, i8*, i32, i32) #1

declare dso_local i32 @mconsole_get_request(i32, %struct.mc_request*) #1

declare dso_local void @mconsole_go(%struct.mc_request*) #1

declare dso_local void @mconsole_sysrq(%struct.mc_request*) #1

declare dso_local %struct.pt_regs* @set_irq_regs(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
