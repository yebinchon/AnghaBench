; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_f_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_f_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i32 0, align 4
@ignored_delete_user_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@w_split_rem = common dso_local global i32 0, align 4
@w_split_mod = common dso_local global i32 0, align 4
@reverse_friends_mode = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@dynamic_data_buffer_size = common dso_local global i64 0, align 8
@index_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %77 [
    i32 73, label %7
    i32 87, label %10
    i32 65, label %32
    i32 72, label %35
    i32 105, label %74
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @optarg, align 4
  %9 = call i32 @atoi(i32 %8)
  store i32 %9, i32* @ignored_delete_user_id, align 4
  br label %78

10:                                               ; preds = %1
  %11 = load i32, i32* @optarg, align 4
  %12 = call i32 (i32, i8*, ...) @sscanf(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* @w_split_rem, i32* @w_split_mod)
  %13 = icmp eq i32 %12, 2
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @w_split_mod, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load i32, i32* @w_split_mod, align 4
  %20 = icmp sle i32 %19, 10000
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* @w_split_rem, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @w_split_rem, align 4
  %26 = load i32, i32* @w_split_mod, align 4
  %27 = icmp slt i32 %25, %26
  br label %28

28:                                               ; preds = %24, %21, %18, %10
  %29 = phi i1 [ false, %21 ], [ false, %18 ], [ false, %10 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  br label %78

32:                                               ; preds = %1
  store i32 1, i32* @reverse_friends_mode, align 4
  %33 = load i32, i32* @binlog_disabled, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @binlog_disabled, align 4
  br label %78

35:                                               ; preds = %1
  store i8 0, i8* %5, align 1
  %36 = load i32, i32* @optarg, align 4
  %37 = call i32 (i32, i8*, ...) @sscanf(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %4, i8* %5)
  %38 = icmp sge i32 %37, 1
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i8, i8* %5, align 1
  %42 = sext i8 %41 to i32
  %43 = or i32 %42, 32
  switch i32 %43, label %56 [
    i32 107, label %44
    i32 109, label %47
    i32 103, label %50
    i32 116, label %53
  ]

44:                                               ; preds = %35
  %45 = load i64, i64* %4, align 8
  %46 = shl i64 %45, 10
  store i64 %46, i64* %4, align 8
  br label %62

47:                                               ; preds = %35
  %48 = load i64, i64* %4, align 8
  %49 = shl i64 %48, 20
  store i64 %49, i64* %4, align 8
  br label %62

50:                                               ; preds = %35
  %51 = load i64, i64* %4, align 8
  %52 = shl i64 %51, 30
  store i64 %52, i64* %4, align 8
  br label %62

53:                                               ; preds = %35
  %54 = load i64, i64* %4, align 8
  %55 = shl i64 %54, 40
  store i64 %55, i64* %4, align 8
  br label %62

56:                                               ; preds = %35
  %57 = load i8, i8* %5, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 32
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  br label %62

62:                                               ; preds = %56, %53, %50, %47, %44
  %63 = load i32, i32* %3, align 4
  %64 = icmp eq i32 %63, 72
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i64, i64* %4, align 8
  %67 = icmp sge i64 %66, 1048576
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i64, i64* %4, align 8
  %70 = icmp sle i64 %69, 107374182400
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i64, i64* %4, align 8
  store i64 %72, i64* @dynamic_data_buffer_size, align 8
  br label %73

73:                                               ; preds = %71, %68, %65, %62
  br label %78

74:                                               ; preds = %1
  %75 = load i32, i32* @index_mode, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @index_mode, align 4
  br label %78

77:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %79

78:                                               ; preds = %74, %73, %32, %28, %7
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
