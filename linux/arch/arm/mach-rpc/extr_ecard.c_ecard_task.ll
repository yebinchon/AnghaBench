; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_ecard.c_ecard_task.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_ecard.c_ecard_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecard_request = type { i32, i32 (%struct.ecard_request*)* }

@.str = private unnamed_addr constant [29 x i8] c"kecardd: unable to alloc mm\0A\00", align 1
@ecard_wait = common dso_local global i32 0, align 4
@ecard_req = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ecard_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecard_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ecard_request*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i64 (...) @ecard_init_mm()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  br label %9

9:                                                ; preds = %8, %28
  %10 = load i32, i32* @ecard_wait, align 4
  %11 = load i32*, i32** @ecard_req, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @wait_event_interruptible(i32 %10, i32 %13)
  %15 = call %struct.ecard_request* @xchg(i32** @ecard_req, i32* null)
  store %struct.ecard_request* %15, %struct.ecard_request** %3, align 8
  %16 = load %struct.ecard_request*, %struct.ecard_request** %3, align 8
  %17 = icmp ne %struct.ecard_request* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %9
  %19 = load %struct.ecard_request*, %struct.ecard_request** %3, align 8
  %20 = getelementptr inbounds %struct.ecard_request, %struct.ecard_request* %19, i32 0, i32 1
  %21 = load i32 (%struct.ecard_request*)*, i32 (%struct.ecard_request*)** %20, align 8
  %22 = load %struct.ecard_request*, %struct.ecard_request** %3, align 8
  %23 = call i32 %21(%struct.ecard_request* %22)
  %24 = load %struct.ecard_request*, %struct.ecard_request** %3, align 8
  %25 = getelementptr inbounds %struct.ecard_request, %struct.ecard_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @complete(i32 %26)
  br label %28

28:                                               ; preds = %18, %9
  br label %9
}

declare dso_local i64 @ecard_init_mm(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local %struct.ecard_request* @xchg(i32**, i32*) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
