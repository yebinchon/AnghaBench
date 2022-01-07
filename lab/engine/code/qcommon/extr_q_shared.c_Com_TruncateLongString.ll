; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_shared.c_Com_TruncateLongString.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_shared.c_Com_TruncateLongString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUNCATE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" ... \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_TruncateLongString(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strlen(i8* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @TRUNCATE_LENGTH, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @TRUNCATE_LENGTH, align 4
  %15 = call i32 @Q_strncpyz(i8* %12, i8* %13, i32 %14)
  br label %39

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @TRUNCATE_LENGTH, align 4
  %20 = sdiv i32 %19, 2
  %21 = sub nsw i32 %20, 3
  %22 = call i32 @Q_strncpyz(i8* %17, i8* %18, i32 %21)
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @TRUNCATE_LENGTH, align 4
  %25 = call i32 @Q_strcat(i8* %23, i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @TRUNCATE_LENGTH, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i32, i32* @TRUNCATE_LENGTH, align 4
  %33 = sdiv i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  %38 = call i32 @Q_strcat(i8* %26, i32 %27, i8* %37)
  br label %39

39:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
