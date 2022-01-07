; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_status_string.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_status_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@ST_0012 = common dso_local global i8* null, align 8
@ST_0000 = common dso_local global i8* null, align 8
@ST_0001 = common dso_local global i8* null, align 8
@ST_0002 = common dso_local global i8* null, align 8
@ST_0003 = common dso_local global i8* null, align 8
@ST_0004 = common dso_local global i8* null, align 8
@ST_0005 = common dso_local global i8* null, align 8
@ST_0006 = common dso_local global i8* null, align 8
@ST_0007 = common dso_local global i8* null, align 8
@ST_0008 = common dso_local global i8* null, align 8
@ST_0009 = common dso_local global i8* null, align 8
@ST_0010 = common dso_local global i8* null, align 8
@ST_0011 = common dso_local global i8* null, align 8
@ST_0013 = common dso_local global i8* null, align 8
@ST_9999 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @status_get_status_string(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 129
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i8*, i8** @ST_0012, align 8
  store i8* %20, i8** %2, align 8
  br label %52

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %50 [
    i32 132, label %24
    i32 137, label %26
    i32 128, label %28
    i32 129, label %30
    i32 131, label %32
    i32 133, label %34
    i32 135, label %36
    i32 140, label %38
    i32 130, label %40
    i32 136, label %42
    i32 139, label %44
    i32 138, label %46
    i32 134, label %48
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** @ST_0000, align 8
  store i8* %25, i8** %2, align 8
  br label %52

26:                                               ; preds = %22
  %27 = load i8*, i8** @ST_0001, align 8
  store i8* %27, i8** %2, align 8
  br label %52

28:                                               ; preds = %22
  %29 = load i8*, i8** @ST_0002, align 8
  store i8* %29, i8** %2, align 8
  br label %52

30:                                               ; preds = %22
  %31 = load i8*, i8** @ST_0003, align 8
  store i8* %31, i8** %2, align 8
  br label %52

32:                                               ; preds = %22
  %33 = load i8*, i8** @ST_0004, align 8
  store i8* %33, i8** %2, align 8
  br label %52

34:                                               ; preds = %22
  %35 = load i8*, i8** @ST_0005, align 8
  store i8* %35, i8** %2, align 8
  br label %52

36:                                               ; preds = %22
  %37 = load i8*, i8** @ST_0006, align 8
  store i8* %37, i8** %2, align 8
  br label %52

38:                                               ; preds = %22
  %39 = load i8*, i8** @ST_0007, align 8
  store i8* %39, i8** %2, align 8
  br label %52

40:                                               ; preds = %22
  %41 = load i8*, i8** @ST_0008, align 8
  store i8* %41, i8** %2, align 8
  br label %52

42:                                               ; preds = %22
  %43 = load i8*, i8** @ST_0009, align 8
  store i8* %43, i8** %2, align 8
  br label %52

44:                                               ; preds = %22
  %45 = load i8*, i8** @ST_0010, align 8
  store i8* %45, i8** %2, align 8
  br label %52

46:                                               ; preds = %22
  %47 = load i8*, i8** @ST_0011, align 8
  store i8* %47, i8** %2, align 8
  br label %52

48:                                               ; preds = %22
  %49 = load i8*, i8** @ST_0013, align 8
  store i8* %49, i8** %2, align 8
  br label %52

50:                                               ; preds = %22
  %51 = load i8*, i8** @ST_9999, align 8
  store i8* %51, i8** %2, align 8
  br label %52

52:                                               ; preds = %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %19
  %53 = load i8*, i8** %2, align 8
  ret i8* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
