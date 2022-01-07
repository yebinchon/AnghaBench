; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_pa_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_pa_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pp = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pa_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pa_str() #0 {
  br label %1

1:                                                ; preds = %53, %0
  %2 = load i8*, i8** @Pp, align 8
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = load i8*, i8** @Pp, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 94
  br i1 %11, label %24, label %12

12:                                               ; preds = %6
  %13 = load i8*, i8** @Pp, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 42
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load i8*, i8** @Pp, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 94
  br i1 %23, label %24, label %44

24:                                               ; preds = %18, %12, %6
  %25 = load i8*, i8** @Pp, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 37
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** @Pp, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 42
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** @Pp, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 37
  br label %42

42:                                               ; preds = %36, %30, %24
  %43 = phi i1 [ true, %30 ], [ true, %24 ], [ %41, %36 ]
  br label %44

44:                                               ; preds = %42, %18, %1
  %45 = phi i1 [ false, %18 ], [ false, %1 ], [ %43, %42 ]
  br i1 %45, label %46, label %56

46:                                               ; preds = %44
  %47 = load i8*, i8** @Pp, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8*, i8** @Pp, align 8
  store i8 32, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i8*, i8** @Pp, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** @Pp, align 8
  br label %1

56:                                               ; preds = %44
  %57 = load i8*, i8** @Pp, align 8
  store i8 0, i8* %57, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
