; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_restore.c_cycle_restore.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_restore.c_cycle_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [21 x i8] c"Unlink file '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Rename file '%s' to '%s': %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cycle_restore(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = call i32 @write_restore(%struct.TYPE_7__* %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %56

26:                                               ; preds = %15
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @hc_path_exist(i8* %27)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @unlink(i8* %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 (%struct.TYPE_7__*, i8*, i8*, i8*, ...) @event_log_warning(%struct.TYPE_7__* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %40)
  br label %42

42:                                               ; preds = %34, %30
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @rename(i8* %44, i8* %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @strerror(i32 %52)
  %54 = call i32 (%struct.TYPE_7__*, i8*, i8*, i8*, ...) @event_log_warning(%struct.TYPE_7__* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %51, i32 %53)
  br label %55

55:                                               ; preds = %48, %43
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %25, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @write_restore(%struct.TYPE_7__*) #1

declare dso_local i32 @hc_path_exist(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @event_log_warning(%struct.TYPE_7__*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
