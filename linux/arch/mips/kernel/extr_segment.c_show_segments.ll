; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_segment.c_show_segments.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_segment.c_show_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"Segment   Virtual    Size   Access Mode   Physical   Caching   EU\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"-------   -------    ----   -----------   --------   -------   --\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"   0      e0000000   512M      %s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"   1      c0000000   512M      %s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"   2      a0000000   512M      %s\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"   3      80000000   512M      %s\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"   4      40000000    1G       %s\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"   5      00000000    1G       %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_segments(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [42 x i8], align 16
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = call i32 @seq_puts(%struct.seq_file* %7, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = call i32 @seq_puts(%struct.seq_file* %9, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 (...) @read_c0_segctl0()
  store i32 %11, i32* %5, align 4
  %12 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @build_segment_config(i8* %12, i32 %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %17 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* %5, align 4
  %19 = lshr i32 %18, 16
  store i32 %19, i32* %5, align 4
  %20 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @build_segment_config(i8* %20, i32 %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %25 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %26 = call i32 (...) @read_c0_segctl1()
  store i32 %26, i32* %5, align 4
  %27 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @build_segment_config(i8* %27, i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %32 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %5, align 4
  %34 = lshr i32 %33, 16
  store i32 %34, i32* %5, align 4
  %35 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @build_segment_config(i8* %35, i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %40 = call i32 @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  %41 = call i32 (...) @read_c0_segctl2()
  store i32 %41, i32* %5, align 4
  %42 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @build_segment_config(i8* %42, i32 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %47 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %5, align 4
  %49 = lshr i32 %48, 16
  store i32 %49, i32* %5, align 4
  %50 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @build_segment_config(i8* %50, i32 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %55 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %54)
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @read_c0_segctl0(...) #1

declare dso_local i32 @build_segment_config(i8*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @read_c0_segctl1(...) #1

declare dso_local i32 @read_c0_segctl2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
