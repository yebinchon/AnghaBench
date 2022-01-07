; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_check_source_dirname.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_check_source_dirname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@source_dirname = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"lstat for path '%s' failed. %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"'%s' isn't directory.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_source_dirname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_source_dirname() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 4
  %3 = load i32*, i32** @source_dirname, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %22

6:                                                ; preds = %0
  %7 = load i32*, i32** @source_dirname, align 8
  %8 = call i64 @lstat(i32* %7, %struct.stat* %2)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32*, i32** @source_dirname, align 8
  %12 = call i32 @kprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 -1, i32* %1, align 4
  br label %22

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @S_ISDIR(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32*, i32** @source_dirname, align 8
  %20 = call i32 @kprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %19)
  store i32 -1, i32* %1, align 4
  br label %22

21:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %18, %10, %5
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i64 @lstat(i32*, %struct.stat*) #1

declare dso_local i32 @kprintf(i8*, i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
