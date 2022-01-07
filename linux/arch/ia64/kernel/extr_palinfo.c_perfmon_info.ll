; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_palinfo.c_perfmon_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_palinfo.c_perfmon_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [178 x i8] c"PMC/PMD pairs                 : %d\0ACounter width                 : %d bits\0ACycle event number            : %d\0ARetired event number          : %d\0AImplemented PMC               : \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\0AImplemented PMD               : \00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\0ACycles count capable          : \00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\0ARetired bundles count capable : \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*)* @perfmon_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perfmon_info(%struct.seq_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca [16 x i32], align 16
  %5 = alloca %struct.TYPE_5__, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %7 = call i64 @ia64_pal_perf_mon_info(i32* %6, %struct.TYPE_5__* %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20, i32 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %27 = call i32 @bitregister_process(%struct.seq_file* %25, i32* %26, i32 256)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = call i32 @seq_puts(%struct.seq_file* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = call i32 @bitregister_process(%struct.seq_file* %30, i32* %32, i32 256)
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = call i32 @seq_puts(%struct.seq_file* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %38 = getelementptr inbounds i32, i32* %37, i64 8
  %39 = call i32 @bitregister_process(%struct.seq_file* %36, i32* %38, i32 256)
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = call i32 @seq_puts(%struct.seq_file* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %44 = getelementptr inbounds i32, i32* %43, i64 12
  %45 = call i32 @bitregister_process(%struct.seq_file* %42, i32* %44, i32 256)
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = call i32 @seq_putc(%struct.seq_file* %46, i8 signext 10)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %10, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @ia64_pal_perf_mon_info(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @bitregister_process(%struct.seq_file*, i32*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
