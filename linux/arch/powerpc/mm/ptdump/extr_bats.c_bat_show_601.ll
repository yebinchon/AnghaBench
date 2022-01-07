; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_bats.c_bat_show_601.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_bats.c_bat_show_601.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"        -\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"0x%08x-0x%08x \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0x%08x \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Kernel %s User %s\00", align 1
@_PAGE_WRITETHRU = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"write through \00", align 1
@_PAGE_NO_CACHE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"no cache \00", align 1
@_PAGE_COHERENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"coherent \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32, i32)* @bat_show_601 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bat_show_601(%struct.seq_file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, -131072
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = ashr i32 %17, 2
  %19 = and i32 %18, 3
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 3
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @PHYS_BAT_ADDR(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 1023
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 %26, 1
  %28 = shl i32 %27, 17
  store i32 %28, i32* %14, align 4
  %29 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 64
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %37 = call i32 @seq_puts(%struct.seq_file* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %85

38:                                               ; preds = %4
  %39 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %41, %42
  %44 = sub nsw i32 %43, 1
  %45 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 2
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @pp_601(i32 %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, 1
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @pp_601(i32 %55, i32 %56)
  %58 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %53, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @_PAGE_WRITETHRU, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %38
  %64 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %65 = call i32 @seq_puts(%struct.seq_file* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %38
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @_PAGE_NO_CACHE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %73 = call i32 @seq_puts(%struct.seq_file* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @_PAGE_COHERENT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %81 = call i32 @seq_puts(%struct.seq_file* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %84 = call i32 @seq_puts(%struct.seq_file* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %35
  ret void
}

declare dso_local i32 @PHYS_BAT_ADDR(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @pp_601(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
