; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas-proc.c_get_location_code.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas-proc.c_get_location_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.individual_sensor = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"---\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.individual_sensor*, i8*)* @get_location_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_location_code(%struct.seq_file* %0, %struct.individual_sensor* %1, i8* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.individual_sensor*, align 8
  %6 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.individual_sensor* %1, %struct.individual_sensor** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %3
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %20

16:                                               ; preds = %9
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @check_location_string(%struct.seq_file* %17, i8* %18)
  br label %20

20:                                               ; preds = %16, %13
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = call i32 @seq_putc(%struct.seq_file* %21, i8 signext 32)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*) #1

declare dso_local i32 @check_location_string(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
