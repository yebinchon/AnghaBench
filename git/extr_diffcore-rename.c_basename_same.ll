; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-rename.c_basename_same.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-rename.c_basename_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filespec = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_filespec*, %struct.diff_filespec*)* @basename_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basename_same(%struct.diff_filespec* %0, %struct.diff_filespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.diff_filespec*, align 8
  %5 = alloca %struct.diff_filespec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.diff_filespec* %0, %struct.diff_filespec** %4, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %5, align 8
  %10 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %11 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %15 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %54, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %55

26:                                               ; preds = %24
  %27 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %28 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %8, align 1
  %35 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %36 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %9, align 1
  %43 = load i8, i8* %8, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* %9, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %88

49:                                               ; preds = %26
  %50 = load i8, i8* %8, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 47
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %88

54:                                               ; preds = %49
  br label %18

55:                                               ; preds = %24
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %60 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 47
  br i1 %68, label %69, label %85

69:                                               ; preds = %58, %55
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %74 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 47
  br label %83

83:                                               ; preds = %72, %69
  %84 = phi i1 [ true, %69 ], [ %82, %72 ]
  br label %85

85:                                               ; preds = %83, %58
  %86 = phi i1 [ false, %58 ], [ %84, %83 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %53, %48
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
