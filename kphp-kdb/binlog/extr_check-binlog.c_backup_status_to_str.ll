; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_backup_status_to_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_backup_status_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@backup_status_to_str.out = internal global [64 x i8] zeroinitializer, align 16
@bs_differ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"|differ\00", align 1
@bs_io_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"|io_error\00", align 1
@bs_larger = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"|larger\00", align 1
@bs_same_inode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"|same_inode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @backup_status_to_str(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @backup_status_to_str.out, i64 0, i64 0), i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 0, i8* %5, align 1
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %7, align 1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @bs_differ, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %3, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %12, %1
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @bs_io_error, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i8*, i8** %3, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %3, align 8
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @bs_larger, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i8*, i8** %3, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @bs_same_inode, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i8*, i8** %3, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i8*, i8** %3, align 8
  %53 = icmp ult i8* %52, getelementptr inbounds (i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @backup_status_to_str.out, i64 0, i64 0), i64 64)
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  ret i8* getelementptr inbounds ([64 x i8], [64 x i8]* @backup_status_to_str.out, i64 0, i64 1)
}

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
