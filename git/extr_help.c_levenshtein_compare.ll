; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_levenshtein_compare.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_levenshtein_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdname = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @levenshtein_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @levenshtein_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cmdname**, align 8
  %6 = alloca %struct.cmdname**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.cmdname**
  store %struct.cmdname** %12, %struct.cmdname*** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.cmdname**
  store %struct.cmdname** %14, %struct.cmdname*** %6, align 8
  %15 = load %struct.cmdname**, %struct.cmdname*** %5, align 8
  %16 = load %struct.cmdname*, %struct.cmdname** %15, align 8
  %17 = getelementptr inbounds %struct.cmdname, %struct.cmdname* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load %struct.cmdname**, %struct.cmdname*** %6, align 8
  %20 = load %struct.cmdname*, %struct.cmdname** %19, align 8
  %21 = getelementptr inbounds %struct.cmdname, %struct.cmdname* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load %struct.cmdname**, %struct.cmdname*** %5, align 8
  %24 = load %struct.cmdname*, %struct.cmdname** %23, align 8
  %25 = getelementptr inbounds %struct.cmdname, %struct.cmdname* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.cmdname**, %struct.cmdname*** %6, align 8
  %28 = load %struct.cmdname*, %struct.cmdname** %27, align 8
  %29 = getelementptr inbounds %struct.cmdname, %struct.cmdname* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %35, %36
  br label %42

38:                                               ; preds = %2
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @strcmp(i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %37, %34 ], [ %41, %38 ]
  ret i32 %43
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
