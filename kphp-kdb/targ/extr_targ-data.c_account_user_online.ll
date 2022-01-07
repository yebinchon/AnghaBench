; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_account_user_online.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_account_user_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"setting last_visited for user %d to %d\0A\00", align 1
@now = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"last_visited was %d, convert was %d\0A\00", align 1
@OHead = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"new convert is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @account_user_online(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

8:                                                ; preds = %1
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @now, align 4
  %17 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %11, %8
  %19 = call i32 (...) @online_advance_now()
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = call i32 @user_to_olist(%struct.TYPE_4__* %25)
  %27 = call i32 @online_list_remove(i32 %26)
  %28 = load i32, i32* @verbosity, align 4
  %29 = icmp sgt i32 %28, 2
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i32, i32* @stderr, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @online_convert_time(i32 %37)
  %39 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %30, %24
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @online_convert_time(i32 %43)
  %45 = call i32 @online_increment(i32 %44, i32 -1)
  br label %46

46:                                               ; preds = %40, %18
  %47 = load i32, i32* @now, align 4
  %48 = call i64 @is_valid_online_stamp(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load i32, i32* @now, align 4
  %52 = call i32 @online_convert_time(i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32*, i32** @OHead, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = call i32 @user_to_olist(%struct.TYPE_4__* %57)
  %59 = call i32 @online_list_add_after(i32* %56, i32 %58)
  %60 = load i32, i32* @verbosity, align 4
  %61 = icmp sgt i32 %60, 2
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %50
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @online_increment(i32 %67, i32 1)
  br label %74

69:                                               ; preds = %46
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32, i32* @now, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  store i32 1, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %7
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @online_advance_now(...) #1

declare dso_local i32 @online_list_remove(i32) #1

declare dso_local i32 @user_to_olist(%struct.TYPE_4__*) #1

declare dso_local i32 @online_convert_time(i32) #1

declare dso_local i32 @online_increment(i32, i32) #1

declare dso_local i64 @is_valid_online_stamp(i32) #1

declare dso_local i32 @online_list_add_after(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
