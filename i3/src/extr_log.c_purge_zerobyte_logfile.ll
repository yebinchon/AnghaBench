; ModuleID = '/home/carl/AnghaBench/i3/src/extr_log.c_purge_zerobyte_logfile.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_log.c_purge_zerobyte_logfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@errorfilename = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @purge_zerobyte_logfile() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @errorfilename, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %28

6:                                                ; preds = %0
  %7 = load i32, i32* @errorfilename, align 4
  %8 = call i32 @stat(i32 %7, %struct.stat* %1)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %6
  br label %28

15:                                               ; preds = %10
  %16 = load i32, i32* @errorfilename, align 4
  %17 = call i32 @unlink(i32 %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %28

20:                                               ; preds = %15
  %21 = load i32, i32* @errorfilename, align 4
  %22 = call i8* @strrchr(i32 %21, i8 signext 47)
  store i8* %22, i8** %2, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** %2, align 8
  store i8 0, i8* %25, align 1
  %26 = load i32, i32* @errorfilename, align 4
  %27 = call i32 @rmdir(i32 %26)
  br label %28

28:                                               ; preds = %5, %14, %19, %24, %20
  ret void
}

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i32 @rmdir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
