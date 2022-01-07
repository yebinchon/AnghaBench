; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sysinfo.c_service_level_vm_print.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sysinfo.c_service_level_vm_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.service_level = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"QUERY CPLEVEL\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"VM: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.service_level*)* @service_level_vm_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_level_vm_print(%struct.seq_file* %0, %struct.service_level* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.service_level*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.service_level* %1, %struct.service_level** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = load i32, i32* @GFP_DMA, align 4
  %9 = or i32 %7, %8
  %10 = call i8* @kmalloc(i32 1024, i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %29

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @cpcmd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %15, i32 1024, i32* null)
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 10)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i8*, i8** %6, align 8
  store i8 0, i8* %22, align 1
  br label %23

23:                                               ; preds = %21, %14
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @kfree(i8* %27)
  br label %29

29:                                               ; preds = %23, %13
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @cpcmd(i8*, i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
