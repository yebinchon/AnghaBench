; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_mconsole_kern.c_with_console.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_mconsole_kern.c_with_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_request = type { i32 }
%struct.mconsole_output = type { i32, %struct.mc_request* }

@client_lock = common dso_local global i32 0, align 4
@clients = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mc_request*, void (i8*)*, i8*)* @with_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @with_console(%struct.mc_request* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.mc_request*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mconsole_output, align 8
  %8 = alloca i64, align 8
  store %struct.mc_request* %0, %struct.mc_request** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.mc_request*, %struct.mc_request** %4, align 8
  %10 = getelementptr inbounds %struct.mconsole_output, %struct.mconsole_output* %7, i32 0, i32 1
  store %struct.mc_request* %9, %struct.mc_request** %10, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @client_lock, i64 %11)
  %13 = getelementptr inbounds %struct.mconsole_output, %struct.mconsole_output* %7, i32 0, i32 0
  %14 = call i32 @list_add(i32* %13, i32* @clients)
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* @client_lock, i64 %15)
  %17 = load void (i8*)*, void (i8*)** %5, align 8
  %18 = load i8*, i8** %6, align 8
  call void %17(i8* %18)
  %19 = load %struct.mc_request*, %struct.mc_request** %4, align 8
  %20 = call i32 @mconsole_reply_len(%struct.mc_request* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0)
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* @client_lock, i64 %21)
  %23 = getelementptr inbounds %struct.mconsole_output, %struct.mconsole_output* %7, i32 0, i32 0
  %24 = call i32 @list_del(i32* %23)
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* @client_lock, i64 %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mconsole_reply_len(%struct.mc_request*, i8*, i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
