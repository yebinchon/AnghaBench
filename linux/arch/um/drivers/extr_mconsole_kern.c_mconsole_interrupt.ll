; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_mconsole_kern.c_mconsole_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_mconsole_kern.c_mconsole_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_request = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 (%struct.mc_request*)* }
%struct.mconsole_entry = type { i32, %struct.mc_request }
%struct.TYPE_4__ = type { i32 }

@mconsole_interrupt.req = internal global %struct.mc_request zeroinitializer, align 8
@MCONSOLE_INTR = common dso_local global i64 0, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@mc_requests = common dso_local global i32 0, align 4
@mconsole_work = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mconsole_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mconsole_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mconsole_entry*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @mconsole_get_request(i64 %10, %struct.mc_request* @mconsole_interrupt.req)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.mc_request, %struct.mc_request* @mconsole_interrupt.req, i32 0, i32 1), align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MCONSOLE_INTR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.mc_request, %struct.mc_request* @mconsole_interrupt.req, i32 0, i32 1), align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32 (%struct.mc_request*)*, i32 (%struct.mc_request*)** %21, align 8
  %23 = call i32 %22(%struct.mc_request* @mconsole_interrupt.req)
  br label %45

24:                                               ; preds = %13
  %25 = load i32, i32* @GFP_NOWAIT, align 4
  %26 = call %struct.mconsole_entry* @kmalloc(i32 24, i32 %25)
  store %struct.mconsole_entry* %26, %struct.mconsole_entry** %6, align 8
  %27 = load %struct.mconsole_entry*, %struct.mconsole_entry** %6, align 8
  %28 = icmp eq %struct.mconsole_entry* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @mconsole_reply(%struct.mc_request* @mconsole_interrupt.req, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1, i32 0)
  br label %44

31:                                               ; preds = %24
  %32 = load %struct.mconsole_entry*, %struct.mconsole_entry** %6, align 8
  %33 = getelementptr inbounds %struct.mconsole_entry, %struct.mconsole_entry* %32, i32 0, i32 1
  %34 = bitcast %struct.mc_request* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 bitcast (%struct.mc_request* @mconsole_interrupt.req to i8*), i64 16, i1 false)
  %35 = call %struct.TYPE_4__* (...) @get_irq_regs()
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mconsole_entry*, %struct.mconsole_entry** %6, align 8
  %39 = getelementptr inbounds %struct.mconsole_entry, %struct.mconsole_entry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.mconsole_entry*, %struct.mconsole_entry** %6, align 8
  %42 = getelementptr inbounds %struct.mconsole_entry, %struct.mconsole_entry* %41, i32 0, i32 0
  %43 = call i32 @list_add(i32* %42, i32* @mc_requests)
  br label %44

44:                                               ; preds = %31, %29
  br label %45

45:                                               ; preds = %44, %19
  br label %9

46:                                               ; preds = %9
  %47 = call i32 @list_empty(i32* @mc_requests)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 @schedule_work(i32* @mconsole_work)
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %52
}

declare dso_local i64 @mconsole_get_request(i64, %struct.mc_request*) #1

declare dso_local %struct.mconsole_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @mconsole_reply(%struct.mc_request*, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_4__* @get_irq_regs(...) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
