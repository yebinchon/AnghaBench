; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_rename_temporary_snapshot.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_rename_temporary_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@rename_temporary_snapshot.tmpbuff = internal global [256 x i8] zeroinitializer, align 16
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"renaming temporary snapshot %s to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"fatal: snapshot %s already exists\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rename_temporary_snapshot(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strlen(i8* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 4
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = getelementptr inbounds i8, i8* %13, i64 -4
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 %18, 256
  br label %20

20:                                               ; preds = %17, %9, %1
  %21 = phi i1 [ false, %9 ], [ false, %1 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 4
  %27 = call i32 @memcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rename_temporary_snapshot.tmpbuff, i64 0, i64 0), i8* %24, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* @rename_temporary_snapshot.tmpbuff, i64 0, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i32, i32* @verbosity, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rename_temporary_snapshot.tmpbuff, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %20
  %39 = call i32 @access(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rename_temporary_snapshot.tmpbuff, i64 0, i64 0), i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rename_temporary_snapshot.tmpbuff, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @rename(i8* %45, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rename_temporary_snapshot.tmpbuff, i64 0, i64 0))
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
