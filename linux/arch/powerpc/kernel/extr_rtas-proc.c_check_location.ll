; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas-proc.c_check_location.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas-proc.c_check_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"Planar #%c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CPU #%c\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Fan #%c\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Rack #%c\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Voltage #%c\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"LCD #%c\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"- %c\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Unknown location\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @check_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_location(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  switch i32 %8, label %58 [
    i32 130, label %9
    i32 133, label %16
    i32 132, label %23
    i32 129, label %30
    i32 128, label %37
    i32 131, label %44
    i32 46, label %51
  ]

9:                                                ; preds = %2
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %61

16:                                               ; preds = %2
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %61

23:                                               ; preds = %2
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %61

30:                                               ; preds = %2
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %61

37:                                               ; preds = %2
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  br label %61

44:                                               ; preds = %2
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  br label %61

51:                                               ; preds = %2
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  br label %61

58:                                               ; preds = %2
  %59 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %60 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %51, %44, %37, %30, %23, %16, %9
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
