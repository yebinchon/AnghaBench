; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-debugfs.c_regmap_access_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-debugfs.c_regmap_access_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.regmap* }
%struct.regmap = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"%.*x: %c %c %c %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @regmap_access_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_access_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %5, align 8
  %11 = load %struct.regmap*, %struct.regmap** %5, align 8
  %12 = getelementptr inbounds %struct.regmap, %struct.regmap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @regmap_calc_reg_len(i32 %13)
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %65, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.regmap*, %struct.regmap** %5, align 8
  %18 = getelementptr inbounds %struct.regmap, %struct.regmap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %21, label %73

21:                                               ; preds = %15
  %22 = load %struct.regmap*, %struct.regmap** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @regmap_readable(%struct.regmap* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.regmap*, %struct.regmap** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @regmap_writeable(%struct.regmap* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %65

32:                                               ; preds = %26, %21
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.regmap*, %struct.regmap** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @regmap_readable(%struct.regmap* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 121, i32 110
  %42 = trunc i32 %41 to i8
  %43 = load %struct.regmap*, %struct.regmap** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @regmap_writeable(%struct.regmap* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 121, i32 110
  %49 = trunc i32 %48 to i8
  %50 = load %struct.regmap*, %struct.regmap** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @regmap_volatile(%struct.regmap* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 121, i32 110
  %56 = trunc i32 %55 to i8
  %57 = load %struct.regmap*, %struct.regmap** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @regmap_precious(%struct.regmap* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 121, i32 110
  %63 = trunc i32 %62 to i8
  %64 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i8 signext %42, i8 signext %49, i8 signext %56, i8 signext %63)
  br label %65

65:                                               ; preds = %32, %31
  %66 = load %struct.regmap*, %struct.regmap** %5, align 8
  %67 = getelementptr inbounds %struct.regmap, %struct.regmap* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  br label %15

73:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @regmap_calc_reg_len(i32) #1

declare dso_local i64 @regmap_readable(%struct.regmap*, i32) #1

declare dso_local i64 @regmap_writeable(%struct.regmap*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @regmap_volatile(%struct.regmap*, i32) #1

declare dso_local i64 @regmap_precious(%struct.regmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
