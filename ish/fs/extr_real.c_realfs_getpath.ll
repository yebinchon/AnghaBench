; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_getpath.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_getpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MAX_PATH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @realfs_getpath(%struct.fd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.fd* %0, %struct.fd** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.fd*, %struct.fd** %4, align 8
  %9 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @getpath(i32 %10, i8* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.fd*, %struct.fd** %4, align 8
  %19 = getelementptr inbounds %struct.fd, %struct.fd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %25, %17
  %30 = load %struct.fd*, %struct.fd** %4, align 8
  %31 = getelementptr inbounds %struct.fd, %struct.fd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %7, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i64, i64* @MAX_PATH, align 8
  %41 = load i64, i64* %7, align 8
  %42 = sub i64 %40, %41
  %43 = call i32 @memmove(i8* %36, i8* %39, i64 %42)
  br label %44

44:                                               ; preds = %29, %25
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @getpath(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
