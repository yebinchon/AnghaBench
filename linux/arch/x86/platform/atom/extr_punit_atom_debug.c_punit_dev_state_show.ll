; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/atom/extr_punit_atom_debug.c_punit_dev_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/atom/extr_punit_atom_debug.c_punit_dev_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.punit_device* }
%struct.punit_device = type { i32, i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"\0A\0APUNIT NORTH COMPLEX DEVICES :\0A\00", align 1
@BT_MBI_UNIT_PMC = common dso_local global i32 0, align 4
@MBI_REG_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%9s : Read Failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%9s : %s\0A\00", align 1
@dstates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @punit_dev_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @punit_dev_state_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.punit_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.punit_device*, %struct.punit_device** %10, align 8
  store %struct.punit_device* %11, %struct.punit_device** %6, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = call i32 @seq_puts(%struct.seq_file* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %51, %2
  %15 = load %struct.punit_device*, %struct.punit_device** %6, align 8
  %16 = getelementptr inbounds %struct.punit_device, %struct.punit_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %14
  %20 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %21 = load i32, i32* @MBI_REG_READ, align 4
  %22 = load %struct.punit_device*, %struct.punit_device** %6, align 8
  %23 = getelementptr inbounds %struct.punit_device, %struct.punit_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @iosf_mbi_read(i32 %20, i32 %21, i32 %24, i32* %5)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load %struct.punit_device*, %struct.punit_device** %6, align 8
  %31 = getelementptr inbounds %struct.punit_device, %struct.punit_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  br label %51

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.punit_device*, %struct.punit_device** %6, align 8
  %37 = getelementptr inbounds %struct.punit_device, %struct.punit_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %35, %38
  %40 = and i32 %39, 3
  store i32 %40, i32* %7, align 4
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.punit_device*, %struct.punit_device** %6, align 8
  %43 = getelementptr inbounds %struct.punit_device, %struct.punit_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32*, i32** @dstates, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %44, i32 %49)
  br label %51

51:                                               ; preds = %34, %28
  %52 = load %struct.punit_device*, %struct.punit_device** %6, align 8
  %53 = getelementptr inbounds %struct.punit_device, %struct.punit_device* %52, i32 1
  store %struct.punit_device* %53, %struct.punit_device** %6, align 8
  br label %14

54:                                               ; preds = %14
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @iosf_mbi_read(i32, i32, i32, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
