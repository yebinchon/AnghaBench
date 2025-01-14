; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/vdso/extr_vma.c_stick_patch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/vdso/extr_vma.c_stick_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdso_image = type { i32 }
%struct.vdso_elfinfo = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"__vdso_gettimeofday\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"__vdso_gettimeofday_stick\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"__vdso_clock_gettime\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"__vdso_clock_gettime_stick\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdso_image*, %struct.vdso_elfinfo*, i32)* @stick_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stick_patch(%struct.vdso_image* %0, %struct.vdso_elfinfo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vdso_image*, align 8
  %6 = alloca %struct.vdso_elfinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vdso_image* %0, %struct.vdso_image** %5, align 8
  store %struct.vdso_elfinfo* %1, %struct.vdso_elfinfo** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vdso_image*, %struct.vdso_image** %5, align 8
  %10 = load %struct.vdso_elfinfo*, %struct.vdso_elfinfo** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @find_sections(%struct.vdso_image* %9, %struct.vdso_elfinfo* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load %struct.vdso_elfinfo*, %struct.vdso_elfinfo** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @patch_one_symbol(%struct.vdso_elfinfo* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %29

25:                                               ; preds = %17
  %26 = load %struct.vdso_elfinfo*, %struct.vdso_elfinfo** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @patch_one_symbol(%struct.vdso_elfinfo* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %23, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @find_sections(%struct.vdso_image*, %struct.vdso_elfinfo*, i32) #1

declare dso_local i32 @patch_one_symbol(%struct.vdso_elfinfo*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
