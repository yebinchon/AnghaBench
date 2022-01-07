; ModuleID = '/home/carl/AnghaBench/lab/third_party/md/extr_mddriver.c_MDFilter.c'
source_filename = "/home/carl/AnghaBench/lab/third_party/md/extr_mddriver.c_MDFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @MDFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MDFilter() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [16 x i8], align 16
  %4 = alloca [16 x i8], align 16
  %5 = call i32 @MDInit(i32* %1)
  br label %6

6:                                                ; preds = %11, %0
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %8 = load i32, i32* @stdin, align 4
  %9 = call i32 @fread(i8* %7, i32 1, i32 16, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @MDUpdate(i32* %1, i8* %12, i32 %13)
  br label %6

15:                                               ; preds = %6
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %17 = call i32 @MDFinal(i8* %16, i32* %1)
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %19 = call i32 @MDPrint(i8* %18)
  %20 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @MDInit(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @MDUpdate(i32*, i8*, i32) #1

declare dso_local i32 @MDFinal(i8*, i32*) #1

declare dso_local i32 @MDPrint(i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
