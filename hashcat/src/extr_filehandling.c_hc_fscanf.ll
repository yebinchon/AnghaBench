; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_filehandling.c_hc_fscanf.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_filehandling.c_hc_fscanf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HCBUFSIZ_TINY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_fscanf(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %38

13:                                               ; preds = %3
  %14 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %15 = call i64 @hcmalloc(i64 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %38

20:                                               ; preds = %13
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %23 = sub nsw i64 %22, 1
  %24 = load i32*, i32** %5, align 8
  %25 = call i8* @hc_fgets(i8* %21, i64 %23, i32* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @hcfree(i8* %29)
  store i32 -1, i32* %4, align 4
  br label %38

31:                                               ; preds = %20
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @sscanf(i8* %32, i8* %33, i8* %34)
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @hcfree(i8* %36)
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %31, %28, %19, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @hcmalloc(i64) #1

declare dso_local i8* @hc_fgets(i8*, i64, i32*) #1

declare dso_local i32 @hcfree(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
