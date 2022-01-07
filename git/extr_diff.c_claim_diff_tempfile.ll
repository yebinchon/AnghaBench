; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_claim_diff_tempfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_claim_diff_tempfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_tempfile = type { i32 }

@diff_temp = common dso_local global %struct.diff_tempfile* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"diff is failing to clean up its tempfiles\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.diff_tempfile* ()* @claim_diff_tempfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.diff_tempfile* @claim_diff_tempfile() #0 {
  %1 = alloca %struct.diff_tempfile*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %22, %0
  %4 = load i32, i32* %2, align 4
  %5 = load %struct.diff_tempfile*, %struct.diff_tempfile** @diff_temp, align 8
  %6 = call i32 @ARRAY_SIZE(%struct.diff_tempfile* %5)
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = load %struct.diff_tempfile*, %struct.diff_tempfile** @diff_temp, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %9, i64 %11
  %13 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = load %struct.diff_tempfile*, %struct.diff_tempfile** @diff_temp, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %17, i64 %19
  store %struct.diff_tempfile* %20, %struct.diff_tempfile** %1, align 8
  br label %27

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %3

25:                                               ; preds = %3
  %26 = call i32 @BUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %16
  %28 = load %struct.diff_tempfile*, %struct.diff_tempfile** %1, align 8
  ret %struct.diff_tempfile* %28
}

declare dso_local i32 @ARRAY_SIZE(%struct.diff_tempfile*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
