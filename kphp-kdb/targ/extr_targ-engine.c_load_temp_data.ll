; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_load_temp_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_load_temp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@tag_len = common dso_local global i32 0, align 4
@aux_userlist_tag = common dso_local global i32 0, align 4
@aux_userlist_size = common dso_local global i32 0, align 4
@tag_id = common dso_local global i32 0, align 4
@aux_userlist = common dso_local global i32* null, align 8
@MAX_AUX_USERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"restoring %d words of temp userlist data with tag %d\0A\00", align 1
@value_buff = common dso_local global i32* null, align 8
@VALUE_BUFF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"restoring %d bytes of temp data with tag %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_temp_data(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 0, i32* @tag_len, align 4
  store i32 0, i32* @aux_userlist_tag, align 4
  store i32 0, i32* @aux_userlist_size, align 4
  %7 = load %struct.connection*, %struct.connection** %3, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.connection*, %struct.connection** %3, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @nbit_set(i32* %4, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = call i32 @nbit_read_in(i32* %4, i32* @tag_id, i32 4)
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @tag_id, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %17, %11, %1
  store i32 0, i32* @tag_id, align 4
  store i32 0, i32* %2, align 4
  br label %74

24:                                               ; preds = %20
  %25 = load i32, i32* @tag_id, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %24
  %28 = load i32*, i32** @aux_userlist, align 8
  %29 = load i32, i32* @MAX_AUX_USERS, align 4
  %30 = mul nsw i32 %29, 4
  %31 = call i32 @nbit_read_in(i32* %4, i32* %28, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 3
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MAX_AUX_USERS, align 4
  %41 = mul nsw i32 %40, 4
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %34, %27
  store i32 0, i32* @tag_id, align 4
  store i32 0, i32* %2, align 4
  br label %74

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = ashr i32 %45, 2
  store i32 %46, i32* @aux_userlist_size, align 4
  %47 = load i32, i32* @tag_id, align 4
  store i32 %47, i32* @aux_userlist_tag, align 4
  %48 = load i32, i32* @aux_userlist_size, align 4
  %49 = load i32, i32* @tag_id, align 4
  %50 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  store i32 0, i32* @tag_id, align 4
  store i32 0, i32* %2, align 4
  br label %74

51:                                               ; preds = %24
  %52 = load i32*, i32** @value_buff, align 8
  %53 = load i32, i32* @VALUE_BUFF_SIZE, align 4
  %54 = sub nsw i32 %53, 1
  %55 = call i32 @nbit_read_in(i32* %4, i32* %52, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @VALUE_BUFF_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp sge i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %51
  store i32 0, i32* @tag_id, align 4
  store i32 0, i32* %2, align 4
  br label %74

64:                                               ; preds = %58
  %65 = load i32*, i32** @value_buff, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* @tag_len, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @tag_id, align 4
  %72 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* @tag_id, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %64, %63, %44, %43, %23
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @nbit_set(i32*, i32) #1

declare dso_local i32 @nbit_read_in(i32*, i32*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
