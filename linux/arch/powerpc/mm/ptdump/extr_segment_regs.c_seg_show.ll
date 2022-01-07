; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_segment_regs.c_seg_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_segment_regs.c_seg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"0x%01x0000000-0x%01xfffffff \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Kern key %d \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"User key %d \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Device 0x%03x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"-0x%05x\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"No Exec \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"VSID 0x%06x\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32)* @seg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seg_show(%struct.seq_file* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 %6, 28
  %8 = call i32 @mfsrin(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 30
  %16 = and i32 %15, 1
  %17 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 29
  %21 = and i32 %20, 1
  %22 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, -2147483648
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 20
  %30 = and i32 %29, 511
  %31 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 1048575
  %35 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  br label %48

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 268435456
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = call i32 @seq_puts(%struct.seq_file* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 16777215
  %47 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %26
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = call i32 @seq_puts(%struct.seq_file* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mfsrin(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
