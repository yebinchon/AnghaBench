; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_memcache_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_memcache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"delete \22%s\22\0A\00", align 1
@binlog_disabled = common dso_local global i32 0, align 4
@reverse_friends_mode = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"user%d \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"friend_cat%d_%d \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"friendreq%d_%d \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"friend%d_%d \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"privacy%d_%n\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"requests%d \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load i64, i64* @verbosity, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %3
  store i32 -1, i32* %11, align 4
  %19 = load i32, i32* @binlog_disabled, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* @reverse_friends_mode, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21, %18
  %25 = load %struct.connection*, %struct.connection** %5, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 0
  %27 = call i32 @write_out(i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  store i32 0, i32* %4, align 4
  br label %101

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %89 [
    i32 117, label %32
    i32 102, label %40
    i32 112, label %65
    i32 114, label %81
  ]

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @do_delete_user(i32 %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %36, %32
  br label %89

40:                                               ; preds = %28
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %8, i32* %9)
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @do_delete_friend_category(i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %8, i32* %9)
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @do_delete_friend_request(i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %8, i32* %9)
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @do_delete_friend(i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %89

65:                                               ; preds = %28
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %8, i32* %9)
  %68 = icmp sge i32 %67, 1
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = call i32 @parse_privacy_key(i8* %73, i32* %10, i32 1)
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @do_delete_privacy(i32 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %76, %69, %65
  br label %89

81:                                               ; preds = %28
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %8)
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @do_delete_all_friend_requests(i32 %86)
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %85, %81
  br label %89

89:                                               ; preds = %28, %88, %80, %64, %39
  %90 = load i32, i32* %11, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.connection*, %struct.connection** %5, align 8
  %94 = getelementptr inbounds %struct.connection, %struct.connection* %93, i32 0, i32 0
  %95 = call i32 @write_out(i32* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 9)
  br label %100

96:                                               ; preds = %89
  %97 = load %struct.connection*, %struct.connection** %5, align 8
  %98 = getelementptr inbounds %struct.connection, %struct.connection* %97, i32 0, i32 0
  %99 = call i32 @write_out(i32* %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  br label %100

100:                                              ; preds = %96, %92
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %24
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @do_delete_user(i32) #1

declare dso_local i32 @do_delete_friend_category(i32, i32) #1

declare dso_local i32 @do_delete_friend_request(i32, i32) #1

declare dso_local i32 @do_delete_friend(i32, i32) #1

declare dso_local i32 @parse_privacy_key(i8*, i32*, i32) #1

declare dso_local i32 @do_delete_privacy(i32, i32) #1

declare dso_local i32 @do_delete_all_friend_requests(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
