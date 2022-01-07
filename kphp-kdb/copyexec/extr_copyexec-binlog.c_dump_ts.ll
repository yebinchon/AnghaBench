; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_ts.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"interrupted\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cancelled\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"terminated\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"decryption_failed\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"io_failed\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dump_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ts(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 255
  switch i32 %4, label %29 [
    i32 129, label %5
    i32 132, label %8
    i32 131, label %11
    i32 135, label %14
    i32 128, label %17
    i32 133, label %20
    i32 134, label %23
    i32 130, label %26
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @out, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %33

8:                                                ; preds = %1
  %9 = load i32, i32* @out, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %33

11:                                               ; preds = %1
  %12 = load i32, i32* @out, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %33

14:                                               ; preds = %1
  %15 = load i32, i32* @out, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %33

17:                                               ; preds = %1
  %18 = load i32, i32* @out, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %33

20:                                               ; preds = %1
  %21 = load i32, i32* @out, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %33

23:                                               ; preds = %1
  %24 = load i32, i32* @out, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %33

26:                                               ; preds = %1
  %27 = load i32, i32* @out, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @out, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %26, %23, %20, %17, %14, %11, %8, %5
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
