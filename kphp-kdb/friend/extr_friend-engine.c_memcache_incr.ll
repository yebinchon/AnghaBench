; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_memcache_incr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_memcache_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"friend\00", align 1
@reverse_friends_mode = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"friend%d_%d\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%d\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_incr(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp sge i32 %15, 7
  br i1 %16, label %17, label %60

17:                                               ; preds = %5
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @memcmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %60, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @reverse_friends_mode, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %21
  store i32 -1, i32* %14, align 4
  %25 = load i32, i32* @binlog_disabled, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @sscanf(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %12, i32* %13)
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %11, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i64 [ 0, %36 ], [ %38, %37 ]
  %41 = load i64, i64* %11, align 8
  %42 = xor i64 %41, -1
  %43 = call i32 @do_add_friend(i32 %32, i32 %33, i64 %40, i64 %42, i32 0)
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %39, %27, %24
  %45 = load i32, i32* %14, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.connection*, %struct.connection** %7, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 0
  %50 = load i8*, i8** @stats_buff, align 8
  %51 = load i8*, i8** @stats_buff, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = call i32 @write_out(i32* %49, i8* %50, i32 %53)
  br label %59

55:                                               ; preds = %44
  %56 = load %struct.connection*, %struct.connection** %7, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 0
  %58 = call i32 @write_out(i32* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  br label %59

59:                                               ; preds = %55, %47
  store i32 0, i32* %6, align 4
  br label %64

60:                                               ; preds = %21, %17, %5
  %61 = load %struct.connection*, %struct.connection** %7, align 8
  %62 = getelementptr inbounds %struct.connection, %struct.connection* %61, i32 0, i32 0
  %63 = call i32 @write_out(i32* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %59
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @do_add_friend(i32, i32, i64, i64, i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
